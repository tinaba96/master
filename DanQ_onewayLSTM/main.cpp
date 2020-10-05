#include <iostream>
#include <iomanip>
#include <random> 
#include <string>
#include <cstring>
#include <fstream>
#include <sstream>

#include "layers.h"
#include "loss.h"
#include "optimizer.h"
#include "lstm.h"


//conv -> relu -> maxpooling -> LSTM -> affine -> relu -> affine -> sigmoid
//using namespace std;

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



	//for LSTM
	float wxf[320*320];
	float wxg[320*320]; 
	float wxi[320*320];  
	float wxo[320*320];
	float gradswxf[320*320];
	float gradswxf_tot[320*320];
	float gradswxg[320*320]; 
	float gradswxg_tot[320*320]; 
	float gradswxi[320*320];  
	float gradswxi_tot[320*320];  
	float gradswxo[320*320];
	float gradswxo_tot[320*320];

	float whf[320*320];
	float whg[320*320]; 
	float whi[320*320];  
	float who[320*320];
	float gradswhf[320*320];
	float gradswhf_tot[320*320];
	float gradswhg[320*320]; 
	float gradswhg_tot[320*320]; 
	float gradswhi[320*320];  
	float gradswhi_tot[320*320];  
	float gradswho[320*320];
	float gradswho_tot[320*320];

	float bf[320];
	float bg[320]; 
	float bi[320];  
	float bo[320];
	float gradsbf[320];
	float gradsbf_tot[320];
	float gradsbg[320]; 
	float gradsbg_tot[320]; 
	float gradsbi[320];  
	float gradsbi_tot[320];  
	float gradsbo[320];
	float gradsbo_tot[320];


	float h_wxf[320*320];
	float h_wxg[320*320];
	float h_wxi[320*320];
	float h_wxo[320*320];
	float h_whf[320*320];
	float h_whg[320*320];
	float h_whi[320*320];
	float h_who[320*320];
	float h_bf[320];
	float h_bg[320];
	float h_bi[320];
	float h_bo[320];

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
	TimeLSTM d;
	fullc e = fullc();
	relu2 f = relu2();
	fullc2 g = fullc2();
	sigmoid h = sigmoid();
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


		for(int i = 0; i < 320*320; ++i)
		{
			wxf[i] = rand(mt)/1000.00;
			wxg[i] = rand(mt)/1000.00;
			wxi[i] = rand(mt)/1000.00;
			wxo[i] = rand(mt)/1000.00;
			whf[i] = rand(mt)/1000.00;
			whg[i] = rand(mt)/1000.00;
			whi[i] = rand(mt)/1000.00;
			who[i] = rand(mt)/1000.00;
		}


		for(int i = 0; i < 320; ++i)
		{
			bf[i] = rand(mt)/1000.00;
			bg[i] = rand(mt)/1000.00;
			bi[i] = rand(mt)/1000.00;
			bo[i] = rand(mt)/1000.00;
		}






		//float paramsw1[26*4*320];  //with this, loss will be -36 and paramsw1 in void predict will be all 0

		//float paramsw1[26*4*320];  //with this, loss will be -36 and paramsw1 in void predict will be all 0


		/*
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
		
		c.forward(x,y);
		
		//float dx[75*320];
		//*dx = *cy;

		//d.forward(y, x); //LSTM
	

		//d.forward(y, x, float* h_prev, float* c_prev, float* h_next, float* c_next, float* lstmwf, float* lstmwg, float* lstmwi, float* lstmwo, float* bf, float* bg, float* bi, float* bo)
		d.forward(y, x, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo);

		for(int i = 0; i < 1000; i++)
		{
			//std::cout << x[100+i];
		}


		//float dy[919];
		e.forward(x, y, paramsw2, paramsb2); //full-connected

		f.forward(y, x); // relu2


		g.forward(x, y, paramsw3, paramsb3); //full-connected
		//float ex[919];
		//*ex = *dy;


		h.forward(y, x);
		for(int i = 0; i < 919; ++i)
		{
			//std::cout << x[i] << " : ";
		}



	}


	void gradient(float* dout, float* y)
	{
		//backward
		h.backward(dout, y); //sigmoid

		g.backward(dout, paramsw3, gradsw3, gradsb3); //full_connected2

		f.backward(dout); //relu2

		e.backward(dout, paramsw2, gradsw2, gradsb2); //full_connected


		d.backward(dout, wxf, wxg, wxi, wxo, whf, whg, whi, who, gradswxf, gradswxg, gradswxi, gradswxo, gradswhf, gradswhg, gradswhi, gradswho, gradswxf_tot, gradswxg_tot, gradswxi_tot, gradswxo_tot, gradswhf_tot, gradswhg_tot, gradswhi_tot, gradswho_tot, gradsbf, gradsbg, gradsbi, gradsbo, gradsbf_tot, gradsbg_tot, gradsbi_tot, gradsbo_tot);

		for(int i = 0; i < 1000; i++)
		{
			//std::cout << gradswxf_tot[100+i];
		}
		c.backward(dout); //maxpooling

		b.backward(dout); //relu

		//std::cout << endl;
		a.backward(dout, paramsw1, gradsw1, gradsb1); //convolution

	}

};



int main()
{
	using namespace std;
	int epochs = 3;
	int count = 0;
	float lossval = 0;
	cnn *z = new cnn();
	bcross_entropy loss = bcross_entropy();
	for(int ep = 0; ep < epochs; ++ep)
	{
		std::cout << "Starting epochs : " << ep+1 << endl;
		
		//float x[4000];
		float x[975*320];
		//std::cout << sizeof(x) << std::endl;
		float y[975*320];
		float t[919];
		//std::cout << sizeof(x) << std::endl;
		//std::cout << *x << std::endl;
		float n = 0;
		float *l;
		l = &n;

		//ifstream stream("data/sampledatax.csv");
		std::ifstream stream("data/actual_in.csv");
		string line = "";
		//ifstream stream3("data/sampledata.csv");
		std::ifstream stream3("data/actual_out.csv");
		string linet = "";

		while (getline(stream, line) && getline(stream3, linet))
		{
			count += 1;
			if(count%10000==0)
			{
				std::cout << "count : " << count << endl;
			}
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


		/*
		memset(h1, 0, sizeof h1);
		memset(h2, 0, sizeof h2);
		memset(h3, 0, sizeof h3);
		memset(h4, 0, sizeof h4);
		memset(h5, 0, sizeof h5);
		memset(h6, 0, sizeof h6);
		*/
			
		//float *l = &n;
		// * solved the error (no matching function for call to ...) 

		//float paramsw1[26*4*320];
		//float gradsw1[26*4*320];
		//float gradsb1[320];
		
		//data da = data();
		//da.getx(tmpx);
		//da.gett(tmpt);
		

			//float dout[919];
			float dout[640*75];
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
			loss.forward(x, t, l);
			//std::cout << "l : " << *l << endl;
			lossval += *l;

			loss.backward(dout, t);

				
			z->gradient(dout, y); //backward
		} //while


		std::cout << "loss : " << lossval/10 << std::endl;
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

		
		//opt.update(z->lstmwf, z->gradswxf


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




		opt.update(z->wxf, z->gradswxf_tot, z->h_wxf, 320*320);
		opt.update(z->wxg, z->gradswxg_tot, z->h_wxg, 320*320);
		opt.update(z->wxi, z->gradswxi_tot, z->h_wxi, 320*320);
		opt.update(z->wxo, z->gradswxo_tot, z->h_wxo, 320*320);

		opt.update(z->whf, z->gradswhf_tot, z->h_whf, 320*320);
		opt.update(z->whg, z->gradswhg_tot, z->h_whg, 320*320);
		opt.update(z->whi, z->gradswhi_tot, z->h_whi, 320*320);
		opt.update(z->who, z->gradswho_tot, z->h_who, 320*320);

		opt.update(z->bf, z->gradsbf_tot, z->h_bf, 320);
		opt.update(z->bg, z->gradsbg_tot, z->h_bg, 320);
		opt.update(z->bi, z->gradsbi_tot, z->h_bi, 320);
		opt.update(z->bo, z->gradsbo_tot, z->h_bo, 320);







		count += 1;
		if (count%100 == 0){
			std::cout << "count :" << count << std::endl;
		}

	} //epochs


	//cnn::predict(float) x[4000], (float) y[975*320]);
	//predict(x, y);
	
	/*	
	for(int i = 0; i < 975*320; ++i)
	{
		std::cout << y[i];
	}
	*/	
	

	return 0;

} //main




