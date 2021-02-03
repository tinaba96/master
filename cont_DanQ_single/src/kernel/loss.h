#include <math.h>
#include <ap_fixed.h>
#include "ap_int.h"
#include <cmath>
#include <stdio.h>

#include "hls_math.h"


#pragma once


class bcross_entropy 
{
public:
	float cross[919];

	void forward(float* out, float* t, float *l)
	{
		float tmp = 0;
		float delta = 0.000001;
		for(int i = 0; i < 919; ++i)
		{
			cross[i] = out[i];

			tmp += (-1)*t[i]*log(out[i] + delta) - (1 - t[i])*log(1 -out[i] + delta);
			
		}

		*l = tmp/919;

	}


	void backward(float* dout, float* t)
	{
		float delta = 0.000001;
		for(int i = 0; i < 919; ++i)
		{
			
			dout[i] = (-1)*t[i]/(cross[i]+delta) + (1 - t[i])/(1-cross[i] + delta);


		}

	}






};



