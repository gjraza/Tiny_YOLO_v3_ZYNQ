#ifndef ROUTE_LAYER_H
#define ROUTE_LAYER_H

#include "darknet.h"
//#include "layer.h"



route_layer make_route_layer(int batch, int n, int *input_layers, int *input_size);
void forward_route_layer(const route_layer l, network net);

#endif
