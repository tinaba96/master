#include <iostream>
#include <iomanip>
#include <random> 
#include <string>
#include <cstring>
#include <fstream>
#include <sstream>

#include "../kernel/kernel.cpp"
//#include "get_data.h"
//#include "loss.h"
//#include "optimizer.h"


//conv -> relu -> maxpooling -> affine -> relu -> affine -> sigmoid
using namespace std;

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
	for(int i = 0; i < 26*4*320; ++i)
	{
		paramsw1[i] = rand(mt)/1000.00;
		gradsw1[i] = 0;
	}
	for(int i = 0; i < 975*320; ++i)
	{
		paramsb1[i] = rand(mt)/1000.00;
		gradsb1[i] = 0;
	}
	for(int i = 0; i < 925*75*320; ++i)
	{
		paramsw2[i] = rand(mt)/1000.00;
		gradsw2[i] = 0;
	}	
	for(int i = 0; i < 925; ++i)
	{
		paramsb2[i] = rand(mt)/1000.00;
		gradsb2[i] = 0;
	}
	for(int i = 0; i < 925*919; ++i)
	{
		paramsw3[i] = rand(mt)/1000.00;
		gradsw3[i] = 0;
	}	
	for(int i = 0; i < 919; ++i)
	{
		paramsb3[i] = rand(mt)/1000.00;
		gradsb3[i] = 0;
	}

	}

	void predict(float *x, float *y)
	{
		a.forward(x, y, paramsw1, paramsb1);
		b.forward(y, x);
		c.forward(x, y);
		e.forward(x, y); // relu2
		f.forward(y, x, paramsw3, paramsb3); //full-connected
		g.forward(x, y);
	}
	void gradient(float *dout, float *y)
	{
		g.backward(dout, y); //sigmoid
		f.backward(dout, paramsw3, gradsw3, gradsb3); //full_connected2
		e.backward(dout); //relu2
		d.backward(dout, paramsw2, gradsw2, gradsb2); //full_connected
		c.backward(dout); //maxpooling
		b.backward(dout); //relu
		a.backward(dout, paramsw1, gradsw1, gradsb1); //convolution
	}

};


int main()
{
	int epochs = 10;
	float lossval = 0;
	cnn *z = new cnn();
	bcross_entropy loss = bcross_entropy();
	for(int ep = 0; ep < epochs; ++ep)
	{
		
	float x[4000];
	//std::cout << sizeof(x) << std::endl;
	float y[975*320];
	float t[919];
	//std::cout << sizeof(x) << std::endl;
	//std::cout << *x << std::endl;
	float n = 0;
	float *l;
	l = &n;

	//ifstream stream("data/sampledatax.csv");
	ifstream stream("data/sampledatax.csv");
	string line = "";
	//ifstream stream3("data/sampledata.csv");
	ifstream stream3("data/sampledata.csv");
	string linet = "";

	while (getline(stream, line) && getline(stream3, linet))
	{
		int i = 0;
		string tmp = "";
		istringstream stream2(line);

		while (getline(stream2, tmp, ','))
		{
		      try { 
					float tmp2 = std::stoi(tmp);
					x[i] = (tmp2);
					//std::cout << x[i];
					i++;
		      }catch(...){
			      //printf("error\n");
			      break;
		      }

		}



		int ti = 0;
	//while (getline(stream3, line))
	//{
		string tmpt = "";
		istringstream stream4(linet);

		while (getline(stream4, tmpt, ','))
		{
		      try { 
					float tmpt2 = std::stoi(tmpt);
					t[ti] = (tmpt2);
					//std::cout << y[ti];
					ti++;
		      }catch(...){
			      printf("error\n");
			      break;
		      }
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
		
		z->predict(x, y); //forward
		for(int i = 0; i < 919; ++i)
		{
			//std::cout << x[i];
		}

		//z->loss(x, t, l);
		*l = 0;
		loss.forward(y, t, l);
		//std::cout << "l : " << *l << endl;
		lossval += *l;

		loss.backward(dout, t);
		for(int i = 0; i < 919; ++i)
		{
			//std::cout << dout[i] << ":";
		}

			
		z->gradient(dout, y); //backward
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
	

	return 0;
	}
}


