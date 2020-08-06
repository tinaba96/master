#include <math.h>
#include <stdio.h>
#include <cmath>
#include <algorithm>

#include "loss.h"
#include "layers.h"
#include "optimizer.h"

class cnn 
{
public: 
	float paramsw1[26*4*320];
	float gradsw1[26*4*320];
	float paramsb1[975*320];
	float gradsb1[975*320];
	float paramsw2[75*320*925];
	float paramsb2[925];
	float gradsb2[925];
	float gradsw2[75*925*320];
	float paramsw3[925*919];
	float paramsb3[919];
	float gradsb3[919];
	float gradsw3[925*919];
	float h1[26*4*320];
	float h2[975*320];
	//float *h3 = new float[75*320*925];
	float h3[75*320*925];
	float h4[925];
	float h5[925*919];
	float h6[919];
	conv1d a = conv1d();
	relu b = relu();
	mpool c = mpool();
	fullc d = fullc();
	relu2 e = relu2();
	fullc2 f = fullc2();
	sigmoid g = sigmoid();
	//relu3 g = relu3();
	
	cnn()
	{
	//weight initialization
	std::random_device rnd;
	std::mt19937 mt(rnd());
	std::uniform_int_distribution<> rand(-1000, 1000);
	//std::uniform_int_distribution<> rand(-100, 100);
	for(int i = 0; i < 26*4*320; ++i)
	{
		//std::cout << rand(mt)/100.0000 << endl;
		//paramsw1[i] = {0.9};
		paramsw1[i] = rand(mt)/1000.00;
		gradsw1[i] = 0;
		//std::cout << paramsw1[i];
	}

	for(int i = 0; i < 975*320; ++i)
	{
		//std::cout << rand(mt)/100000.0000 << endl;
		//paramsw1[i] = {0.9};
		paramsb1[i] = rand(mt)/1000.00;
		gradsb1[i] = 0;
		//gradsb1[i] = 0;
		//std::cout << paramsw1[i];
	}
	for(int i = 0; i < 925*75*320; ++i)
	{
		//std::cout << rand(mt)/100000.0000 << endl;
		//paramsw1[i] = {0.9};
		paramsw2[i] = rand(mt)/1000.00;
		gradsw2[i] = 0;
		//std::cout << paramsw1[i];
	}	
	for(int i = 0; i < 925; ++i)
	{
		//std::cout << rand(mt)/100000.0000 << endl;
		//paramsw1[i] = {0.9};
		paramsb2[i] = rand(mt)/1000.00;
		gradsb2[i] = 0;
		//gradsb2[i] = 0;
		//std::cout << paramsw1[i];
	}
	for(int i = 0; i < 925*919; ++i)
	{
		//std::cout << rand(mt)/100000.0000 << endl;
		//paramsw1[i] = {0.9};
		paramsw3[i] = rand(mt)/1000.00;
		gradsw3[i] = 0;
		//std::cout << paramsw3[i];
	}	
	for(int i = 0; i < 919; ++i)
	{
		//std::cout << rand(mt)/100.0000 << endl;
		//paramsw1[i] = {0.9};
		paramsb3[i] = rand(mt)/1000.00;
		gradsb3[i] = 0;
		//gradsb3[i] = 0;
		//std::cout << paramsb3[i];
	}

	//float paramsw1[26*4*320];  //with this, loss will be -36 and paramsw1 in void predict will be all 0


	/*
	float paramsb1[975*320];
	for(int i = 0; i < 975*320; ++i)

	float paramsb1[975*320];
	for(int i = 0; i < 975*320; ++i)
	{
		paramsb1[i] = {1};
	}

	float paramsw2[13*320];
	for(int i = 0; i < 13*320; ++i)
	{
		paramsw2[i] = {0.9};
	}
	float paramsb2[75*320];
	for(int i = 0; i < 75*320; ++i)
	{
		paramsb2[i] = {1};
	}
	float paramsw3[75*320];
	for(int i = 0; i < 75*320; ++i)
	{
		paramsw3[i] = {0.9};
	}
	float paramsb3[919];
	for(int i = 0; i < 919; ++i)
	{
		paramsb3[i] = {1};
	}

	float dout[919];
	for(int i = 0; i < 919; ++i)
	{
		dout[i] = {1};
	}
	*/

	

	}

	void predict(float *x, float *y)
	{
		for(int i = 0; i < 26*4*320; ++i)
		{
			//std::cout << paramsw1[i];
		}
		
		//std::cout << sizeof(x) << std::endl;
		//float ay[975*320];

		a.forward(x, y, paramsw1, paramsb1);
		//std::cout << sizeof(x) << std::endl;
					
		//float bx[975*320];
		//*bx = *ay;	
			
		//float by[975*320];

		b.forward(y, x);

		//float cx[975*320];
		//*cx = *by; 

		//float cy[75*320];

		
		//float dx[75*320];
		//*dx = *cy;


		//float dy[919];
		d.forward(y, x, paramsw2, paramsb2); //full-connected

		e.forward(x, y); // relu2
		for(int i = 0; i < 925; ++i)
		{
			//std::cout << paramsw2[i] << ":";
			//std::cout << y[i] << ":";
		}

		f.forward(y, x, paramsw3, paramsb3); //full-connected
		//float ex[919];
		//*ex = *dy;

		g.forward(x, y);
		for(int i = 0; i < 919; ++i)
		{
			//std::cout << y[i] << " : ";
		}



	}

