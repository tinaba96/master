#include <math.h>
#include <cmath>
#include <stdio.h>



class bcross_entropy 
{
public:
	float cross[919];

	void forward(float* out, float* t, float *l)
	{
		float delta = 0.000001;
		float tmp = 0;
		for(int i = 0; i < 919; ++i)
		{
			cross[i] = out[i];
			tmp += (-1)*t[i]*log(out[i] + delta) - (1 - t[i])*log(1-out[i] + delta);
		}
		*l = tmp/919;
	}

	void backward(float* dout, float* t)
	{
		for(int i = 0; i < 919; ++i)
		{
			dout[i] = (-1)*t[i]/(cross[i]+0.000001) + (1 - t[i])/(1-cross[i] + 0.000001);
			//dout[i] = t[i]*(cross[i]-1) + (1-t[i])*cross[i];  //without sigmoid
		}
	}
};



