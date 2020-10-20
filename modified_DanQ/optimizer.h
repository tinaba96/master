#include <stdio.h>
#include <stdlib.h>
#include <math.h>

class rmsprop{
public:
	float lr = 0.01;
	float decayrate = 0.99;
	void update(float* params, float* grads, float* h, int size)
	{
		for(int i = 0; i < size; ++i)
		{
			h[i] *= decayrate;
			h[i] += (1-decayrate)*grads[i]*grads[i];
			params[i] = lr*grads[i]/(0.000000001 + sqrt(h[i]));


		}
	}
};




