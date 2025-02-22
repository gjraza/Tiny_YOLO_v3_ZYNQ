
#include "parser.h"

#include "conv_weight.h"



void parse_net_options(network *net)
{
    net->batch = 1;
    net->learning_rate = 0.001f;
    net->momentum = 0.9f;
    net->decay = 0.0005f;
    int subdivs = 1;
    net->time_steps = 1;
    net->notruth = 0;
    net->batch /= subdivs;
    net->batch *= net->time_steps;
    net->subdivisions = subdivs;
    net->random = 0;

    net->adam = 0;

    net->h = 416;
    net->w = 416;
    net->c = 3;
    net->inputs = net->h * net->w * net->c;
    net->max_crop = net->w*2;
    net->min_crop = net->w;
    net->max_ratio = (float) net->max_crop / net->w;
    net->min_ratio = (float) net->min_crop / net->w;
    net->center = 0;
    net->clip = 0;

    net->angle = 0;
    net->aspect = 1;
    net->saturation = 1.5f;
    net->exposure = 1.5f;
    net->hue = 0.1f;

    net->policy = STEPS;
    net->burn_in = 1000;
    net->power = 4.0f;


    int *steps = calloc(2, sizeof(int));
    float *scales = calloc(2, sizeof(float));
    steps[0] = 400000;
    steps[1] = 450000;
    scales[0] = 0.1f;
    scales[1] = 0.1f;
    net->scales = scales;
    net->steps = steps;
    net->num_steps = 2;

    net->max_batches = 500200;
}

convolutional_layer parse_convolutional(int n, int size, int stride, int pad, int padding, int groups, ACTIVATION activation, int batch, int h, int w, int c, int batch_normalize, int binary, int xnor, int flipped, float dot, size_params params)
{

    if(pad) padding = size/2;

    convolutional_layer layer = make_convolutional_layer(batch,h,w,c,n,groups,size,stride,padding,activation, batch_normalize, binary, xnor, params.net->adam);
    layer.flipped = flipped;
    layer.dot = dot;

    return layer;
}

maxpool_layer parse_maxpool(int stride, int size, int padding, int batch, int h, int w, int c)
{
    maxpool_layer layer = make_maxpool_layer(batch,h,w,c,size,stride,padding);
    return layer;
}

layer parse_yolo(int classes, int total, int num, int *mask, int batch, int w, int h, int max, float jitter, float ignore_thresh, float truth_thresh, int random, float *anchors, size_params params)
{

    layer l = make_yolo_layer(params.batch, params.w, params.h, num, total, mask, classes);

    l.max_boxes = max;
    l.jitter = jitter;
    l.ignore_thresh = ignore_thresh;
    l.truth_thresh = truth_thresh;
    l.random = random;

    for(int i = 0; i < 2*total; ++i){
        l.biases[i] = anchors[i];
    }

    return l;
}

route_layer parse_route(network *net, int batch, int n, int *layers, int *sizes)
{

    route_layer layer = make_route_layer(batch, n, layers, sizes);

    convolutional_layer first = net->layers[layers[0]];
    layer.out_w = first.out_w;
    layer.out_h = first.out_h;
    layer.out_c = first.out_c;
    for(int i = 1; i < n; ++i){
        int index = layers[i];
        convolutional_layer next = net->layers[index];
        if(next.out_w == first.out_w && next.out_h == first.out_h){
            layer.out_c += next.out_c;
        }else{
            layer.out_h = layer.out_w = layer.out_c = 0;
        }
    }

    return layer;
}

layer parse_upsample(int stride, int batch, int w, int h, int c, float scale)
{
    layer l = make_upsample_layer(batch, w, h, c, stride);
    l.scale = scale;
    return l;
}



