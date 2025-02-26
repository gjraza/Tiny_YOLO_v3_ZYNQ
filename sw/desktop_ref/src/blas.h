#ifndef BLAS_H
#define BLAS_H
#include "darknet.h"

void fill_cpu(int N, float ALPHA, float *X, int INCX);
void copy_cpu(int N, float *X, int INCX, float *Y, int INCY);
void normalize_cpu(float *x, float *mean, float *variance, int batch, int filters, int spatial);
void upsample_cpu(float *in, int w, int h, int c, int batch, int stride, int forward,  float scale, float *out);
void scal_cpu(int N, float ALPHA, float *X, int INCX);

#endif
