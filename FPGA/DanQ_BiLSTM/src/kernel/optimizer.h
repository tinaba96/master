#include "hls_math.h"

#pragma once

class rmsprop{
public:

	/*
	//rmsprop(float lr, float decayrate)
	rmsprop()
	{
		lr = 0.01;
		decayrate = 0.99;
	}
	*/
	float lr = 0.01;
	float decayrate = 0.99;
	float little = 0.00000001;

	/*
	float h1[26*4*320];
	float h2[975*320];
	float h3[75*320*925];
	float h4[925];
	float h5[925*919];
	float h6[919];

	*/
	//float h1[26*4*320];
	//float h2[975*320];

	//float h1[26*4*320];
	//float h2[975*320];
	
	/*
	rmsprop()
	{
		for(int i = 0; i<26*4*320; i++)
		{
			h1[i] = 1;
		}
		for(int i = 0; i<975*320; i++)
		{
			h2[i] = 1;
		}
	}
	*/


	void update(float* params, float* grads, float* h, int size)
	{
		//memset(h, 0, sizeof h);
		for(int i = 0; i < 75*320; ++i)
		{
			//std::cout << params[i];
			//std::cout << grads[i];
		}
		//float *h = new float[size]; //h[size] index should not be variables
		
		for(int i = 0; i < 190; ++i)
		{
			//std::cout << h[i];
			//std::cout << grads[i];
		}
		//float tmp = 0;
		for(int i = 0; i < size; ++i)
		{
			//std::cout << h[i];
			//std::cout << grads[i] << ":";
			h[i] *= decayrate;
			h[i] += (1-decayrate)*grads[i]*grads[i];
			params[i] -= lr*grads[i]/(sqrt(h[i])+little);
			//std::cout << params[i];
			//std::cout << sqrt(h[i]);
			//tmp = lr*grads[i]/(sqrt(h[i])+exp(-7));
			//params[i] -= tmp;
			//std::cout << lr*grads[i]/(sqrt(h[i])+exp(-7));
			//std::cout << "tmp: " << tmp;
		}
	}
};




