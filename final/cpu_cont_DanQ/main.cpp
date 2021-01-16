#include <iostream>
#include <iomanip>
#include <random> 
#include <string>
#include <cstring>
#include <fstream>
#include <sstream>
#include <stdio.h>
#include <time.h>
#include <chrono>


#include "layers.h"
#include "loss.h"
#include "optimizer.h"
#include "lstm.h"
#include "readw.cpp"


//conv -> relu -> maxpooling -> LSTM -> affine -> relu -> affine -> sigmoid
using namespace std;

class cnn 
{
public: 
	float paramsw1[26*4*320];
	float gradsw1[26*4*320];
	float paramsb1[975*320];
	float gradsb1[975*320];
	float paramsw2[75*640*925];
	float paramsb2[925];
	float gradsb2[925];
	float gradsw2[75*925*640];
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
	float gradswxg[320*320]; 
	float gradswxi[320*320];  
	float gradswxo[320*320];
	float wxf2[320*320];
	float wxg2[320*320]; 
	float wxi2[320*320];  
	float wxo2[320*320];
	float gradswxf2[320*320];
	float gradswxg2[320*320]; 
	float gradswxi2[320*320];  
	float gradswxo2[320*320];

	float whf[320*320];
	float whg[320*320]; 
	float whi[320*320];  
	float who[320*320];
	float gradswhf[320*320];
	float gradswhg[320*320]; 
	float gradswhi[320*320];  
	float gradswho[320*320];
	float whf2[320*320];
	float whg2[320*320]; 
	float whi2[320*320];  
	float who2[320*320];
	float gradswhf2[320*320];
	float gradswhg2[320*320]; 
	float gradswhi2[320*320];  
	float gradswho2[320*320];

	float bf[320];
	float bg[320]; 
	float bi[320];  
	float bo[320];
	float gradsbf[320];
	float gradsbg[320]; 
	float gradsbi[320];  
	float gradsbo[320];
	float bf2[320];
	float bg2[320]; 
	float bi2[320];  
	float bo2[320];
	float gradsbf2[320];
	float gradsbg2[320]; 
	float gradsbi2[320];  
	float gradsbo2[320];


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
	float h_wxf2[320*320];
	float h_wxg2[320*320];
	float h_wxi2[320*320];
	float h_wxo2[320*320];
	float h_whf2[320*320];
	float h_whg2[320*320];
	float h_whi2[320*320];
	float h_who2[320*320];
	float h_bf2[320];
	float h_bg2[320];
	float h_bi2[320];
	float h_bo2[320];

	float h1[26*4*320];
	float h2[975*320];
	//float *h3 = new float[75*320*925];
	float h3[75*640*925];
	float h4[925];
	float h5[925*919];
	float h6[919];


	conv1d a = conv1d();
	relu b = relu();
	mpool c = mpool();
	dropout d;
	TimeBiLSTM e;
	dropout f;
	fullc g = fullc();
	relu2 h = relu2();
	fullc2 i = fullc2();
	sigmoid j = sigmoid();
	//relu3 g = relu3();
	//std::chrono::system_clock::time_point start_forward, end_forward, start_backward, end_backward;
	chrono::system_clock::time_point start, end, start_forward, end_forward, start_backward, end_backward;
	
	cnn()
	{
		//weight initialization
		std::random_device rnd;
		std::mt19937 mt(rnd());
		std::uniform_int_distribution<> rand(-10000, 10000);
		//std::uniform_int_distribution<> rand(-100, 100);
		for(int i = 0; i < 26*4*320; ++i)
		{
			//std::cout << rand(mt)/100.0000 << endl;
			//paramsw1[i] = {0.9};
			paramsw1[i] = rand(mt)/1000.00;
			gradsw1[i] = 0;
			//std::cout << paramsw1[i] << ":";
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
			wxf2[i] = rand(mt)/1000.00;
			wxg2[i] = rand(mt)/1000.00;
			wxi2[i] = rand(mt)/1000.00;
			wxo2[i] = rand(mt)/1000.00;
			whf2[i] = rand(mt)/1000.00;
			whg2[i] = rand(mt)/1000.00;
			whi2[i] = rand(mt)/1000.00;
			who2[i] = rand(mt)/1000.00;
		}


		for(int i = 0; i < 320; ++i)
		{
			/*
			bf[i] = rand(mt)/1000.00;
			bg[i] = rand(mt)/1000.00;
			bi[i] = rand(mt)/1000.00;
			bo[i] = rand(mt)/1000.00;
			bf2[i] = rand(mt)/1000.00;
			bg2[i] = rand(mt)/1000.00;
			bi2[i] = rand(mt)/1000.00;
			bo2[i] = rand(mt)/1000.00;
			*/

			bf[i] = 0;
			bg[i] = 0;
			bi[i] = 0;
			bo[i] = 0;
			bf2[i] = 0;
			bg2[i] = 0;
			bi2[i] = 0;
			bo2[i] = 0;

		}






	}

