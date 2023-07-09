//#include "hls_math.h"

#include "loss.h"
#include "layers.h"
#include "optimizer.h"

#pragma once


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
		//printf("checking in cnn2");
	}
};


