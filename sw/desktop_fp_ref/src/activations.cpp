#include "activations.h"

fp_data_type activate(fp_data_type x, ACTIVATION a)
{
    switch(a){
        case LINEAR:
            return linear_activate(x);
        case LOGISTIC:
            return logistic_activate(x);
        //case LOGGY:
        //    return loggy_activate(x);
        //case RELU:
        //    return relu_activate(x);
        //case ELU:
        //    return elu_activate(x);
        //case SELU:
        //    return selu_activate(x);
        //case RELIE:
        //    return relie_activate(x);
        //case RAMP:
        //    return ramp_activate(x);
        case LEAKY:
            return leaky_activate(x);
        //case TANH:
        //    return tanh_activate(x);
        //case PLSE:
        //    return plse_activate(x);
        //case STAIR:
        //    return stair_activate(x);
        //case HARDTAN:
        //    return hardtan_activate(x);
        //case LHTAN:
        //    return lhtan_activate(x);
        default: return 0;
    }
}

void activate_array(fp_data_type *x, const int n, const ACTIVATION a)
{
    int i;
    for(i = 0; i < n; ++i){
        x[i] = activate(x[i], a);
    }
}
