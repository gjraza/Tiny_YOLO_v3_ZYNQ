#ifndef ACTIVATIONS_H
#define ACTIVATIONS_H

#include "darknet.h"

fp_data_type activate(fp_data_type x, ACTIVATION a);
void activate_array(fp_data_type *x, const int n, const ACTIVATION a);

static inline fp_data_type linear_activate(fp_data_type x){return x;}
static inline fp_data_type leaky_activate(fp_data_type x){return (x>0) ? x : (fp_data_type)((fp_data_type).1*x);}
static inline fp_data_type logistic_activate(fp_data_type x){return (fp_data_type)1./((fp_data_type)1. + (fp_data_type)exp((double)-x));}

#endif