	void predict(float *x, float *y)
	{
		
		a.forward(x, y, paramsw1, paramsb1); //convolutional
			

		b.forward(y, x); //relu
		
		c.forward(x,y); //MaxPooling
		

	

		d.forward(y, x, 75*320, 0.2, true); // dropout
		

		start_forward = std::chrono::system_clock::now();
		e.forward(x, y, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf2, bg2, bi2, bo2); //BiLSTM
		end_forward = std::chrono::system_clock::now();
		double time_4_BiLSTM_forward = static_cast<double>(chrono::duration_cast<chrono::microseconds>(end_forward-start_forward).count() /1000.0);
		
		std::cout << "time for BiLSTM forward " << time_4_BiLSTM_forward << std::endl;
		//outputfile << "time for BiLSTM forward " << time_4_BiLSTM_forward << std::endl;


		f.forward(y, x, 75*640, 0.5, true); // dropout

		g.forward(x, y, paramsw2, paramsb2); //full-connected

		h.forward(y, x); // relu2


		i.forward(x, y, paramsw3, paramsb3); //full-connected2


		j.forward(y, x);



	}


	void gradient(float* dout, float* y)
	{
		//backward
		j.backward(dout, y); //sigmoid

		i.backward(dout, paramsw3, gradsw3, gradsb3); //full_connected2

		h.backward(dout); //relu2

		g.backward(dout, paramsw2, gradsw2, gradsb2); //full_connected
		f.backward(dout, 75*640); //dropout


		start_backward = chrono::system_clock::now();
		e.backward(dout, wxf, wxg, wxi, wxo, whf, whg, whi, who, gradswxf, gradswxg, gradswxi, gradswxo, gradswhf, gradswhg, gradswhi, gradswho, gradsbf, gradsbg, gradsbi, gradsbo, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, gradswxf2, gradswxg2, gradswxi2, gradswxo2, gradswhf2, gradswhg2, gradswhi2, gradswho2, gradsbf2, gradsbg2, gradsbi2, gradsbo2); // BiLSTM
		end_backward = chrono::system_clock::now();
		double time_4_BiLSTM_backward = static_cast<double>(chrono::duration_cast<chrono::microseconds>(end_backward-start_backward).count() /1000.0);
		
		std::cout << "time for BiLSTM backward " << time_4_BiLSTM_backward << std::endl;
		//outputfile << "time for BiLSTM backward " << time_4_BiLSTM_backward << std::endl;

		d.backward(dout, 75*320); //dropout
		
		c.backward(dout); //maxpooling

		b.backward(dout); //relu

		//std::cout << endl;
		a.backward(dout, paramsw1, gradsw1, gradsb1); //convolution

	}
};



