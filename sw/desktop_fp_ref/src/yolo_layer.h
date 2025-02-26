#ifndef YOLO_LAYER_H
#define YOLO_LAYER_H

#include "darknet.h"
//#include "layer.h"

layer make_yolo_layer(int batch, int w, int h, int n, int total, int *mask, int classes);
box get_yolo_box(fp_data_type *x, fp_weight_type *biases, int n, int index, int i, int j, int lw, int lh, int w, int h, int stride);
float delta_yolo_box(box truth, float *x, float *biases, int n, int index, int i, int j, int lw, int lh, int w, int h, float *delta, float scale, int stride);
void delta_yolo_class(float *output, float *delta, int index, int class_idx, int classes, int stride, float *avg_cat);
void forward_yolo_layer(const layer l, network net);
int yolo_num_detections(layer l, float thresh);
void correct_yolo_boxes(detection *dets, int n, int w, int h, int netw, int neth, int relative);
int get_yolo_detections(layer l, int w, int h, int netw, int neth, float thresh, int *map, int relative, detection *dets);

#endif
