#include <math.h>
#include <cmath>
#include <stdio.h>



class bcross_entropy 
{
public:
	float cross[919];

	void forward(float* out, float* t, float *l)
	{
		float delta = exp(-7);
		//float a = 0;
		float tmp = 0;
		//*l = 0;
		for(int i = 0; i < 919; ++i)
		{
			cross[i] = out[i];
			//std::cout << t[i];
			tmp += t[i]*log(out[i] + delta);
		}
		*l = -tmp/919;

		//l = &a;  //これだと、mainの方のlが変わらない。
		//std::cout << "loss : " << *l << endl;
	}


	void backward(float* dout, float* t)
	{
		for(int i = 0; i < 919; ++i)
		{
			dout[i] = (-1)*t[i]/(cross[i]+exp(-7));
			
		}

	}






};