int main()
{
	using namespace std;
	int epochs = 20;
	float lossval = 0;


	cnn *z = new cnn();
	rmsprop opt;

	std::chrono::system_clock::time_point start, end, start_update, end_update;

	std::ifstream ifs("./weights.txt");
	if(ifs.fail()) {
		std::cerr << "No Weights to Use" << std::endl;
	}else{
		std::cerr << "Weights are Used" << std::endl;
		
		//std::cout << z->paramsw2[79] << "--->";


		load_weights(z->paramsw1, z->paramsb1, z->paramsw2, z->paramsb2, z->paramsw3, z->paramsb3, z->wxf, z->wxg, z->wxi, z->wxo, z->whf, z->whg, z->whi, z->who, z->wxf2, z->wxg2, z->wxi2, z->wxo2, z->whf2, z->whg2, z->whi2, z->who2, z->bf, z->bg, z->bi, z->bo, z->bf2, z->bg2, z->bi2, z->bo2, z->h1, z->h2, z->h3, z->h4, z->h5, z->h6, z->h_wxf, z->h_wxg, z->h_wxi, z->h_wxo, z->h_whf, z->h_whg, z->h_whi, z->h_who, z->h_wxf2, z->h_wxg2, z->h_wxi2, z->h_wxo2, z->h_whf2, z->h_whg2, z->h_whi2, z->h_who2, z->h_bf, z->h_bg, z->h_bi, z->h_bo, z->h_bf2, z->h_bg2, z->h_bi2, z->h_bo2);

		//std::cout << z->paramsw2[79] << std::endl;






		//return 0;

	}

	
	bcross_entropy loss = bcross_entropy();
	float loss_avg = 0;
	std::ofstream outputfile("output.txt");


	for(int ep = 0; ep < epochs; ++ep)
	{
		start = std::chrono::system_clock::now();

		std::ofstream weightsfile("weights.txt");

		std::cout << "Starting epochs : " << ep+1 << std::endl;
		float x[975*320];
		float y[975*320];
		float t[919];
		int count = 0;
		float n = 0;
		float *l;
		l = &n;

		//std::ifstream stream("../data/actual_in50000.csv");
		std::ifstream stream("../data/actual_in500.csv");
		//std::ifstream stream("../data/sampledatax.csv");
		//std::ifstream stream("data/actual_in.csv");
		string line = "";
		//std::ifstream stream3("../data/actual_out50000.csv");
		std::ifstream stream3("../data/actual_out500.csv");
		//std::ifstream stream3("../data/sampledata.csv");
		//std::ifstream stream3("data/actual_out.csv");
		string linet = "";

		while (getline(stream, line) && getline(stream3, linet))
		{
			int i = 0;
			count += 1;
			string tmp = "";
			istringstream stream2(line);

			while (getline(stream2, tmp, ','))
			{
			      try { 
						float tmp2 = std::stoi(tmp);
						x[i] = (tmp2);
						i++;
			      }catch(...){
				      break;
			      }

			}



			int ti = 0;
		
			string tmpt = "";
			istringstream stream4(linet);

			while (getline(stream4, tmpt, ','))
			{
			      try { 
						float tmpt2 = std::stoi(tmpt);
						t[ti] = (tmpt2);
						ti++;
			      }catch(...){
				      printf("error\n");
				      break;
			     }
			}


			//float dout[919];
			float dout[640*975];
			for(int i = 0; i < 919; ++i)
			{
				dout[i] = {1};
			}
		

			z->predict(x, y); //forward

			*l = 0;
			loss.forward(x, t, l);

			//std::cout << "l : " << *l << endl;
			lossval += *l;

			loss.backward(dout, t);

			z->gradient(dout, x); //backward


			if(count%100==0)
			{
				std::cout << "loss : " << lossval/100 << std::endl;
				loss_avg += lossval/100;
				lossval = 0;


				opt.update(z->paramsw1, z->gradsw1, z->h1, 26*4*320);

				for(int i = 0; i < 33280; ++i)
				{
					z->gradsw1[i] = 0;
				}
				opt.update(z->paramsb1, z->gradsb1, z->h2, 975*320);


				for(int i = 0; i < 975*320; ++i)
				{
					z->gradsb1[i] = 0;
				}

				

				opt.update(z->paramsw2, z->gradsw2, z->h3, 75*640*925);
				opt.update(z->paramsb2, z->gradsb2, z->h4, 925);
				for(int i = 0; i < 75*925*640; ++i)
				{
					z->gradsw2[i] = 0;
				}

				for(int i = 0; i < 925; ++i)
				{
					z->gradsb2[i] = 0;
				}

				opt.update(z->paramsw3, z->gradsw3, z->h5, 925*919);
				opt.update(z->paramsb3, z->gradsb3, z->h6, 919);
				for(int i = 0; i < 919; ++i)
				{
					z->gradsb3[i] = 0;
				}

			}// if 100

				//clock_t start = clock();
				start_update = std::chrono::system_clock::now();

				opt.update(z->wxf, z->gradswxf, z->h_wxf, 320*320);
				opt.update(z->wxg, z->gradswxg, z->h_wxg, 320*320);
				opt.update(z->wxi, z->gradswxi, z->h_wxi, 320*320);
				opt.update(z->wxo, z->gradswxo, z->h_wxo, 320*320);


				opt.update(z->whf, z->gradswhf, z->h_whf, 320*320);
				opt.update(z->whg, z->gradswhg, z->h_whg, 320*320);
				opt.update(z->whi, z->gradswhi, z->h_whi, 320*320);
				opt.update(z->who, z->gradswho, z->h_who, 320*320);

				opt.update(z->bf, z->gradsbf, z->h_bf, 320);
				opt.update(z->bg, z->gradsbg, z->h_bg, 320);
				opt.update(z->bi, z->gradsbi, z->h_bi, 320);
				opt.update(z->bo, z->gradsbo, z->h_bo, 320);


				opt.update(z->wxf2, z->gradswxf2, z->h_wxf2, 320*320);
				opt.update(z->wxg2, z->gradswxg2, z->h_wxg2, 320*320);
				opt.update(z->wxi2, z->gradswxi2, z->h_wxi2, 320*320);
				opt.update(z->wxo2, z->gradswxo2, z->h_wxo2, 320*320);

				opt.update(z->whf2, z->gradswhf2, z->h_whf2, 320*320);
				opt.update(z->whg2, z->gradswhg2, z->h_whg2, 320*320);
				opt.update(z->whi2, z->gradswhi2, z->h_whi2, 320*320);
				opt.update(z->who2, z->gradswho2, z->h_who2, 320*320);

				opt.update(z->bf2, z->gradsbf2, z->h_bf2, 320);
				opt.update(z->bg2, z->gradsbg2, z->h_bg2, 320);
				opt.update(z->bi2, z->gradsbi2, z->h_bi2, 320);
				opt.update(z->bo2, z->gradsbo2, z->h_bo2, 320);


				for(int i = 0; i < 320*320; ++i)
				{
					
					z->gradswxf[i] = 0;
					z->gradswxg[i] = 0;
					z->gradswxi[i] = 0;
					z->gradswxo[i] = 0;
					z->gradswhf[i] = 0;
					z->gradswhg[i] = 0;
					z->gradswhi[i] = 0;
					z->gradswho[i] = 0;
					z->gradswxf2[i] = 0;
					z->gradswxg2[i] = 0;
					z->gradswxi2[i] = 0;
					z->gradswxo2[i] = 0;
					z->gradswhf2[i] = 0;
					z->gradswhg2[i] = 0;
					z->gradswhi2[i] = 0;
					z->gradswho2[i] = 0;
				}

				for(int i = 0; i < 320; ++i)
				{
					z->gradsbf[i] = 0;
					z->gradsbg[i] = 0;
					z->gradsbi[i] = 0;
					z->gradsbo[i] = 0;
					z->gradsbf2[i] = 0;
					z->gradsbg2[i] = 0;
					z->gradsbi2[i] = 0;
					z->gradsbo2[i] = 0;

				}
				//clock_t end = clock();
				//const double time = static_cast<double>(end - start) / CLOCKS_PER_SEC * 1000.0;
				//printf("time %lf[ms]\n", time);
				//outputfile << "time : " << time << "[ms]" << std::endl;;
				//std::cout << "time : " << time << "[ms]" << std::endl;;

				end_update = std::chrono::system_clock::now();
				double time_4_BiLSTM_update  = std::chrono::duration_cast<std::chrono::milliseconds>(end_update - start_update).count();
				
				std::cout << "time for BiLSTM update " << time_4_BiLSTM_update << std::endl;



		} //while

		std::cout << " --------->    loss_avg : " << loss_avg/5 << std::endl;
		outputfile << ep+1 << " " << loss_avg/5 << std::endl;
		loss_avg = 0;





		
		for(int i = 0; i < 26*4*320; ++i) //1
		{
			weightsfile << z->paramsw1[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 975*320; ++i)
		{
			weightsfile << z->paramsb1[i] << ",";
		}
		weightsfile << std::endl;

		for(int i = 0; i < 75*640*925; ++i)
		{
			weightsfile << z->paramsw2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <925; ++i)
		{
			weightsfile << z->paramsb2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <925*919; ++i) //5
		{
			weightsfile << z->paramsw3[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <919; ++i)
		{
			weightsfile << z->paramsb3[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->wxf[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->wxg[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->wxi[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i) //10
		{
			weightsfile << z->wxo[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->whf[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->whg[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->whi[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->who[i] << ",";
		}
		weightsfile << std::endl;

		for(int i = 0; i <320*320; ++i) //15
		{
			weightsfile << z->wxf2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->wxg2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->wxi2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->wxo2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->whf2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->whg2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->whi2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->who2[i] << ",";
		}
		weightsfile << std::endl;

		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bf[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bg[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i) //25
		{
			weightsfile << z->bi[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bo[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bf2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bg2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bi2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bo2[i] << ",";
		}
		weightsfile << std::endl;




		for(int i = 0; i < 26*4*320; ++i) //31
		{
			weightsfile << z->h1[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 975*320; ++i)
		{
			weightsfile << z->h2[i] << ",";
		}
		weightsfile << std::endl;

		for(int i = 0; i < 75*640*925; ++i)
		{
			weightsfile << z->h3[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <925; ++i)
		{
			weightsfile << z->h4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <925*919; ++i) //35
		{
			weightsfile << z->h5[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <919; ++i)
		{
			weightsfile << z->h6[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxf[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxg[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxi[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i) //40
		{
			weightsfile << z->h_wxo[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_whf[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_whg[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_whi[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_who[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxf2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxg2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxi2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxo2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_whf2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i) //50
		{
			weightsfile << z->h_whg2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_whi2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_who2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->h_bf[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->h_bg[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i) //55
		{
			weightsfile << z->h_bi[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->h_bo[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->h_bf2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->h_bg2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->h_bi2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i) //60
		{
			weightsfile << z->h_bo2[i] << ",";
		}
		weightsfile << std::endl;





		weightsfile.close();

		end = std::chrono::system_clock::now();
		double elapsed  = std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count();

		std::cout << "total time for epoch " << ep+1 << " is " << elapsed << std::endl;
		std::cout << "total time for epoch " << ep+1 << " is " << elapsed << std::endl;

	
	} //epochs


	outputfile.close();


	return 0;

} //main



