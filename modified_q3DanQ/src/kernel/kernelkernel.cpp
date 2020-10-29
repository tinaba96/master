
#include <hls_math.h>
#include <stdio.h>
//#include <cmath>
//#include <algorithm>

#include "loss.h"
#include "layers.h"
#include "optimizer.h"
#include "cnn.h"


//printf("check in kernel #0");

#define BUFFER_SIZE 1024

extern "C"{
void kerneldl(
	int *datax,
	int *datay,
	float *dout,
	char model
	)
{
	
	printf("checking in kernel");
	#ifndef __SYNTHESIS__
	    printf("checking in kernel");
	#endif
	float paramsw1[26*4*320];
	float paramsb1[975*320];
	float gradsw1[26*4*320];
	float gradsb1[975*320];
	float h1[26*4*320];
	float h2[975*320];


	cnn z;
	rmsprop opt;
	//conv1d a = conv1d();
	//relu b = relu();
	//mpool c = mpool();


	#pragma HLS INTERFACE m_axi port=datax offset=slave bundle=gem
	#pragma HLS INTERFACE m_axi port=datay offset=slave bundle=gem
	#pragma HLS INTERFACE m_axi port=dout offset=slave bundle=gem
	#pragma HLS INTERFACE m_axi port=model offset=slave bundle=gem
	#pragma HLS INTERFACE s_axilite port=datax bundle=control
	#pragma HLS INTERFACE s_axilite port=datay bundle=control
	#pragma HLS INTERFACE s_axilite port=dout bundle=control
	#pragma HLS INTERFACE s_axilite port=model bundle=control
	#pragma HLS INTERFACE s_axilite port=return bundle=control


	float bufferx[4000];
	for(int i = 0; i<4000; ++i)
	{
		bufferx[i] = datax[i];
	}
	float buffery[320*975];


	switch (model){
		case 'F':{
			printf("check in kernel #3");
			//z.predict(bufferx, buffery); //forward
			z.predict(bufferx, buffery, paramsw1, paramsb1); //forward
			for(int i = 0; i<75*320; ++i)
			{
				datay[i] = buffery[i];
			}
			//break;
		}

		case 'B':{
			z.gradient(dout, gradsw1, gradsb1); //backward
			opt.update(paramsw1, gradsw1, h1, 26*4*320);
			printf("check in kernel #4");

			for(int i = 0; i < 33280; ++i)
			{
				gradsw1[i] = 0;
			}
			opt.update(paramsb1, gradsb1, h2, 975*320);
			for(int i = 0; i < 975*320; ++i)
			{
				gradsb1[i] = 0;
			}
			//break;
		}
	}
}


} // extern"C"



