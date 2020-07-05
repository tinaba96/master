#include <iostream>
#include <iomanip>
#include <string>

#include "layers.h"

//using namespace std;

class cnn 
{
public: 
	float paramsw1[26*4*320];
	float paramsb1[975*320];
	float paramsw2[13*320];
	float paramsb2[75*320];
	float paramsw3[75*320];
	float paramsb3[919];



	cnn()
	{
	float paramsw1[26*4*320] = {1};
	float paramsb1[975*320] = {0};
	float paramsw2[13*320] = {1};
	float paramsb2[75*320] = {0};
	float paramsw3[75*320] = {1};
	float paramsb3[919] = {0};


	}

	//conv -> relu -> maxpooling -> affine -> sigmoid
	void predict(float *x, float *y)
	{
		std::cout << "check1" << std::endl;
		
		conv1d *a = new conv1d();
		a->forward(x, y, paramsw1, paramsb1);
		std::cout << "check2" << std::endl;

		relu *b = new relu();
		b->forward(x, y);

		mpool *c = new mpool();
		c->forward(x, y, paramsw2);
		//fullc::forward((float)* x, (float)* y, (float) paramsw3[75*320], (float) paramsb3[919]);
		
		fullc *d = new fullc();
		d->forward(x, y, paramsw1, paramsb1);

		sigmoid *e = new sigmoid();
		e->forward(x, y);

	}


	void loss()
	{


	}


	void accuracy()
	{


	}


	void gradient()
	{



	}



	void save_params()
	{


	}



	void load_params()
	{




	}
};


int main()
{

	std::cout << "check" << std::endl;

	float x[4000] = {1};
	float y[975*320];

	cnn z = cnn();
	//z.predict(x, y);
	
	//cnn::predict(float) x[4000], (float) y[975*320]);
	//predict(x, y);

	std::cout << "check" << std::endl;

	std::cout << y << std::endl;

	return 0;
}

	