	/*
	void loss(float *y, float *t, float *l)
	{
		bcross_entropy loss = bcross_entropy();
		loss.forward(y, t, l);

		//std::cout << *l;

	}
	*/

	/*
	void accuracy()
	{
	}
	*/

	void gradient(float *dout, float *y)
	{
		//backward
		g.backward(dout, y); //sigmoid
		for(int i = 0; i < 919; ++i)
		{
			//std::cout << dout[i] << ":";
		}

		f.backward(dout, paramsw3, gradsw3, gradsb3); //full_connected2

		e.backward(dout); //relu2

		d.backward(dout, paramsw2, gradsw2, gradsb2); //full_connected

		c.backward(dout); //maxpooling

		b.backward(dout); //relu

		//std::cout << endl;
		a.backward(dout, paramsw1, gradsw1, gradsb1); //convolution

	}

	/*
	void save_params()
	{
	}
	void load_params()
	{
	}
	*/
};


extern "c"{

void kerneldl(
	const unsigned int *in,
	const unsigned int *t,
	const unsigned int *out,
	int size
	)
{
	#pragma HLS INTERFACE m_axi port=in offset=slave bundle=gem
	#pragma HLS INTERFACE m_axi port=t offset=slave bundle=gem
	#pragma HLS INTERFACE m_axi port=out offset=slave bundle=gem
	#pragma HLS INTERFACE s_axilite port=in bundle=control
	#pragma HLS INTERFACE s_axilite port=t bundle=control
	#pragma HLS INTERFACE s_axilite port=out bundle=control
	#pragma HLS INTERFACE s_axilite port=size bundle=control
	#pragma HLS INTERFACE s_axilite port=return bundle=control

		unsigned int bufferx[975*320];
		unsigned int buffery[975*320];
		unsigned int l[919];

	for(int i = 0; i < 4000; ++i)
	{
		bufferx[i]=in[i];
	}

	float dout[919];
	for(int i = 0; i < 919; ++i)
	{
		dout[i] = {1};
		//std::cout << t[i] << " : ";
		//std::cout << y[i];
	}
	

		//cnn z = cnn();
		//cnn z; //with this pattern, loss will be -nan
		
		z->predict(bufferx, buffery); //forward
		for(int i = 0; i < 919; ++i)
		{
			//std::cout << x[i];
		}

		//z->loss(x, t, l);
		*l = 0;
		loss.forward(buffery, t, l);
		//std::cout << "l : " << *l << endl;
		lossval += *l;

		loss.backward(dout, t);
		for(int i = 0; i < 919; ++i)
		{
			//std::cout << dout[i] << ":";
		}

			
		z->gradient(dout, buffery); //backward
		for(int i = 0; i < 33280; ++i)
		{
			//std::cout << z->a.paramsw1[i];
		}
		for(int i = 0; i < 320; ++i)
		{
			//std::cout << z->paramsw1[i];
			//std::cout << z->a.gradsw1[i];
		}
	}
		std::cout << "loss : " << lossval/10 << endl;
		lossval = 0;

		rmsprop opt;
		opt.update(z->paramsw1, z->gradsw1, z->h1, 26*4*320);

		for(int i = 0; i < 33280; ++i)
		{
			z->gradsw1[i] = 0;
		}
		opt.update(z->paramsb1, z->gradsb1, z->h2, 975*320);
		//std::cout << "checkcheck" << endl;
		for(int i = 0; i < 320; ++i)
		{
			//std::cout << z->paramsw1[i];
			//std::cout << z->d->gradsw2[i];
		}
		for(int i = 0; i < 975*320; ++i)
		{
			z->gradsb1[i] = 0;
		}
		opt.update(z->paramsw2, z->gradsw2, z->h3, 75*320*925);
		opt.update(z->paramsb2, z->gradsb2, z->h4, 925);
		for(int i = 0; i < 75*925*320; ++i)
		{
			z->gradsw2[i] = 0;
		}
		for(int i = 0; i < 925; ++i)
		{
			z->gradsb2[i] = 0;
		}

		//std::cout << "checkcheck" << std::endl;
		opt.update(z->paramsw3, z->gradsw3, z->h5, 925*919);
		opt.update(z->paramsb3, z->gradsb3, z->h6, 919);
		for(int i = 0; i < 919*925; ++i)
		{
			//std::cout << z->paramsw3[i];
			//std::cout << z->gradsw3[i];
			z->gradsw3[i] = 0;
		}
		for(int i = 0; i < 919; ++i)
		{
			z->gradsb3[i] = 0;
		}



	}
	for(int i = 0; i < 919; ++i)
	{
		//std::cout << y[i];
	}

	//cnn::predict(float) x[4000], (float) y[975*320]);
	//predict(x, y);
	
	/*	
	for(int i = 0; i < 975*320; ++i)
	{
		std::cout << y[i];
	}
	*/	
	

	return 0;
}

}
