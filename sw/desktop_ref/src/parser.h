#ifndef PARSER_H
#define PARSER_H
#include "darknet.h"

void parse_net_options(network *net);
convolutional_layer parse_convolutional(int n, int size, int stride, int pad, int padding, int groups, ACTIVATION activation, int batch, int h, int w, int c, int batch_normalize, int binary, int xnor, int flipped, float dot, size_params params);
maxpool_layer parse_maxpool(int stride, int size, int padding, int batch, int h, int w, int c);
layer parse_yolo(int classes, int total, int num, int *mask, int batch, int w, int h, int max, float jitter, float ignore_thresh, float truth_thresh, int random, float *anchors, size_params params);
route_layer parse_route(network *net, int batch, int n, int *layers, int *sizes);
layer parse_upsample(int stride, int batch, int w, int h, int c, float scale);
void parse_layer_0(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_1(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_2(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_3(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_4(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_5(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_6(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_7(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_8(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_9(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_10(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_11(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_12(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_13(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_14(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_15(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_16(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_17(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_18(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_19(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_20(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_21(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_22(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
void parse_layer_23(int *count_p,size_params *params_p,network *net,size_t *workspace_size_p);
network *parse_network_cfg();
void load_convolutional_weights(layer *lp, Layer_Weight_File *conv_weight_file_ptr);
void load_weights_upto(network *net, int start, int cutoff, Layer_Weight_File conv_weight_file[13]);
void load_weights(network *net);


#endif