void parse_layer_0(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int n = 16;
	int size = 3;
	int stride = 1;
	int pad = 1;
	int padding = 0;
	int groups = 1;
	ACTIVATION activation = LEAKY;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;
    int batch_normalize = 1;
    int binary = 0;
    int xnor = 0;
    int flipped = 0;
    float dot = 0.0f;

	l = parse_convolutional(n,size,stride,pad,padding,groups,activation,batch,h,w,c,batch_normalize,binary,xnor,flipped,dot,*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_1(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int stride = 2;
	int size = 2;
    int padding = size-1;
    int batch = params_p->batch;
	int h = params_p->h;
	int w = params_p->w;
	int c = params_p->c;

	l = parse_maxpool(stride,size,padding,batch,h,w,c);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_2(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int n = 32;
	int size = 3;
	int stride = 1;
	int pad = 1;
	int padding = 0;
	int groups = 1;
	ACTIVATION activation = LEAKY;
	int batch = params_p->batch;
	int h = params_p->h;
	int w = params_p->w;
	int c = params_p->c;
	int batch_normalize = 1;
	int binary = 0;
	int xnor = 0;
	int flipped = 0;
	float dot = 0.0f;

	l = parse_convolutional(n,size,stride,pad,padding,groups,activation,batch,h,w,c,batch_normalize,binary,xnor,flipped,dot,*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_3(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int stride = 2;
	int size = 2;
	int padding = size-1;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;

	l = parse_maxpool(stride,size,padding,batch,h,w,c);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_4(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int n = 64;
	int size = 3;
	int stride = 1;
	int pad = 1;
	int padding = 0;
	int groups = 1;
	ACTIVATION activation = LEAKY;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;
    int batch_normalize = 1;
    int binary = 0;
    int xnor = 0;
    int flipped = 0;
    float dot = 0.0f;

	l = parse_convolutional(n,size,stride,pad,padding,groups,activation,batch,h,w,c,batch_normalize,binary,xnor,flipped,dot,*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_5(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int stride = 2;
	int size = 2;
	int padding = size-1;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;

	l = parse_maxpool(stride,size,padding,batch,h,w,c);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_6(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int n = 128;
	int size = 3;
	int stride = 1;
	int pad = 1;
	int padding = 0;
	int groups = 1;
	ACTIVATION activation = LEAKY;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;
    int batch_normalize = 1;
    int binary = 0;
    int xnor = 0;
    int flipped = 0;
    float dot = 0.0f;
	l = parse_convolutional(n,size,stride,pad,padding,groups,activation,batch,h,w,c,batch_normalize,binary,xnor,flipped,dot,*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_7(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int stride = 2;
	int size = 2;
	int padding = size-1;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;

	l = parse_maxpool(stride,size,padding,batch,h,w,c);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_8(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int n = 256;
	int size = 3;
	int stride = 1;
	int pad = 1;
	int padding = 0;
	int groups = 1;
	ACTIVATION activation = LEAKY;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;
    int batch_normalize = 1;
    int binary = 0;
    int xnor = 0;
    int flipped = 0;
    float dot = 0.0f;

	l = parse_convolutional(n,size,stride,pad,padding,groups,activation,batch,h,w,c,batch_normalize,binary,xnor,flipped,dot,*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}


void parse_layer_9(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int stride = 2;
	int size = 2;
	int padding = size-1;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;

	l = parse_maxpool(stride,size,padding,batch,h,w,c);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}


void parse_layer_10(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int n = 512;
	int size = 3;
	int stride = 1;
	int pad = 1;
	int padding = 0;
	int groups = 1;
	ACTIVATION activation = LEAKY;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;
    int batch_normalize = 1;
    int binary = 0;
    int xnor = 0;
    int flipped = 0;
    float dot = 0.0f;

	l = parse_convolutional(n,size,stride,pad,padding,groups,activation,batch,h,w,c,batch_normalize,binary,xnor,flipped,dot,*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_11(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int stride = 1;
	int size = 2;
	int padding = size-1;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;

	l = parse_maxpool(stride,size,padding,batch,h,w,c);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_12(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int n = 1024;
	int size = 3;
	int stride = 1;
	int pad = 1;
	int padding = 0;
	int groups = 1;
	ACTIVATION activation = LEAKY;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;
    int batch_normalize = 1;
    int binary = 0;
    int xnor = 0;
    int flipped = 0;
    float dot = 0.0f;

	l = parse_convolutional(n,size,stride,pad,padding,groups,activation,batch,h,w,c,batch_normalize,binary,xnor,flipped,dot,*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_13(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int n = 256;
	int size = 1;
	int stride = 1;
	int pad = 1;
	int padding = 0;
	int groups = 1;
	ACTIVATION activation = LEAKY;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;
    int batch_normalize = 1;
    int binary = 0;
    int xnor = 0;
    int flipped = 0;
    float dot = 0.0f;

	l = parse_convolutional(n,size,stride,pad,padding,groups,activation,batch,h,w,c,batch_normalize,binary,xnor,flipped,dot,*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_14(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int n = 512;
	int size = 3;
	int stride = 1;
	int pad = 1;
	int padding = 0;
	int groups = 1;
	ACTIVATION activation = LEAKY;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;
    int batch_normalize = 1;
    int binary = 0;
    int xnor = 0;
    int flipped = 0;
    float dot = 0.0f;

	l = parse_convolutional(n,size,stride,pad,padding,groups,activation,batch,h,w,c,batch_normalize,binary,xnor,flipped,dot,*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_15(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int n = 255;
	int size = 1;
	int stride = 1;
	int pad = 1;
	int padding = 0;
	int groups = 1;
	ACTIVATION activation = LINEAR;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;
    int batch_normalize = 0;
    int binary = 0;
    int xnor = 0;
    int flipped = 0;
    float dot = 0.0f;

	l = parse_convolutional(n,size,stride,pad,padding,groups,activation,batch,h,w,c,batch_normalize,binary,xnor,flipped,dot,*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_16(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int classes = 80;
	int total = 6;
	int num = 3;
	int *mask = calloc(3, sizeof(int));
	mask[0] = 3;
	mask[1] = 4;
	mask[2] = 5;
	int batch = params_p->batch;
	int w = params_p->w;
	int h = params_p->h;
	int max = 90;
	float jitter = 0.3f;
	float ignore_thresh = 0.7f;
	float truth_thresh = 1.0f;
	int random = 1;
	float anchors[12] = {10,14,23,27,37,58,81,82,135,169,344,319};

	l = parse_yolo(classes,total,num,&mask[0],batch,w,h,max,jitter,ignore_thresh,truth_thresh,random,&anchors[0],*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_17(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int batch = params_p->batch;
	int n = 1;

    int *layers = calloc(1, sizeof(int));
    int *sizes = calloc(1, sizeof(int));
	layers[0] = params_p->index-4;
	sizes[0] = net->layers[params_p->index-4].outputs;

	l = parse_route(net,batch,n,&layers[0],&sizes[0]);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
    fprintf(stderr,"%d\n",net->layers[17].input_layers[0]);
}

void parse_layer_18(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l={0};

	int n = 128;
	int size = 1;
	int stride = 1;
	int pad = 1;
	int padding = 0;
	int groups = 1;
	ACTIVATION activation = LEAKY;
	int batch = params_p->batch;
   int h = params_p->h;
   int w = params_p->w;
   int c = params_p->c;
   int batch_normalize = 1;
   int binary = 0;
   int xnor = 0;
   int flipped = 0;
   float dot = 0.0f;

	l = parse_convolutional(n,size,stride,pad,padding,groups,activation,batch,h,w,c,batch_normalize,binary,xnor,flipped,dot,*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_19(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};
	int stride = 2;
	int batch = params_p->batch;
	int w = params_p->w;
	int h = params_p->h;
	int c = params_p->c;
	float scale = 1.0f;

	l = parse_upsample(stride,batch,w,h,c,scale);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_20(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};
	int batch = params_p->batch;
	int n = 2;
    int *layers = calloc(2, sizeof(int));
    int *sizes = calloc(2, sizeof(int));
    layers[0] = params_p->index-1;
    layers[1] = 8;
    sizes[0] = net->layers[params_p->index-1].outputs;
    sizes[1] = net->layers[8].outputs;
	l = parse_route(net,batch,n,&layers[0],&sizes[0]);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_21(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int n = 256;
	int size = 3;
	int stride = 1;
	int pad = 1;
	int padding = 0;
	int groups = 1;
	ACTIVATION activation = LEAKY;
	int batch = params_p->batch;
	 int h = params_p->h;
	 int w = params_p->w;
	 int c = params_p->c;
	 int batch_normalize = 1;
	 int binary = 0;
	 int xnor = 0;
	 int flipped = 0;
	 float dot = 0.0f;

	l = parse_convolutional(n,size,stride,pad,padding,groups,activation,batch,h,w,c,batch_normalize,binary,xnor,flipped,dot,*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_22(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int n = 255;
	int size = 1;
	int stride = 1;
	int pad = 1;
	int padding = 0;
	int groups = 1;
	ACTIVATION activation = LINEAR;
	int batch = params_p->batch;
    int h = params_p->h;
    int w = params_p->w;
    int c = params_p->c;
    int batch_normalize = 0;
    int binary = 0;
    int xnor = 0;
    int flipped = 0;
    float dot = 0.0f;

	l = parse_convolutional(n,size,stride,pad,padding,groups,activation,batch,h,w,c,batch_normalize,binary,xnor,flipped,dot,*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
	params_p->h = l.out_h;
	params_p->w = l.out_w;
	params_p->c = l.out_c;
	params_p->inputs = l.outputs;
}

void parse_layer_23(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p)
{
	params_p->index = *count_p;
	layer l = {0};

	int classes = 80;
	int total = 6;
	int num = 3;
	int *mask = calloc(3, sizeof(int));
	mask[0] = 0;
	mask[1] = 1;
	mask[2] = 2;
	int batch = params_p->batch;
	int w = params_p->w;
	int h = params_p->h;
	int max = 90;
	float jitter = 0.3f;
	float ignore_thresh = 0.7f;
	float truth_thresh = 1.0f;
	int random = 1;
	float anchors[12] = {10,14,23,27,37,58,81,82,135,169,344,319};

	l = parse_yolo(classes,total,num,&mask[0],batch,w,h,max,jitter,ignore_thresh,truth_thresh,random,&anchors[0],*params_p);
	l.clip = net->clip;
	net->layers[*count_p] = l;
	if (l.workspace_size > *workspace_size_p) *workspace_size_p = l.workspace_size;
	++(*count_p);
}

network *parse_network_cfg()
{
	network *net = make_network(24); // network.c
    //net->gpu_index = gpu_index;
    size_params params;

    parse_net_options(net);

    params.h = net->h;
    params.w = net->w;
    params.c = net->c;
    params.inputs = net->inputs;
    params.batch = net->batch;
    params.time_steps = net->time_steps;
    params.net = net;

    size_t workspace_size = 0;
    int count = 0;

    //layer 0 - conv
    parse_layer_0(&count,&params,net,&workspace_size);
    //layer 1 - max
    parse_layer_1(&count,&params,net,&workspace_size);
    //layer 2 - conv
    parse_layer_2(&count,&params,net,&workspace_size);
    //layer 3 - max
    parse_layer_3(&count,&params,net,&workspace_size);
    //layer 4 - conv
    parse_layer_4(&count,&params,net,&workspace_size);
    //layer 5 - max
    parse_layer_5(&count,&params,net,&workspace_size);
    //layer 6 - conv
    parse_layer_6(&count,&params,net,&workspace_size);
    //layer 7 - max
    parse_layer_7(&count,&params,net,&workspace_size);
    //layer 8 - conv
    parse_layer_8(&count,&params,net,&workspace_size);
    //layer 9 - max
    parse_layer_9(&count,&params,net,&workspace_size);
    //layer 10 - conv
    parse_layer_10(&count,&params,net,&workspace_size);
    //layer 11 - max
    parse_layer_11(&count,&params,net,&workspace_size);
    //layer 12 - conv
    parse_layer_12(&count,&params,net,&workspace_size);
    //layer 13 - conv
    parse_layer_13(&count,&params,net,&workspace_size);
    //layer 14 - conv
    parse_layer_14(&count,&params,net,&workspace_size);
    //layer 15 - conv
    parse_layer_15(&count,&params,net,&workspace_size);
    //layer 16 - yolo
    parse_layer_16(&count,&params,net,&workspace_size);
    //layer 17 - route
    parse_layer_17(&count,&params,net,&workspace_size);
    //layer 18 - conv
    parse_layer_18(&count,&params,net,&workspace_size);
     //layer 19 - upsample
    parse_layer_19(&count,&params,net,&workspace_size);
      //layer 20 - route
    parse_layer_20(&count,&params,net,&workspace_size);
      //layer 21 - conv
    parse_layer_21(&count,&params,net,&workspace_size);
       //layer 22 - conv
    parse_layer_22(&count,&params,net,&workspace_size);
        //layer 23 - yolo
    parse_layer_23(&count,&params,net,&workspace_size);
    layer out = get_network_output_layer(net);
    net->outputs = out.outputs;
    net->truths = out.outputs;
    if(net->layers[net->n-1].truths) net->truths = net->layers[net->n-1].truths;
    net->output = out.output;
    net->input = calloc(net->inputs*net->batch, sizeof(float));
    net->truth = calloc(net->truths*net->batch, sizeof(float));

    if(workspace_size)
    {
    	net->workspace = calloc(1, workspace_size);
    }


    return net;
}

void load_convolutional_weights(layer *lp, Layer_Weight_File *conv_weight_file_ptr)
{
    //if(l.binary){
        //load_convolutional_weights_binary(l, fp);
        //return;
    //}
    if(lp->numload) lp->n = lp->numload;
    //int num = lp->c/lp->groups*lp->n*lp->size*lp->size;
    lp->biases = conv_weight_file_ptr->biases;
    if (lp->batch_normalize && (!lp->dontloadscales)){
    	lp->scales = conv_weight_file_ptr->scales;
        lp->rolling_mean = conv_weight_file_ptr->rolling_mean;
        lp->rolling_variance = conv_weight_file_ptr->rolling_variance;
    }
    lp->weights = conv_weight_file_ptr->weights;
    //if(l.c == 3) scal_cpu(num, 1./256, l.weights, 1);
    //if (l.binary) binarize_weights(l.weights, l.n, l.c*l.size*l.size, l.weights);
}

void load_weights_upto(network *net, int start, int cutoff, Layer_Weight_File conv_weight_file[13])
{
    fprintf(stderr, "Loading weights ...");
    fflush(stdout);

    int major = 0;
    int minor = 2;
    int revision = 0;

    net->seen = 32013312;

    int i;
    int j = 0;
    for(i = start; i < net->n && i < cutoff; ++i){
        layer l = net->layers[i];
        if (l.dontload) continue;
        if(l.type == CONVOLUTIONAL){
            load_convolutional_weights(&net->layers[i], &conv_weight_file[j]);
            j++;
        }

    }
    fprintf(stderr, "Done!\n");
}

void load_weights(network *net)
{
    Layer_Weight_File conv_weight_file[13];

    conv_weight_file[0].biases           = conv_0_biases;
    conv_weight_file[0].scales           = conv_0_scales;
    conv_weight_file[0].rolling_mean     = conv_0_rolling_mean;
    conv_weight_file[0].rolling_variance = conv_0_rolling_variance;
    conv_weight_file[0].weights          = conv_0_weights;

    conv_weight_file[1].biases           = conv_1_biases;
    conv_weight_file[1].scales           = conv_1_scales;
    conv_weight_file[1].rolling_mean     = conv_1_rolling_mean;
    conv_weight_file[1].rolling_variance = conv_1_rolling_variance;
    conv_weight_file[1].weights          = conv_1_weights;

    conv_weight_file[2].biases           = conv_2_biases;
    conv_weight_file[2].scales           = conv_2_scales;
    conv_weight_file[2].rolling_mean     = conv_2_rolling_mean;
    conv_weight_file[2].rolling_variance = conv_2_rolling_variance;
    conv_weight_file[2].weights          = conv_2_weights;

    conv_weight_file[3].biases           = conv_3_biases;
    conv_weight_file[3].scales           = conv_3_scales;
    conv_weight_file[3].rolling_mean     = conv_3_rolling_mean;
    conv_weight_file[3].rolling_variance = conv_3_rolling_variance;
    conv_weight_file[3].weights          = conv_3_weights;

    conv_weight_file[4].biases           = conv_4_biases;
    conv_weight_file[4].scales           = conv_4_scales;
    conv_weight_file[4].rolling_mean     = conv_4_rolling_mean;
    conv_weight_file[4].rolling_variance = conv_4_rolling_variance;
    conv_weight_file[4].weights          = conv_4_weights;

    conv_weight_file[5].biases           = conv_5_biases;
    conv_weight_file[5].scales           = conv_5_scales;
    conv_weight_file[5].rolling_mean     = conv_5_rolling_mean;
    conv_weight_file[5].rolling_variance = conv_5_rolling_variance;
    conv_weight_file[5].weights          = conv_5_weights;

    conv_weight_file[6].biases           = conv_6_biases;
    conv_weight_file[6].scales           = conv_6_scales;
    conv_weight_file[6].rolling_mean     = conv_6_rolling_mean;
    conv_weight_file[6].rolling_variance = conv_6_rolling_variance;
    conv_weight_file[6].weights          = conv_6_weights;

    conv_weight_file[7].biases           = conv_7_biases;
    conv_weight_file[7].scales           = conv_7_scales;
    conv_weight_file[7].rolling_mean     = conv_7_rolling_mean;
    conv_weight_file[7].rolling_variance = conv_7_rolling_variance;
    conv_weight_file[7].weights          = conv_7_weights;

    conv_weight_file[8].biases           = conv_8_biases;
    conv_weight_file[8].scales           = conv_8_scales;
    conv_weight_file[8].rolling_mean     = conv_8_rolling_mean;
    conv_weight_file[8].rolling_variance = conv_8_rolling_variance;
    conv_weight_file[8].weights          = conv_8_weights;

    conv_weight_file[9].biases           = conv_9_biases;
    //conv_weight_file[9].scales           = conv_9_scales;
    //conv_weight_file[9].rolling_mean     = conv_9_rolling_mean;
    //conv_weight_file[9].rolling_variance = conv_9_rolling_variance;
    conv_weight_file[9].weights          = conv_9_weights;

    conv_weight_file[10].biases           = conv_10_biases;
    conv_weight_file[10].scales           = conv_10_scales;
    conv_weight_file[10].rolling_mean     = conv_10_rolling_mean;
    conv_weight_file[10].rolling_variance = conv_10_rolling_variance;
    conv_weight_file[10].weights          = conv_10_weights;

    conv_weight_file[11].biases           = conv_11_biases;
    conv_weight_file[11].scales           = conv_11_scales;
    conv_weight_file[11].rolling_mean     = conv_11_rolling_mean;
    conv_weight_file[11].rolling_variance = conv_11_rolling_variance;
    conv_weight_file[11].weights          = conv_11_weights;

    conv_weight_file[12].biases           = conv_12_biases;
    //conv_weight_file[12].scales           = conv_12_scales;
    //conv_weight_file[12].rolling_mean     = conv_12_rolling_mean;
    //conv_weight_file[12].rolling_variance = conv_12_rolling_variance;
    conv_weight_file[12].weights          = conv_12_weights;

    load_weights_upto(net, 0, net->n, &conv_weight_file[0]);
}
