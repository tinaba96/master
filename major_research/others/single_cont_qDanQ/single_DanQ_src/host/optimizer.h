#include <stdio.h>
#include <stdlib.h>
#include <math.h>

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
			//std::cout << grads[i] << ":";
			

			h[i] *= decayrate;
			h[i] += (1-decayrate)*grads[i]*grads[i];
			//h[i] += (1-decayrate)*(0.000000000000001 + grads[i])*grads[i];
			if(h[i] < 0)
			{
				//std::cout << " h-> "<< h[i] << ":";
				//std::cout << "grads-> "<< grads[i] << ":";
			}

			params[i] -= lr*grads[i]/(0.000000001 + sqrt(h[i]));
			//params[i] -= lr*grads[i];


			//std::cout << params[i];
			//std::cout << sqrt(h[i]);
			//tmp = lr*grads[i]/(sqrt(h[i])+exp(-7));
			//params[i] -= tmp;
			//std::cout << lr*grads[i]/(sqrt(h[i])+exp(-7));
			//std::cout << "tmp: " << tmp;
		}
		//std::cout << "check" << endl;
		for(int i = 0; i < 19; ++i)
		{
			//std::cout << params[size-1-i];
		}
	}



};




