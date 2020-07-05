#include <stdio.h>
#include <math.h>

class rmsprop{
private:
	float lr, decayrate, float h;

public:
	rmsprop(float lr, float decayrate)
	{
		lr = 0.01;
		decayrate = 0.99;
	}
public:
	void update(float params, float grads)
	{
		float h[100] = {0};

		h *= decayrate;
		h += (1-decayrate)*grads*grads;
		params -= lr*grads/(sqrt(h)+exp(-8));

	}



}




