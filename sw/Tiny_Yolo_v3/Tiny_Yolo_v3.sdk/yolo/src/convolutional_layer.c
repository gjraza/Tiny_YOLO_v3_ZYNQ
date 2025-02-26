#include "convolutional_layer.h"


void scale_bias(float *output, float *scales, int batch, int n, int size)
{
    int i,j,b;
    for(b = 0; b < batch; ++b){
        for(i = 0; i < n; ++i){
            for(j = 0; j < size; ++j){
                output[(b*n + i)*size + j] *= scales[i];
            }
        }
    }
}

static size_t get_workspace_size(layer l){
    return (size_t)l.out_h*l.out_w*l.size*l.size*l.c/l.groups*sizeof(float);
}

void add_bias(float *output, float *biases, int batch, int n, int size)
{
    int i,j,b;
    for(b = 0; b < batch; ++b){
        for(i = 0; i < n; ++i){
            for(j = 0; j < size; ++j){
                output[(b*n + i)*size + j] += biases[i];
            }
        }
    }
}


convolutional_layer make_convolutional_layer(int batch, int h, int w, int c, int n, int groups, int size, int stride, int padding, ACTIVATION activation, int batch_normalize, int binary, int xnor, int adam)
{
    int i;
    convolutional_layer l = {0};
    l.type = CONVOLUTIONAL;

    l.groups = groups;
    l.h = h;
    l.w = w;
    l.c = c;
    l.n = n;
    l.binary = binary;
    l.xnor = xnor;
    l.batch = batch;
    l.stride = stride;
    l.size = size;
    l.pad = padding;
    l.batch_normalize = batch_normalize;

    l.weights = calloc(c/groups*n*size*size, sizeof(float));
    l.weight_updates = calloc(c/groups*n*size*size, sizeof(float));

    l.biases = calloc(n, sizeof(float));
    l.bias_updates = calloc(n, sizeof(float));

    l.nweights = c/groups*n*size*size;
    l.nbiases = n;

    // float scale = 1./sqrt(size*size*c);
    //float scale = sqrt(2./(size*size*c/l.groups));
    //printf("convscale %f\n", scale);
    //scale = .02;
    //for(i = 0; i < c*n*size*size; ++i) l.weights[i] = scale*rand_uniform(-1, 1);
    int out_w = convolutional_out_width(l);
    int out_h = convolutional_out_height(l);
    l.out_h = out_h;
    l.out_w = out_w;
    l.out_c = n;
    l.outputs = l.out_h * l.out_w * l.out_c;
    l.inputs = l.w * l.h * l.c;

    l.output = calloc(l.batch*l.outputs, sizeof(float));
    l.delta  = calloc(l.batch*l.outputs, sizeof(float));

    l.forward = forward_convolutional_layer;
    //l.backward = backward_convolutional_layer;
    //l.update = update_convolutional_layer;
    //if(binary){
    //    l.binary_weights = calloc(l.nweights, sizeof(float));
    //   l.cweights = calloc(l.nweights, sizeof(char));
    //    l.scales = calloc(n, sizeof(float));
    //}
    //if(xnor){
    //    l.binary_weights = calloc(l.nweights, sizeof(float));
    //    l.binary_input = calloc(l.inputs*l.batch, sizeof(float));
    //}

    if(batch_normalize){
        l.scales = calloc(n, sizeof(float));
        l.scale_updates = calloc(n, sizeof(float));
        for(i = 0; i < n; ++i){
            l.scales[i] = 1;
        }

        l.mean = calloc(n, sizeof(float));
        l.variance = calloc(n, sizeof(float));

        l.mean_delta = calloc(n, sizeof(float));
        l.variance_delta = calloc(n, sizeof(float));

        l.rolling_mean = calloc(n, sizeof(float));
        l.rolling_variance = calloc(n, sizeof(float));
        l.x = calloc(l.batch*l.outputs, sizeof(float));
        l.x_norm = calloc(l.batch*l.outputs, sizeof(float));
    }
    //if(adam){
    //    l.m = calloc(l.nweights, sizeof(float));
    //    l.v = calloc(l.nweights, sizeof(float));
    //    l.bias_m = calloc(n, sizeof(float));
    //    l.scale_m = calloc(n, sizeof(float));
    //    l.bias_v = calloc(n, sizeof(float));
    //    l.scale_v = calloc(n, sizeof(float));
    //}

    l.workspace_size = get_workspace_size(l);
    l.activation = activation;

    fprintf(stderr, "conv  %5d %2d x%2d /%2d  %4d x%4d x%4d   ->  %4d x%4d x%4d  %5.3f BFLOPs\n", n, size, size, stride, w, h, c, l.out_w, l.out_h, l.out_c, (2.0 * l.n * l.size*l.size*l.c/l.groups * l.out_h*l.out_w)/1000000000.);

    return l;
}

void forward_convolutional_layer(convolutional_layer l, network net)
{
    //int i, j;

    fill_cpu(l.outputs*l.batch, 0, l.output, 1);	//clear output

    //if(l.xnor){
    //    binarize_weights(l.weights, l.n, l.c/l.groups*l.size*l.size, l.binary_weights);
    //    swap_binary(&l);
    //    binarize_cpu(net.input, l.c*l.h*l.w*l.batch, l.binary_input);
    //    net.input = l.binary_input;
    //}

    int m = l.n/l.groups;	//number of kernels
    int k = l.size*l.size*l.c/l.groups;	//kernel size * channel
    int n = l.out_w*l.out_h;	//number of outputs
    fprintf(stderr,"(M:%d,K:%d,N:%d)\n",m,k,n);
    //for(i = 0; i < l.batch; ++i){
    //    for(j = 0; j < l.groups; ++j){
    //        float *a = l.weights + j*l.nweights/l.groups;
    		float *a = l.weights;
            float *b = net.workspace;
    //        float *c = l.output + (i*l.groups + j)*n*m;
            float *c = l.output;
    //        float *im =  net.input + (i*l.groups + j)*l.c/l.groups*l.h*l.w;
            float *im =  net.input;

            if (l.size == 1) {
                b = im;
            } else {
                im2col_cpu(im, l.c/l.groups, l.h, l.w, l.size, l.stride, l.pad, b);	//load layer input to the workspace
            }
           // gemm(0,0,m,n,k,1,a,k,b,n,1,c,n);
			float *b_t = calloc(n*k,sizeof(float));
			for(int bi=0;bi<k;bi++)
			{
				for(int bj=0;bj<n;bj++)
				{
					b_t[bj*k+bi] = b[bi*n+bj];
				}
			}
			gemm(0,1,m,n,k,1,a,k,b_t,k,1,c,n);
			free(b_t);
    //    }
    //}

    if(l.batch_normalize){
        forward_batchnorm_layer(l, net);
    } else {
        add_bias(l.output, l.biases, l.batch, l.n, l.out_h*l.out_w);
    }

    activate_array(l.output, l.outputs*l.batch, l.activation);
    //if(l.binary || l.xnor) swap_binary(&l);
}

int convolutional_out_height(convolutional_layer l)
{
    return (l.h + 2*l.pad - l.size) / l.stride + 1;
}

int convolutional_out_width(convolutional_layer l)
{
    return (l.w + 2*l.pad - l.size) / l.stride + 1;
}
