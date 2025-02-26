#ifndef ACTIVATIONS_H
#define ACTIVATIONS_H

#include "darknet.h"

float activate(float x, ACTIVATION a);
void activate_array(float *x, const int n, const ACTIVATION a);

static inline float linear_activate(float x){return x;}
static inline float leaky_activate(float x){return (x>0) ? x : .1*x;}
static inline float logistic_activate(float x){return 1./(1. + exp(-x));}

#endif
