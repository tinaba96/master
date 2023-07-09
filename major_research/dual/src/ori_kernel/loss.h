#include <math.h>
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
		float delta = 0.00000000000000001;
		//float a = 0;
		float tmp = 0;
		//*l = 0;
		for(int i = 0; i < 919; ++i)
		{
			cross[i] = out[i];
			//std::cout << out[i];

			//tmp += (-1)*t[i]*log(out[i] + delta); // this is a cross-entropy. Not a binary cross-entropy. This causes the problem of loss value. loss value did not go small.
			
			tmp += (-1)*t[i]*log(out[i] + delta) - (1 - t[i])*log(1-out[i] + delta);
			
			//tmp += (0.000001 + t[i])*log(out[i] + delta);
		}

		*l = tmp/919;

		//l = &a;  //これだと、mainの方のlが変わらない。
		//std::cout << "loss : " << *l << endl;
	}


	void backward(float* dout, float* t)
	{
		for(int i = 0; i < 919; ++i)
		{
			//std::cout << cross[i];

			//dout[i] = (-1)*t[i]/(cross[i]+0.0000001); // this is the gradient for a cross-entropy.
			
			dout[i] = (-1)*t[i]/(cross[i]+0.000000001) + (1 - t[i])/(1-cross[i] + 0.000000001);
			//dout[i] = (cross[i] - t[i])/(cross[i]*(1-cross[i]) + 0.0000001);


			//std::cout << "   dout : " << dout[i];
			//dout[i] = (-1)*t[i]/(cross[i]+exp(-7));
		}

	}






};



