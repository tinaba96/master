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
	int *in,
	int *t,
	float *out
	)
{

	float paramsw1[26*4*320];
	float paramsb1[975*320];
	float gradsw1[26*4*320];
	float gradsb1[975*320];
	float h1[26*4*320];
	float h2[975*320];

	#ifndef __SYNTHESIS__
	    printf("checking in kernel");
	#endif


	//cnn z = cnn();
	//bcross_entropy loss = bcross_entropy();

	conv1d a = conv1d();
	relu b = relu();

	mpool c = mpool();


	rmsprop opt;


	float lossval;

	#pragma HLS INTERFACE m_axi port=in offset=slave bundle=gem
	#pragma HLS INTERFACE m_axi port=t offset=slave bundle=gem
	#pragma HLS INTERFACE m_axi port=out offset=slave bundle=gem
	#pragma HLS INTERFACE s_axilite port=in bundle=control
	#pragma HLS INTERFACE s_axilite port=t bundle=control
	#pragma HLS INTERFACE s_axilite port=out bundle=control
	#pragma HLS INTERFACE s_axilite port=return bundle=control

	float bufferx[4000];
	float buffery[4000];


	*out = 100;

}


/*
void kerneldl(
	int *in,
	int *t,
	float *out
	)
{
	#ifndef __SYNTHESIS__
	    printf("text");
	#endif
	printf("check in kernel #1");
	cnn z = cnn();
	bcross_entropy loss = bcross_entropy();

	conv1d a = conv1d();
	relu b = relu();
	mpool c = mpool();
	fullc d = fullc();
	relu2 e = relu2();
	fullc2 f = fullc2();
	sigmoid g = sigmoid();
	//relu3 g = relu3();

	float lossval;

	#pragma HLS INTERFACE m_axi port=in offset=slave bundle=gem
	#pragma HLS INTERFACE m_axi port=t offset=slave bundle=gem
	#pragma HLS INTERFACE m_axi port=out offset=slave bundle=gem
	#pragma HLS INTERFACE s_axilite port=in bundle=control
	#pragma HLS INTERFACE s_axilite port=t bundle=control
	#pragma HLS INTERFACE s_axilite port=out bundle=control
	#pragma HLS INTERFACE s_axilite port=return bundle=control

	float bufferx[975*320];
	float buffery[975*320];
	float buffert[919];

	float dout[919];
	float n = 0;
	float *l;
	l = &n;

	for(int i = 0; i < 4000; ++i)
	{
		bufferx[i]=in[i];
	}
	for(int i = 0; i < 919; ++i)
	{
		buffert[i]=t[i];
	}

	for(int i = 0; i < 919; ++i)
	{
		dout[i] = 1;
	}
	

	printf("check in kernel #2");


	//cnn z = cnn();
	//cnn z; //with this pattern, loss will be -nan
	
	z.predict(bufferx, buffery); //forward

	//z->loss(x, t, l);
	*l = 0;
	loss.forward(buffery, buffert, l);
	lossval += *l;


		
	printf("check in kernel #3");
	z.gradient(dout, buffery); //backward

	*out = lossval/10;
	lossval = 0;

	rmsprop opt;
	opt.update(z.paramsw1, z.gradsw1, z.h1, 26*4*320);
	printf("check in kernel #4");

	for(int i = 0; i < 33280; ++i)
	{
		z.gradsw1[i] = 0;
	}
	opt.update(z.paramsb1, z.gradsb1, z.h2, 975*320);
	for(int i = 0; i < 975*320; ++i)
	{
		z.gradsb1[i] = 0;
	}
	opt.update(z.paramsw2, z.gradsw2, z.h3, 75*320*925);
	opt.update(z.paramsb2, z.gradsb2, z.h4, 925);
	for(int i = 0; i < 75*925*320; ++i)
	{
		z.gradsw2[i] = 0;
	}
	for(int i = 0; i < 925; ++i)
	{
		z.gradsb2[i] = 0;
	}
	printf("check in kernel #5");

	opt.update(z.paramsw3, z.gradsw3, z.h5, 925*919);
	opt.update(z.paramsb3, z.gradsb3, z.h6, 919);
	for(int i = 0; i < 919*925; ++i)
	{
		z.gradsw3[i] = 0;
	}
	for(int i = 0; i < 919; ++i)
	{
		z.gradsb3[i] = 0;
	}
	printf("check in kernel #6");

}
*/

}
