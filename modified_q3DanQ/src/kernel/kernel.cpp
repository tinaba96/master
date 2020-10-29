
//#include "hls_math.h"
//#include <stdio.h>
//#include <cmath>
//#include <algorithm>

#include "loss.h"
#include "layers.h"
#include "optimizer.h"
#include "cnn.h"



//#define BUFFER_SIZE 1024


/*
class cnn 
{
public: 
	float paramsw1[26*4*320];
	float paramsb1[975*320];
	float gradsw1[26*4*320];
	float gradsb1[975*320];
	cnn()
	{


	for(int i = 0; i < 26*4*320; ++i)
	{
		paramsw1[i] = 2;
		gradsw1[i] = 0;
	}

	for(int i = 0; i < 975*320; ++i)
	{
		paramsb1[i] = 2;
		gradsb1[i] = 0;
	}
	}

	conv1d a;
	relu b;
	mpool c;

	//void predict(float* x, float* y, float* paramsw1, float* paramsb1)
	void predict(float *x, float *y)
	{
		a.forward(x, y, paramsw1, paramsb1);
		b.forward(y);
		c.forward(y);
		//d.forward(y,x);
		//e.forward(x, y); // relu2
		//f.forward(y, x, paramsw3, paramsb3); //full-connected
		//g.forward(x, y);
	}

	//void gradient(float* dout, float* gradsw1, float* gradsb1)
	void gradient(float *dout)
	{
		//g.backward(dout, y); //sigmoid
		//f.backward(dout, paramsw3, gradsw3, gradsb3); //full_connected2
		//e.backward(dout); //relu2
		//d.backward(dout, paramsw2, gradsw2, gradsb2); //full_connected
		c.backward(dout); //maxpooling
		b.backward(dout); //relu
		a.backward(dout, gradsw1, gradsb1); //convolution


*/






extern "C"{
void kerneldl(
	const float *datax,
	float *datay,
	const float *dout,
	int model
	)

	{	

	#pragma HLS INTERFACE m_axi port=datax offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=datay offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=dout offset=slave bundle=gmemm
	//#pragma HLS INTERFACE m_axi port=model offset=slave bundle=gem //maybe, it doesn't work with this.
	#pragma HLS INTERFACE s_axilite port=datax bundle=control
	#pragma HLS INTERFACE s_axilite port=datay bundle=control
	#pragma HLS INTERFACE s_axilite port=dout bundle=control
	#pragma HLS INTERFACE s_axilite port=model bundle=control
	#pragma HLS INTERFACE s_axilite port=return bundle=control
			
	
	//printf("%d", model);

	#ifndef __SYNTHESIS__
	    //printf("checking in kernel");
	#endif

	
	//float paramsw1[26*4*320];
	//float paramsb1[975*320];
	//float gradsw1[26*4*320];
	//float gradsb1[975*320];


	for(int i = 0; i < 4000; ++i)
	{
		//printf("%f", datax[i]);					
		//printf("%d", model);					
	}
		


	cnn z = cnn();
	//cnn z;
	//rmsprop opt = rmsprop();
	rmsprop opt;
	//conv1d a = conv1d();
	//relu b = relu();
	//mpool c = mpool();



	switch (model){
		case 1:{
			//printf("check in kernel F ");
			float bufferx[4000];
			for(int i = 0; i<4000; ++i)
			{
				bufferx[i] = datax[i];
				//printf("%d", bufferx[i]);					
			}
			float buffery[320*975];
			for(int i = 0; i<975*320; ++i)
			{
				buffery[i] = 0;
			}

			z.predict(bufferx, buffery); //forward
			//z.predict(bufferx, buffery, paramsw1, paramsb1); //forward
			for(int i = 0; i<75*320; ++i)
			{
				datay[i] = buffery[i];
				//printf("%d", datay[i]);					
			}
			break;
		}

		case 2:{
			//printf("check in kernel B ");
			float h1[26*4*320];
			float h2[975*320];
			for(int i = 0; i < 75*320; ++i) 
			{
				//printf("%f : %d\n", dout[i], i);					
				//printf("%f : %d\n", dout[975*319+i], i);					
			}
			float bufferd[320*75];
			for(int i = 0; i<75*320; ++i)
			{
				bufferd[i] = dout[i];
			}

			//z.gradient(bufferd, gradsw1, gradsb1); //backward
			z.gradient(bufferd); //backward

			opt.update(z.paramsw1, z.gradsw1, h1, 26*4*320);

			for(int i = 0; i < 33280; ++i)
			{
				z.gradsw1[i] = 0;
			}

			opt.update(z.paramsb1, z.gradsb1, h2, 975*320);
			for(int i = 0; i < 975*320; ++i)
			{
				z.gradsb1[i] = 0;
			}
			break;
		}
	}
}
} // extern"C"




