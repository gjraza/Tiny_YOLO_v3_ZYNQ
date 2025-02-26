//============================================================================
// Name        : data_fp.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <ap_fixed.h>

typedef ap_fixed<16,8,AP_RND_CONV,AP_SAT> fp_type;

#include "conv_12_weight_bn.h"

int main() {

	FILE *fp;
	fp = fopen("conv_12_weight_bn_fp.h","w");

	fprintf(fp,"#ifndef CONV_12_WEIGHT_BN_FP_H\n");
	fprintf(fp,"#define CONV_12_WEIGHT_BN_FP_H\n\n");

	fprintf(fp,"short conv_12_biases_bn_fp[]={");
	for(int i=0;i<sizeof(conv_12_biases_bn)/sizeof(float);i++)
	{
		fp_type a = conv_12_biases_bn[i];
		short b = a.range();

		if(i!=sizeof(conv_12_biases_bn)/sizeof(float)-1)
			fprintf(fp,"%d,\n",b);
		else
			fprintf(fp,"%d};\n\n",b);
	}

	fprintf(fp,"short conv_12_weights_bn_fp[]={");
	for(int i=0;i<sizeof(conv_12_weights_bn)/sizeof(float);i++)
	{
		fp_type a = conv_12_weights_bn[i];
		short b = a.range();

		if(i!=sizeof(conv_12_weights_bn)/sizeof(float)-1)
			fprintf(fp,"%d,\n",b);
		else
			fprintf(fp,"%d};\n\n",b);
	}
	fprintf(fp,"#endif\n");
	fclose(fp);



//	fp_type *fp_p = (fp_type *)data_fp;
//
//	for(int j=0;j<16;j++)
//	{
//		float b = fp_p[j].to_float();
//		printf("%d:%d,%f\n",j,data_fp[j],b);
//	}



	return 0;
}
