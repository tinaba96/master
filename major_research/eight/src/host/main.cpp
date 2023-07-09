#include <iostream>
#include <iomanip>
#include <random> 
#include <string>
#include <cstring>
#include <fstream>
#include <sstream>
#include <istream>
#include <algorithm>
#include <vector>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <chrono>

#include "layers.h"
#include "loss.h"
#include "optimizer.h"
#include "lstm.h"
#include "main.hpp"
#include "readw.cpp"

//#include "../../libs/xcl2/xcl2.hpp"

#include "xcl2.hpp"

//conv -> relu -> maxpooling -> dropout -> LSTM -> dropout -> affine -> relu -> affine -> sigmoid
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


	// ------------------------------------------
	// sending weights and h parameters to kernel
	// ------------------------------------------
	//for LSTM
	float wxf1[320*80];
	float wxf2[320*80];
	float wxf3[320*80];
	float wxf4[320*80];
	float wxg1[320*80]; 
	float wxg2[320*80]; 
	float wxg3[320*80]; 
	float wxg4[320*80]; 
	float wxi1[320*80];  
	float wxi2[320*80];  
	float wxi3[320*80];  
	float wxi4[320*80];  
	float wxo1[320*80];
	float wxo2[320*80];
	float wxo3[320*80];
	float wxo4[320*80];

	/*
	float gradswxf[320*320];
	float gradswxg[320*320]; 
	float gradswxi[320*320];  
	float gradswxo[320*320];
	*/
	float wxf21[320*80];
	float wxf22[320*80];
	float wxf23[320*80];
	float wxf24[320*80];
	float wxg21[320*80]; 
	float wxg22[320*80]; 
	float wxg23[320*80]; 
	float wxg24[320*80]; 
	float wxi21[320*80];  
	float wxi22[320*80];  
	float wxi23[320*80];  
	float wxi24[320*80];  
	float wxo21[320*80];
	float wxo22[320*80];
	float wxo23[320*80];
	float wxo24[320*80];
	/*
	float gradswxf2[320*320];
	float gradswxg2[320*320]; 
	float gradswxi2[320*320];  
	float gradswxo2[320*320];
	*/

	float whf1[320*80];
	float whf2[320*80];
	float whf3[320*80];
	float whf4[320*80];
	float whg1[320*80]; 
	float whg2[320*80]; 
	float whg3[320*80]; 
	float whg4[320*80]; 
	float whi1[320*80];  
	float whi2[320*80];  
	float whi3[320*80];  
	float whi4[320*80];  
	float who1[320*80];
	float who2[320*80];
	float who3[320*80];
	float who4[320*80];
	/*
	float gradswhf[320*320];
	float gradswhg[320*320]; 
	float gradswhi[320*320];  
	float gradswho[320*320];
	*/
	float whf21[320*80];
	float whf22[320*80];
	float whf23[320*80];
	float whf24[320*80];
	float whg21[320*80]; 
	float whg22[320*80]; 
	float whg23[320*80]; 
	float whg24[320*80]; 
	float whi21[320*80];  
	float whi22[320*80];  
	float whi23[320*80];  
	float whi24[320*80];  
	float who21[320*80];
	float who22[320*80];
	float who23[320*80];
	float who24[320*80];
	/*
	float gradswhf2[320*320];
	float gradswhg2[320*320]; 
	float gradswhi2[320*320];  
	float gradswho2[320*320];
	*/

	float bf1[80];
	float bf2[80];
	float bf3[80];
	float bf4[80];
	float bg1[80]; 
	float bg2[80]; 
	float bg3[80]; 
	float bg4[80]; 
	float bi1[80];  
	float bi2[80];  
	float bi3[80];  
	float bi4[80];  
	float bo1[80];
	float bo2[80];
	float bo3[80];
	float bo4[80];
	/*
	float gradsbf[320];
	float gradsbg[320]; 
	float gradsbi[320];  
	float gradsbo[320];
	*/
	float bf21[80];
	float bf22[80];
	float bf23[80];
	float bf24[80];
	float bg21[80]; 
	float bg22[80]; 
	float bg23[80]; 
	float bg24[80]; 
	float bi21[80];  
	float bi22[80];  
	float bi23[80];  
	float bi24[80];  
	float bo21[80];
	float bo22[80];
	float bo23[80];
	float bo24[80];
	/*
	float gradsbf2[320];
	float gradsbg2[320]; 
	float gradsbi2[320];  
	float gradsbo2[320];
	*/


	float h_wxf1[320*80];
	float h_wxf2[320*80];
	float h_wxf3[320*80];
	float h_wxf4[320*80];
	float h_wxg1[320*80];
	float h_wxg2[320*80];
	float h_wxg3[320*80];
	float h_wxg4[320*80];
	float h_wxi1[320*80];
	float h_wxi2[320*80];
	float h_wxi3[320*80];
	float h_wxi4[320*80];
	float h_wxo1[320*80];
	float h_wxo2[320*80];
	float h_wxo3[320*80];
	float h_wxo4[320*80];
	float h_whf1[320*80];
	float h_whf2[320*80];
	float h_whf3[320*80];
	float h_whf4[320*80];
	float h_whg1[320*80];
	float h_whg2[320*80];
	float h_whg3[320*80];
	float h_whg4[320*80];
	float h_whi1[320*80];
	float h_whi2[320*80];
	float h_whi3[320*80];
	float h_whi4[320*80];
	float h_who1[320*80];
	float h_who2[320*80];
	float h_who3[320*80];
	float h_who4[320*80];
	float h_bf1[80];
	float h_bf2[80];
	float h_bf3[80];
	float h_bf4[80];
	float h_bg1[80];
	float h_bg2[80];
	float h_bg3[80];
	float h_bg4[80];
	float h_bi1[80];
	float h_bi2[80];
	float h_bi3[80];
	float h_bi4[80];
	float h_bo1[80];
	float h_bo2[80];
	float h_bo3[80];
	float h_bo4[80];
	float h_wxf21[320*80];
	float h_wxf22[320*80];
	float h_wxf23[320*80];
	float h_wxf24[320*80];
	float h_wxg21[320*80];
	float h_wxg22[320*80];
	float h_wxg23[320*80];
	float h_wxg24[320*80];
	float h_wxi21[320*80];
	float h_wxi22[320*80];
	float h_wxi23[320*80];
	float h_wxi24[320*80];
	float h_wxo21[320*80];
	float h_wxo22[320*80];
	float h_wxo23[320*80];
	float h_wxo24[320*80];
	float h_whf21[320*80];
	float h_whf22[320*80];
	float h_whf23[320*80];
	float h_whf24[320*80];
	float h_whg21[320*80];
	float h_whg22[320*80];
	float h_whg23[320*80];
	float h_whg24[320*80];
	float h_whi21[320*80];
	float h_whi22[320*80];
	float h_whi23[320*80];
	float h_whi24[320*80];
	float h_who21[320*80];
	float h_who22[320*80];
	float h_who23[320*80];
	float h_who24[320*80];
	float h_bf21[80];
	float h_bf22[80];
	float h_bf23[80];
	float h_bf24[80];
	float h_bg21[80];
	float h_bg22[80];
	float h_bg23[80];
	float h_bg24[80];
	float h_bi21[80];
	float h_bi22[80];
	float h_bi23[80];
	float h_bi24[80];
	float h_bo21[80];
	float h_bo22[80];
	float h_bo23[80];
	float h_bo24[80];

	// ------------------------------------------
	// END
	// ------------------------------------------


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

		for(int i = 0; i < 320*80; ++i)
		{
			wxf1[i] = rand(mt)/1000.00;
			wxf2[i] = rand(mt)/1000.00;
			wxf3[i] = rand(mt)/1000.00;
			wxf4[i] = rand(mt)/1000.00;

			wxg1[i] = rand(mt)/1000.00;
			wxg2[i] = rand(mt)/1000.00;
			wxg3[i] = rand(mt)/1000.00;
			wxg4[i] = rand(mt)/1000.00;

			wxi1[i] = rand(mt)/1000.00;
			wxi2[i] = rand(mt)/1000.00;
			wxi3[i] = rand(mt)/1000.00;
			wxi4[i] = rand(mt)/1000.00;

			wxo1[i] = rand(mt)/1000.00;
			wxo2[i] = rand(mt)/1000.00;
			wxo3[i] = rand(mt)/1000.00;
			wxo4[i] = rand(mt)/1000.00;

			whf1[i] = rand(mt)/1000.00;
			whf2[i] = rand(mt)/1000.00;
			whf3[i] = rand(mt)/1000.00;
			whf4[i] = rand(mt)/1000.00;

			whg1[i] = rand(mt)/1000.00;
			whg2[i] = rand(mt)/1000.00;
			whg3[i] = rand(mt)/1000.00;
			whg4[i] = rand(mt)/1000.00;

			whi1[i] = rand(mt)/1000.00;
			whi2[i] = rand(mt)/1000.00;
			whi3[i] = rand(mt)/1000.00;
			whi4[i] = rand(mt)/1000.00;

			who1[i] = rand(mt)/1000.00;
			who2[i] = rand(mt)/1000.00;
			who3[i] = rand(mt)/1000.00;
			who4[i] = rand(mt)/1000.00;

			wxf21[i] = rand(mt)/1000.00;
			wxf22[i] = rand(mt)/1000.00;
			wxf23[i] = rand(mt)/1000.00;
			wxf24[i] = rand(mt)/1000.00;

			wxg21[i] = rand(mt)/1000.00;
			wxg22[i] = rand(mt)/1000.00;
			wxg23[i] = rand(mt)/1000.00;
			wxg24[i] = rand(mt)/1000.00;

			wxi21[i] = rand(mt)/1000.00;
			wxi22[i] = rand(mt)/1000.00;
			wxi23[i] = rand(mt)/1000.00;
			wxi24[i] = rand(mt)/1000.00;

			wxo21[i] = rand(mt)/1000.00;
			wxo22[i] = rand(mt)/1000.00;
			wxo23[i] = rand(mt)/1000.00;
			wxo24[i] = rand(mt)/1000.00;

			whf21[i] = rand(mt)/1000.00;
			whf22[i] = rand(mt)/1000.00;
			whf23[i] = rand(mt)/1000.00;
			whf24[i] = rand(mt)/1000.00;

			whg21[i] = rand(mt)/1000.00;
			whg22[i] = rand(mt)/1000.00;
			whg23[i] = rand(mt)/1000.00;
			whg24[i] = rand(mt)/1000.00;

			whi21[i] = rand(mt)/1000.00;
			whi22[i] = rand(mt)/1000.00;
			whi23[i] = rand(mt)/1000.00;
			whi24[i] = rand(mt)/1000.00;

			who21[i] = rand(mt)/1000.00;
			who22[i] = rand(mt)/1000.00;
			who23[i] = rand(mt)/1000.00;
			who24[i] = rand(mt)/1000.00;

			h_wxf1[i] = 0;
			h_wxf2[i] = 0;
			h_wxf3[i] = 0;
			h_wxf4[i] = 0;

			h_wxg1[i] = 0;
			h_wxg2[i] = 0;
			h_wxg3[i] = 0;
			h_wxg4[i] = 0;

			h_wxi1[i] = 0;
			h_wxi2[i] = 0;
			h_wxi3[i] = 0;
			h_wxi4[i] = 0;

			h_wxo1[i] = 0;
			h_wxo2[i] = 0;
			h_wxo3[i] = 0;
			h_wxo4[i] = 0;

			h_wxf21[i] = 0;
			h_wxf22[i] = 0;
			h_wxf23[i] = 0;
			h_wxf24[i] = 0;

			h_wxg21[i] = 0;
			h_wxg22[i] = 0;
			h_wxg23[i] = 0;
			h_wxg24[i] = 0;

			h_wxi21[i] = 0;
			h_wxi22[i] = 0;
			h_wxi23[i] = 0;
			h_wxi24[i] = 0;

			h_wxo21[i] = 0;
			h_wxo22[i] = 0;
			h_wxo23[i] = 0;
			h_wxo24[i] = 0;

			h_whf1[i] = 0;
			h_whf2[i] = 0;
			h_whf3[i] = 0;
			h_whf4[i] = 0;

			h_whg1[i] = 0;
			h_whg2[i] = 0;
			h_whg3[i] = 0;
			h_whg4[i] = 0;

			h_whi1[i] = 0;
			h_whi2[i] = 0;
			h_whi3[i] = 0;
			h_whi4[i] = 0;

			h_who1[i] = 0;
			h_who2[i] = 0;
			h_who3[i] = 0;
			h_who4[i] = 0;

			h_whf21[i] = 0;
			h_whf22[i] = 0;
			h_whf23[i] = 0;
			h_whf24[i] = 0;

			h_whg21[i] = 0;
			h_whg22[i] = 0;
			h_whg23[i] = 0;
			h_whg24[i] = 0;

			h_whi21[i] = 0;
			h_whi22[i] = 0;
			h_whi23[i] = 0;
			h_whi24[i] = 0;

			h_who21[i] = 0;
			h_who22[i] = 0;
			h_who23[i] = 0;
			h_who24[i] = 0;


		}


		for(int i = 0; i < 320; ++i)
		{
			bf1[i] = rand(mt)/1000.00;
			bf2[i] = rand(mt)/1000.00;
			bf3[i] = rand(mt)/1000.00;
			bf4[i] = rand(mt)/1000.00;

			bg1[i] = rand(mt)/1000.00;
			bg2[i] = rand(mt)/1000.00;
			bg3[i] = rand(mt)/1000.00;
			bg4[i] = rand(mt)/1000.00;

			bi1[i] = rand(mt)/1000.00;
			bi2[i] = rand(mt)/1000.00;
			bi3[i] = rand(mt)/1000.00;
			bi4[i] = rand(mt)/1000.00;

			bo1[i] = rand(mt)/1000.00;
			bo2[i] = rand(mt)/1000.00;
			bo3[i] = rand(mt)/1000.00;
			bo4[i] = rand(mt)/1000.00;

			bf21[i] = rand(mt)/1000.00;
			bf22[i] = rand(mt)/1000.00;
			bf23[i] = rand(mt)/1000.00;
			bf24[i] = rand(mt)/1000.00;

			bg21[i] = rand(mt)/1000.00;
			bg22[i] = rand(mt)/1000.00;
			bg23[i] = rand(mt)/1000.00;
			bg24[i] = rand(mt)/1000.00;

			bi21[i] = rand(mt)/1000.00;
			bi22[i] = rand(mt)/1000.00;
			bi23[i] = rand(mt)/1000.00;
			bi24[i] = rand(mt)/1000.00;

			bo21[i] = rand(mt)/1000.00;
			bo22[i] = rand(mt)/1000.00;
			bo23[i] = rand(mt)/1000.00;
			bo24[i] = rand(mt)/1000.00;

			h_bf1[i] = 0;
			h_bf2[i] = 0;
			h_bf3[i] = 0;
			h_bf4[i] = 0;

			h_bg1[i] = 0;
			h_bg2[i] = 0;
			h_bg3[i] = 0;
			h_bg4[i] = 0;

			h_bi1[i] = 0;
			h_bi2[i] = 0;
			h_bi3[i] = 0;
			h_bi4[i] = 0;

			h_bo1[i] = 0;
			h_bo2[i] = 0;
			h_bo3[i] = 0;
			h_bo4[i] = 0;

			h_bf21[i] = 0;
			h_bf22[i] = 0;
			h_bf23[i] = 0;
			h_bf24[i] = 0;

			h_bg21[i] = 0;
			h_bg22[i] = 0;
			h_bg23[i] = 0;
			h_bg24[i] = 0;

			h_bi21[i] = 0;
			h_bi22[i] = 0;
			h_bi23[i] = 0;
			h_bi24[i] = 0;

			h_bo21[i] = 0;
			h_bo22[i] = 0;
			h_bo23[i] = 0;
			h_bo24[i] = 0;
		}


		/*
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
			bf[i] = rand(mt)/1000.00;
			bg[i] = rand(mt)/1000.00;
			bi[i] = rand(mt)/1000.00;
			bo[i] = rand(mt)/1000.00;
			bf2[i] = rand(mt)/1000.00;
			bg2[i] = rand(mt)/1000.00;
			bi2[i] = rand(mt)/1000.00;
			bo2[i] = rand(mt)/1000.00;

			bf[i] = 0;
			bg[i] = 0;
			bi[i] = 0;
			bo[i] = 0;
			bf2[i] = 0;
			bg2[i] = 0;
			bi2[i] = 0;
			bo2[i] = 0;

		}
		*/






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

	void predict1(float *x, float *y)
	{
		
		//std::cout << sizeof(x) << std::endl;
		//float ay[975*320];

		a.forward(x, y, paramsw1, paramsb1); //convolutional
		//std::cout << sizeof(x) << std::endl;
					
		for(int i = 0; i < 919; i++)
		{
			//std::cout << y[i];
		}
		//float bx[975*320];
		//*bx = *ay;	
			
		//float by[975*320];

		b.forward(y, x); //relu

		//float cx[975*320];
		//*cx = *by; 

		//float cy[75*320];
		
		
		c.forward(x,y); //MaxPooling
		
		//float dx[75*320];
		//*dx = *cy;

		//d.forward(y, x); //LSTM
	

		d.forward(y, x, 75*320, 0.2, true); // dropout

		//d.forward(y, x, float* h_prev, float* c_prev, float* h_next, float* c_next, float* lstmwf, float* lstmwg, float* lstmwi, float* lstmwo, float* bf, float* bg, float* bi, float* bo)
		for(int i = 0; i < 75*320; ++i)
		{
			//x[i] += 0.000001;
		}
		
		//relatevly high frequency of zero in input(x)
		//e.forward(x, y, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf2, bg2, bi2, bo2); //BiLSTM
		
	}
	void predict2(float *x, float *y)
	{
		for(int i = 0; i < 75*640; ++i)
		{
			if(isnan(y[i]) || isinf(y[i]))
			{
				//printf("forward_error"); 
			}
		}

		f.forward(x, y, 75*640, 0.5, true); // dropout

		//float dy[919];
		g.forward(y, x, paramsw2, paramsb2); //full-connected

		/*
		for(int i = 0; i < 925; ++i)
		{
			if(isnan(y[i]) || isinf(y[i]))
			{
				printf("forward_error"); 
			}
		}
		*/
		h.forward(x, y); // relu2


		i.forward(y, x, paramsw3, paramsb3); //full-connected2
		//float ex[919];
		//*ex = *dy;
		/*
		for(int i = 0; i < 919; ++i)
		{
			if(isnan(y[i]) || isinf(y[i]))
			{
				printf("forward_error"); 
			}
		}
		*/


		j.forward(x, y);


	}


	void gradient1(float* dout, float* y)
	{
		//backward
		j.backward(dout, y); //sigmoid

		i.backward(dout, paramsw3, gradsw3, gradsb3); //full_connected2

		h.backward(dout); //relu2

		g.backward(dout, paramsw2, gradsw2, gradsb2); //full_connected
		f.backward(dout, 75*640); //dropout


			
		//e.backward(dout, wxf, wxg, wxi, wxo, whf, whg, whi, who, gradswxf, gradswxg, gradswxi, gradswxo, gradswhf, gradswhg, gradswhi, gradswho, gradsbf, gradsbg, gradsbi, gradsbo, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, gradswxf2, gradswxg2, gradswxi2, gradswxo2, gradswhf2, gradswhg2, gradswhi2, gradswho2, gradsbf2, gradsbg2, gradsbi2, gradsbo2); // BiLSTM

	}
	void gradient2(float* dout, float* y)
	{
		
		for(int i = 0; i < 50; i++)
		{
			//dout[i] /= 100;
			//std::cout << " before ";
			//std::cout << dout[i] << " : ";
		}
		

		d.backward(dout, 75*320); //dropout
		for(int i = 0; i < 50; i++)
		{
			if(isnan(dout[i]) || isinf(dout[i]))
			{
				//printf("backward_error"); 
			}
			//std::cout << std::endl << " after ";
			//std::cout << dout[i] << " : ";
			//std::cout << gradswxf_tot[i] << " : ";
			//std::cout << wxf[i] << " : ";
		}
		

		c.backward(dout); //maxpooling

		b.backward(dout); //relu

		//std::cout << endl;
		a.backward(dout, paramsw1, gradsw1, gradsb1); //convolution

	}
};

cl::Program
load_cl2_binary(cl::Program::Binaries, cl::Device device, cl::Context context);


int main(int argc, char **argv)
{

	chrono::system_clock::time_point start, end, start_forward, end_forward, start_backward, end_backward;

        auto binaryFile = argv[1];

        cl_int err = CL_SUCCESS;

        //OPENCL HOST CODE AREA START

        // get_xil_devices() is a utility API which will find the Xilinx
        // platforms and will return list of devices connected to Xilinx platform
        auto devices = xcl::get_xil_devices();
        auto device_count = devices.size();
        //auto device_count = 2;




	std::ofstream outputfile("output.txt");
	std::ofstream lossfile("loss.txt");

	//int DATA_SIZE = 975*320;	
	//size_t size_bytes_datax = sizeof(float) * (75*320);
	size_t size_bytes_datax = sizeof(float) * (75*80);
	size_t size_bytes_doutk = sizeof(float) * (75*640);
	size_t size_bytes_dout = sizeof(float) * (975*320);
	size_t size_bytes_datay = sizeof(float) * (975*640);
	size_t size_bytes_buffer_output = sizeof(float) * (975*320);
	//cl_int err;
	unsigned fileBufSize;

	// ------------------------------------------
	// sending weights and h parameters to kernel
	// ------------------------------------------

	size_t size_bytes_wxf = sizeof(float) * (320*80);
	size_t size_bytes_wxg = sizeof(float) * (320*80);
	size_t size_bytes_wxi = sizeof(float) * (320*80);
	size_t size_bytes_wxo = sizeof(float) * (320*80);
	size_t size_bytes_whf = sizeof(float) * (320*80);
	size_t size_bytes_whg = sizeof(float) * (320*80);
	size_t size_bytes_whi = sizeof(float) * (320*80);
	size_t size_bytes_who = sizeof(float) * (320*80);
	size_t size_bytes_wxf2 = sizeof(float) * (320*80);
	size_t size_bytes_wxg2 = sizeof(float) * (320*80);
	size_t size_bytes_wxi2 = sizeof(float) * (320*80);
	size_t size_bytes_wxo2 = sizeof(float) * (320*80);
	size_t size_bytes_whf2 = sizeof(float) * (320*80);
	size_t size_bytes_whg2 = sizeof(float) * (320*80);
	size_t size_bytes_whi2 = sizeof(float) * (320*80);
	size_t size_bytes_who2 = sizeof(float) * (320*80);
	size_t size_bytes_bf = sizeof(float) * (80);
	size_t size_bytes_bg = sizeof(float) * (80);
	size_t size_bytes_bi = sizeof(float) * (80);
	size_t size_bytes_bo = sizeof(float) * (80);
	size_t size_bytes_bf2 = sizeof(float) * (80);
	size_t size_bytes_bg2 = sizeof(float) * (80);
	size_t size_bytes_bi2 = sizeof(float) * (80);
	size_t size_bytes_bo2 = sizeof(float) * (80);

	size_t size_bytes_h_wxf = sizeof(float) * (320*80);
	size_t size_bytes_h_wxg = sizeof(float) * (320*80);
	size_t size_bytes_h_wxi = sizeof(float) * (320*80);
	size_t size_bytes_h_wxo = sizeof(float) * (320*80);
	size_t size_bytes_h_whf = sizeof(float) * (320*80);
	size_t size_bytes_h_whg = sizeof(float) * (320*80);
	size_t size_bytes_h_whi = sizeof(float) * (320*80);
	size_t size_bytes_h_who = sizeof(float) * (320*80);
	size_t size_bytes_h_wxf2 = sizeof(float) * (320*80);
	size_t size_bytes_h_wxg2 = sizeof(float) * (320*80);
	size_t size_bytes_h_wxi2 = sizeof(float) * (320*80);
	size_t size_bytes_h_wxo2 = sizeof(float) * (320*80);
	size_t size_bytes_h_whf2 = sizeof(float) * (320*80);
	size_t size_bytes_h_whg2 = sizeof(float) * (320*80);
	size_t size_bytes_h_whi2 = sizeof(float) * (320*80);
	size_t size_bytes_h_who2 = sizeof(float) * (320*80);
	size_t size_bytes_h_bf = sizeof(float) * (80);
	size_t size_bytes_h_bg = sizeof(float) * (80);
	size_t size_bytes_h_bi = sizeof(float) * (80);
	size_t size_bytes_h_bo = sizeof(float) * (80);
	size_t size_bytes_h_bf2 = sizeof(float) * (80);
	size_t size_bytes_h_bg2 = sizeof(float) * (80);
	size_t size_bytes_h_bi2 = sizeof(float) * (80);
	size_t size_bytes_h_bo2 = sizeof(float) * (80);


	std::vector<float, aligned_allocator<float>> src_wxf1(320*80);
	std::vector<float, aligned_allocator<float>> src_wxf2(320*80);
	std::vector<float, aligned_allocator<float>> src_wxf3(320*80);
	std::vector<float, aligned_allocator<float>> src_wxf4(320*80);

	std::vector<float, aligned_allocator<float>> src_wxg1(320*80);
	std::vector<float, aligned_allocator<float>> src_wxg2(320*80);
	std::vector<float, aligned_allocator<float>> src_wxg3(320*80);
	std::vector<float, aligned_allocator<float>> src_wxg4(320*80);

	std::vector<float, aligned_allocator<float>> src_wxi1(320*80);
	std::vector<float, aligned_allocator<float>> src_wxi2(320*80);
	std::vector<float, aligned_allocator<float>> src_wxi3(320*80);
	std::vector<float, aligned_allocator<float>> src_wxi4(320*80);

	std::vector<float, aligned_allocator<float>> src_wxo1(320*80);
	std::vector<float, aligned_allocator<float>> src_wxo2(320*80);
	std::vector<float, aligned_allocator<float>> src_wxo3(320*80);
	std::vector<float, aligned_allocator<float>> src_wxo4(320*80);

	std::vector<float, aligned_allocator<float>> src_whf1(320*80);
	std::vector<float, aligned_allocator<float>> src_whf2(320*80);
	std::vector<float, aligned_allocator<float>> src_whf3(320*80);
	std::vector<float, aligned_allocator<float>> src_whf4(320*80);

	std::vector<float, aligned_allocator<float>> src_whg1(320*80);
	std::vector<float, aligned_allocator<float>> src_whg2(320*80);
	std::vector<float, aligned_allocator<float>> src_whg3(320*80);
	std::vector<float, aligned_allocator<float>> src_whg4(320*80);

	std::vector<float, aligned_allocator<float>> src_whi1(320*80);
	std::vector<float, aligned_allocator<float>> src_whi2(320*80);
	std::vector<float, aligned_allocator<float>> src_whi3(320*80);
	std::vector<float, aligned_allocator<float>> src_whi4(320*80);

	std::vector<float, aligned_allocator<float>> src_who1(320*80);
	std::vector<float, aligned_allocator<float>> src_who2(320*80);
	std::vector<float, aligned_allocator<float>> src_who3(320*80);
	std::vector<float, aligned_allocator<float>> src_who4(320*80);

	std::vector<float, aligned_allocator<float>> src_wxf21(320*80);
	std::vector<float, aligned_allocator<float>> src_wxf22(320*80);
	std::vector<float, aligned_allocator<float>> src_wxf23(320*80);
	std::vector<float, aligned_allocator<float>> src_wxf24(320*80);

	std::vector<float, aligned_allocator<float>> src_wxg21(320*80);
	std::vector<float, aligned_allocator<float>> src_wxg22(320*80);
	std::vector<float, aligned_allocator<float>> src_wxg23(320*80);
	std::vector<float, aligned_allocator<float>> src_wxg24(320*80);

	std::vector<float, aligned_allocator<float>> src_wxi21(320*80);
	std::vector<float, aligned_allocator<float>> src_wxi22(320*80);
	std::vector<float, aligned_allocator<float>> src_wxi23(320*80);
	std::vector<float, aligned_allocator<float>> src_wxi24(320*80);

	std::vector<float, aligned_allocator<float>> src_wxo21(320*80);
	std::vector<float, aligned_allocator<float>> src_wxo22(320*80);
	std::vector<float, aligned_allocator<float>> src_wxo23(320*80);
	std::vector<float, aligned_allocator<float>> src_wxo24(320*80);

	std::vector<float, aligned_allocator<float>> src_whf21(320*80);
	std::vector<float, aligned_allocator<float>> src_whf22(320*80);
	std::vector<float, aligned_allocator<float>> src_whf23(320*80);
	std::vector<float, aligned_allocator<float>> src_whf24(320*80);

	std::vector<float, aligned_allocator<float>> src_whg21(320*80);
	std::vector<float, aligned_allocator<float>> src_whg22(320*80);
	std::vector<float, aligned_allocator<float>> src_whg23(320*80);
	std::vector<float, aligned_allocator<float>> src_whg24(320*80);

	std::vector<float, aligned_allocator<float>> src_whi21(320*80);
	std::vector<float, aligned_allocator<float>> src_whi22(320*80);
	std::vector<float, aligned_allocator<float>> src_whi23(320*80);
	std::vector<float, aligned_allocator<float>> src_whi24(320*80);

	std::vector<float, aligned_allocator<float>> src_who21(320*80);
	std::vector<float, aligned_allocator<float>> src_who22(320*80);
	std::vector<float, aligned_allocator<float>> src_who23(320*80);
	std::vector<float, aligned_allocator<float>> src_who24(320*80);

	std::vector<float, aligned_allocator<float>> src_bf1(320*80);
	std::vector<float, aligned_allocator<float>> src_bf2(320*80);
	std::vector<float, aligned_allocator<float>> src_bf3(320*80);
	std::vector<float, aligned_allocator<float>> src_bf4(320*80);

	std::vector<float, aligned_allocator<float>> src_bg1(320*80);
	std::vector<float, aligned_allocator<float>> src_bg2(320*80);
	std::vector<float, aligned_allocator<float>> src_bg3(320*80);
	std::vector<float, aligned_allocator<float>> src_bg4(320*80);

	std::vector<float, aligned_allocator<float>> src_bi1(320*80);
	std::vector<float, aligned_allocator<float>> src_bi2(320*80);
	std::vector<float, aligned_allocator<float>> src_bi3(320*80);
	std::vector<float, aligned_allocator<float>> src_bi4(320*80);

	std::vector<float, aligned_allocator<float>> src_bo1(320*80);
	std::vector<float, aligned_allocator<float>> src_bo2(320*80);
	std::vector<float, aligned_allocator<float>> src_bo3(320*80);
	std::vector<float, aligned_allocator<float>> src_bo4(320*80);

	std::vector<float, aligned_allocator<float>> src_bf21(320*80);
	std::vector<float, aligned_allocator<float>> src_bf22(320*80);
	std::vector<float, aligned_allocator<float>> src_bf23(320*80);
	std::vector<float, aligned_allocator<float>> src_bf24(320*80);

	std::vector<float, aligned_allocator<float>> src_bg21(320*80);
	std::vector<float, aligned_allocator<float>> src_bg22(320*80);
	std::vector<float, aligned_allocator<float>> src_bg23(320*80);
	std::vector<float, aligned_allocator<float>> src_bg24(320*80);

	std::vector<float, aligned_allocator<float>> src_bi21(320*80);
	std::vector<float, aligned_allocator<float>> src_bi22(320*80);
	std::vector<float, aligned_allocator<float>> src_bi23(320*80);
	std::vector<float, aligned_allocator<float>> src_bi24(320*80);

	std::vector<float, aligned_allocator<float>> src_bo21(320*80);
	std::vector<float, aligned_allocator<float>> src_bo22(320*80);
	std::vector<float, aligned_allocator<float>> src_bo23(320*80);
	std::vector<float, aligned_allocator<float>> src_bo24(320*80);

	std::vector<float, aligned_allocator<float>> src_h_wxf1(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxf2(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxf3(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxf4(320*80);

	std::vector<float, aligned_allocator<float>> src_h_wxg1(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxg2(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxg3(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxg4(320*80);

	std::vector<float, aligned_allocator<float>> src_h_wxi1(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxi2(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxi3(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxi4(320*80);

	std::vector<float, aligned_allocator<float>> src_h_wxo1(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxo2(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxo3(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxo4(320*80);

	std::vector<float, aligned_allocator<float>> src_h_whf1(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whf2(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whf3(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whf4(320*80);

	std::vector<float, aligned_allocator<float>> src_h_whg1(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whg2(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whg3(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whg4(320*80);

	std::vector<float, aligned_allocator<float>> src_h_whi1(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whi2(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whi3(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whi4(320*80);

	std::vector<float, aligned_allocator<float>> src_h_who1(320*80);
	std::vector<float, aligned_allocator<float>> src_h_who2(320*80);
	std::vector<float, aligned_allocator<float>> src_h_who3(320*80);
	std::vector<float, aligned_allocator<float>> src_h_who4(320*80);

	std::vector<float, aligned_allocator<float>> src_h_wxf21(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxf22(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxf23(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxf24(320*80);

	std::vector<float, aligned_allocator<float>> src_h_wxg21(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxg22(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxg23(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxg24(320*80);

	std::vector<float, aligned_allocator<float>> src_h_wxi21(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxi22(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxi23(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxi24(320*80);

	std::vector<float, aligned_allocator<float>> src_h_wxo21(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxo22(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxo23(320*80);
	std::vector<float, aligned_allocator<float>> src_h_wxo24(320*80);

	std::vector<float, aligned_allocator<float>> src_h_whf21(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whf22(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whf23(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whf24(320*80);

	std::vector<float, aligned_allocator<float>> src_h_whg21(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whg22(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whg23(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whg24(320*80);

	std::vector<float, aligned_allocator<float>> src_h_whi21(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whi22(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whi23(320*80);
	std::vector<float, aligned_allocator<float>> src_h_whi24(320*80);

	std::vector<float, aligned_allocator<float>> src_h_who21(320*80);
	std::vector<float, aligned_allocator<float>> src_h_who22(320*80);
	std::vector<float, aligned_allocator<float>> src_h_who23(320*80);
	std::vector<float, aligned_allocator<float>> src_h_who24(320*80);

	std::vector<float, aligned_allocator<float>> src_h_bf1(80);
	std::vector<float, aligned_allocator<float>> src_h_bf2(80);
	std::vector<float, aligned_allocator<float>> src_h_bf3(80);
	std::vector<float, aligned_allocator<float>> src_h_bf4(80);

	std::vector<float, aligned_allocator<float>> src_h_bg1(80);
	std::vector<float, aligned_allocator<float>> src_h_bg2(80);
	std::vector<float, aligned_allocator<float>> src_h_bg3(80);
	std::vector<float, aligned_allocator<float>> src_h_bg4(80);

	std::vector<float, aligned_allocator<float>> src_h_bi1(80);
	std::vector<float, aligned_allocator<float>> src_h_bi2(80);
	std::vector<float, aligned_allocator<float>> src_h_bi3(80);
	std::vector<float, aligned_allocator<float>> src_h_bi4(80);

	std::vector<float, aligned_allocator<float>> src_h_bo1(80);
	std::vector<float, aligned_allocator<float>> src_h_bo2(80);
	std::vector<float, aligned_allocator<float>> src_h_bo3(80);
	std::vector<float, aligned_allocator<float>> src_h_bo4(80);

	std::vector<float, aligned_allocator<float>> src_h_bf21(80);
	std::vector<float, aligned_allocator<float>> src_h_bf22(80);
	std::vector<float, aligned_allocator<float>> src_h_bf23(80);
	std::vector<float, aligned_allocator<float>> src_h_bf24(80);

	std::vector<float, aligned_allocator<float>> src_h_bg21(80);
	std::vector<float, aligned_allocator<float>> src_h_bg22(80);
	std::vector<float, aligned_allocator<float>> src_h_bg23(80);
	std::vector<float, aligned_allocator<float>> src_h_bg24(80);

	std::vector<float, aligned_allocator<float>> src_h_bi21(80);
	std::vector<float, aligned_allocator<float>> src_h_bi22(80);
	std::vector<float, aligned_allocator<float>> src_h_bi23(80);
	std::vector<float, aligned_allocator<float>> src_h_bi24(80);

	std::vector<float, aligned_allocator<float>> src_h_bo21(80);
	std::vector<float, aligned_allocator<float>> src_h_bo22(80);
	std::vector<float, aligned_allocator<float>> src_h_bo23(80);
	std::vector<float, aligned_allocator<float>> src_h_bo24(80);

	// ------------------------------------------
	// END 
	// ------------------------------------------



	//allocate memory in host
	std::vector<float, aligned_allocator<float>> src_datax(75*320);

	std::vector<float, aligned_allocator<float>> src_datax1(75*80);
	std::vector<float, aligned_allocator<float>> src_datax2(75*80);
	std::vector<float, aligned_allocator<float>> src_datax3(75*80);
	std::vector<float, aligned_allocator<float>> src_datax4(75*80);



	std::vector<float, aligned_allocator<float>> src_datay(975*640);
	std::vector<float, aligned_allocator<float>> src_doutk(75*640);
	std::vector<float, aligned_allocator<float>> src_dout(975*320);
	//std::vector<int, aligned_allocator<int>> src_mode(1);
	std::vector<float, aligned_allocator<float>> src_buffer_output(975*320);
	std::vector<float, aligned_allocator<float>> src_buffer_output_(975*320);



	vector<cl::Context> contexts(device_count);
        vector<cl::Program> programs(device_count);
        vector<cl::Kernel> kerneldl(device_count);
        vector<cl::CommandQueue> q_forward(device_count);
        vector<cl::CommandQueue> q_backward(device_count);
        vector<std::string> device_name(device_count);



	//std::vector<cl::Device> devices = get_devices("Xilinx");
	//devices.resize(1);
	//cl::Device device = devices[0];
	
	//auto devices = xcl::get_xil_devices();
	//auto device = devices[0];
	
	//std::string binaryFile = argv[1];
		




        vector<cl::Buffer> buffer_datax(device_count);
        vector<cl::Buffer> buffer_datay(device_count);
        vector<cl::Buffer> buffer_dout(device_count);
        vector<cl::Buffer> buffer_doutk(device_count);
        vector<cl::Buffer> buffer_result(device_count);
        vector<cl::Program::Binaries> bins(device_count);
        vector<cl::Platform> platform;
        std::vector<unsigned char> fileBuf[device_count];
        OCL_CHECK(err, err = cl::Platform::get(&platform));



	//OPENCL HOST CODE AREA START
	//OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));

	//char* fileBuf = read_binary_file(binaryFile, fileBufSize);
	//cl::Program::Binaries bins{{fileBuf, fileBufSize}};
	//OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));
	//OCL_CHECK(err, cl::Kernel kerneldl(program, "kerneldl", &err));


        cl_context_properties props[3] = {
                CL_CONTEXT_PLATFORM, (cl_context_properties)(platform[0])(), 0};
        std::cout << "Initializing OpenCL objects" << std::endl;
        for (int d = 0; d < (int)device_count; d++) {
                // In this example. We will create a context for each of the devices
                std::cout << "Creating Context[" << d << "]..." << std::endl;
                OCL_CHECK(err,
                         contexts[d] =
                               cl::Context(devices[d], props, NULL, NULL, &err));
                //OCL_CHECK(err,
                        //queues[d] = cl::CommandQueue(
                                //contexts[d], devices[d], CL_QUEUE_PROFILING_ENABLE, &err));
                OCL_CHECK(err,
                        q_forward[d] = cl::CommandQueue(
                                contexts[d], devices[d], CL_QUEUE_PROFILING_ENABLE, &err));
                OCL_CHECK(err,
                        q_backward[d] = cl::CommandQueue(
                                contexts[d], devices[d], CL_QUEUE_PROFILING_ENABLE, &err));
                OCL_CHECK(err,
                        device_name[d] = devices[d].getInfo<CL_DEVICE_NAME>(&err));

                // read_binary_file() ia a utility API which will load the binaryFile
                // and will return pointer to file buffer.
                fileBuf[d] = xcl::read_binary_file(binaryFile);
                bins[d].push_back({fileBuf[d].data(), fileBuf[d].size()});
                programs[d] = load_cl2_binary(bins[d], devices[d], contexts[d]);
                OCL_CHECK(err, kerneldl[d] = cl::Kernel(programs[d], "kerneldl", &err));

        }


	










        vector<cl::Event> events(device_count);









	using namespace std;
	int epochs = 1; 
	float lossval = 0; cnn *z = new cnn(); float loss_avg = 0;
	bcross_entropy loss = bcross_entropy();


	std::ifstream ifs("./weights.txt");
	if(ifs.fail()) {
		std::cerr << "No Weights to Use" << std::endl;
	}else{
		std::cerr << "Weights are Used" << std::endl;
		
		//load_weights(z->paramsw1, z->paramsb1, z->paramsw2, z->paramsb2, z->paramsw3, z->paramsb3, z->wxf, z->wxg, z->wxi, z->wxo, z->whf, z->whg, z->whi, z->who, z->wxf2, z->wxg2, z->wxi2, z->wxo2, z->whf2, z->whg2, z->whi2, z->who2, z->bf, z->bg, z->bi, z->bo, z->bf2, z->bg2, z->bi2, z->bo2, z->h1, z->h2, z->h3, z->h4, z->h5, z->h6, z->h_wxf, z->h_wxg, z->h_wxi, z->h_wxo, z->h_whf, z->h_whg, z->h_whi, z->h_who, z->h_wxf2, z->h_wxg2, z->h_wxi2, z->h_wxo2, z->h_whf2, z->h_whg2, z->h_whi2, z->h_who2, z->h_bf, z->h_bg, z->h_bi, z->h_bo, z->h_bf2, z->h_bg2, z->h_bi2, z->h_bo2);

	}




	for(int i = 0; i < 320*80; ++i)
	{
		/*
		src_wxf1[i] = z->wxf[i];
		src_wxf2[i] = z->wxf[320*80+i];
		src_wxf3[i] = z->wxf[2*320*80+i];
		src_wxf4[i] = z->wxf[3*320*80+i];

		src_wxg1[i] = z->wxg[i];
		src_wxg2[i] = z->wxg[320*80+i];
		src_wxg3[i] = z->wxg[2*320*80+i];
		src_wxg4[i] = z->wxg[3*320*80+i];

		src_wxi1[i] = z->wxi[i];
		src_wxi2[i] = z->wxi[320*80+i];
		src_wxi3[i] = z->wxi[2*320*80+i];
		src_wxi4[i] = z->wxi[3*320*80+i];

		src_wxo1[i] = z->wxo[i];
		src_wxo2[i] = z->wxo[320*80+i];
		src_wxo3[i] = z->wxo[2*320*80+i];
		src_wxo4[i] = z->wxo[3*320*80+i];

		src_whf1[i] = z->whf[i];
		src_whf2[i] = z->whf[320*80+i];
		src_whf3[i] = z->whf[2*320*80+i];
		src_whf4[i] = z->whf[3*320*80+i];

		src_whg1[i] = z->whg[i];
		src_whg2[i] = z->whg[320*80+i];
		src_whg3[i] = z->whg[2*320*80+i];
		src_whg4[i] = z->whg[3*320*80+i];

		src_whi1[i] = z->whi[i];
		src_whi2[i] = z->whi[320*80+i];
		src_whi3[i] = z->whi[2*320*80+i];
		src_whi4[i] = z->whi[3*320*80+i];

		src_who1[i] = z->who[i];
		src_who2[i] = z->who[320*80+i];
		src_who3[i] = z->who[2*320*80+i];
		src_who4[i] = z->who[3*320*80+i];

		src_wxf21[i] = z->wxf2[i];
		src_wxf22[i] = z->wxf2[320*80+i];
		src_wxf23[i] = z->wxf2[2*320*80+i];
		src_wxf24[i] = z->wxf2[3*320*80+i];

		src_wxg21[i] = z->wxg2[i];
		src_wxg22[i] = z->wxg2[320*80+i];
		src_wxg23[i] = z->wxg2[2*320*80+i];
		src_wxg24[i] = z->wxg2[3*320*80+i];

		src_wxi21[i] = z->wxi2[i];
		src_wxi22[i] = z->wxi2[320*80+i];
		src_wxi23[i] = z->wxi2[2*320*80+i];
		src_wxi24[i] = z->wxi2[3*320*80+i];

		src_wxo21[i] = z->wxo2[i];
		src_wxo22[i] = z->wxo2[320*80+i];
		src_wxo23[i] = z->wxo2[2*320*80+i];
		src_wxo24[i] = z->wxo2[3*320*80+i];

		src_whf21[i] = z->whf2[i];
		src_whf22[i] = z->whf2[320*80+i];
		src_whf23[i] = z->whf2[2*320*80+i];
		src_whf24[i] = z->whf2[3*320*80+i];

		src_whg21[i] = z->whg2[i];
		src_whg22[i] = z->whg2[320*80+i];
		src_whg23[i] = z->whg2[2*320*80+i];
		src_whg24[i] = z->whg2[3*320*80+i];

		src_whi21[i] = z->whi2[i];
		src_whi22[i] = z->whi2[320*80+i];
		src_whi23[i] = z->whi2[2*320*80+i];
		src_whi24[i] = z->whi2[3*320*80+i];

		src_who21[i] = z->who2[i];
		src_who22[i] = z->who2[320*80+i];
		src_who23[i] = z->who2[2*320*80+i];
		src_who24[i] = z->who2[3*320*80+i];

		src_h_wxf1[i] = z->h_wxf[i];
		src_h_wxf2[i] = z->h_wxf[320*80+i];
		src_h_wxf3[i] = z->h_wxf[2*320*80+i];
		src_h_wxf4[i] = z->h_wxf[3*320*80+i];

		src_h_wxg1[i] = z->h_wxg[i];
		src_h_wxg2[i] = z->h_wxg[320*80+i];
		src_h_wxg3[i] = z->h_wxg[2*320*80+i];
		src_h_wxg4[i] = z->h_wxg[3*320*80+i];

		src_h_wxi1[i] = z->h_wxi[i];
		src_h_wxi2[i] = z->h_wxi[320*80+i];
		src_h_wxi3[i] = z->h_wxi[2*320*80+i];
		src_h_wxi4[i] = z->h_wxi[3*320*80+i];

		src_h_wxo1[i] = z->h_wxo[i];
		src_h_wxo2[i] = z->h_wxo[320*80+i];
		src_h_wxo3[i] = z->h_wxo[2*320*80+i];
		src_h_wxo4[i] = z->h_wxo[3*320*80+i];

		src_h_whf1[i] = z->h_whf[i];
		src_h_whf2[i] = z->h_whf[320*80+i];
		src_h_whf3[i] = z->h_whf[2*320*80+i];
		src_h_whf4[i] = z->h_whf[3*320*80+i];

		src_h_whg1[i] = z->h_whg[i];
		src_h_whg2[i] = z->h_whg[320*80+i];
		src_h_whg3[i] = z->h_whg[2*320*80+i];
		src_h_whg4[i] = z->h_whg[3*320*80+i];

		src_h_whi1[i] = z->h_whi[i];
		src_h_whi2[i] = z->h_whi[320*80+i];
		src_h_whi3[i] = z->h_whi[2*320*80+i];
		src_h_whi4[i] = z->h_whi[3*320*80+i];

		src_h_who1[i] = z->h_who[i];
		src_h_who2[i] = z->h_who[320*80+i];
		src_h_who3[i] = z->h_who[2*320*80+i];
		src_h_who4[i] = z->h_who[3*320*80+i];

		src_h_wxf21[i] = z->h_wxf2[i];
		src_h_wxf22[i] = z->h_wxf2[320*80+i];
		src_h_wxf23[i] = z->h_wxf2[2*320*80+i];
		src_h_wxf24[i] = z->h_wxf2[3*320*80+i];

		src_h_wxg21[i] = z->h_wxg2[i];
		src_h_wxg22[i] = z->h_wxg2[320*80+i];
		src_h_wxg23[i] = z->h_wxg2[2*320*80+i];
		src_h_wxg24[i] = z->h_wxg2[3*320*80+i];

		src_h_wxi21[i] = z->h_wxi2[i];
		src_h_wxi22[i] = z->h_wxi2[320*80+i];
		src_h_wxi23[i] = z->h_wxi2[2*320*80+i];
		src_h_wxi24[i] = z->h_wxi2[3*320*80+i];

		src_h_wxo21[i] = z->h_wxo2[i];
		src_h_wxo22[i] = z->h_wxo2[320*80+i];
		src_h_wxo23[i] = z->h_wxo2[2*320*80+i];
		src_h_wxo24[i] = z->h_wxo2[3*320*80+i];

		src_h_whf21[i] = z->h_whf2[i];
		src_h_whf22[i] = z->h_whf2[320*80+i];
		src_h_whf23[i] = z->h_whf2[2*320*80+i];
		src_h_whf24[i] = z->h_whf2[3*320*80+i];

		src_h_whg21[i] = z->h_whg2[i];
		src_h_whg22[i] = z->h_whg2[320*80+i];
		src_h_whg23[i] = z->h_whg2[2*320*80+i];
		src_h_whg24[i] = z->h_whg2[3*320*80+i];

		src_h_whi21[i] = z->h_whi2[i];
		src_h_whi22[i] = z->h_whi2[320*80+i];
		src_h_whi23[i] = z->h_whi2[2*320*80+i];
		src_h_whi24[i] = z->h_whi2[3*320*80+i];

		src_h_who21[i] = z->h_who2[i];
		src_h_who22[i] = z->h_who2[320*80+i];
		src_h_who23[i] = z->h_who2[2*320*80+i];
		src_h_who24[i] = z->h_who2[3*320*80+i];
		*/


		src_wxf1[i] = z->wxf1[i];
		src_wxf2[i] = z->wxf2[i];
		src_wxf3[i] = z->wxf3[i];
		src_wxf4[i] = z->wxf4[i];

		src_wxg1[i] = z->wxg1[i];
		src_wxg2[i] = z->wxg2[i];
		src_wxg3[i] = z->wxg3[i];
		src_wxg4[i] = z->wxg4[i];

		src_wxi1[i] = z->wxi1[i];
		src_wxi2[i] = z->wxi2[i];
		src_wxi3[i] = z->wxi3[i];
		src_wxi4[i] = z->wxi4[i];

		src_wxo1[i] = z->wxo1[i];
		src_wxo2[i] = z->wxo2[i];
		src_wxo3[i] = z->wxo3[i];
		src_wxo4[i] = z->wxo4[i];

		src_whf1[i] = z->whf1[i];
		src_whf2[i] = z->whf2[i];
		src_whf3[i] = z->whf3[i];
		src_whf4[i] = z->whf4[i];

		src_whg1[i] = z->whg1[i];
		src_whg2[i] = z->whg2[i];
		src_whg3[i] = z->whg3[i];
		src_whg4[i] = z->whg4[i];

		src_whi1[i] = z->whi1[i];
		src_whi2[i] = z->whi2[i];
		src_whi3[i] = z->whi3[i];
		src_whi4[i] = z->whi4[i];

		src_who1[i] = z->who1[i];
		src_who2[i] = z->who2[i];
		src_who3[i] = z->who3[i];
		src_who4[i] = z->who4[i];

		src_wxf21[i] = z->wxf21[i];
		src_wxf22[i] = z->wxf22[i];
		src_wxf23[i] = z->wxf23[i];
		src_wxf24[i] = z->wxf24[i];

		src_wxg21[i] = z->wxg21[i];
		src_wxg22[i] = z->wxg22[i];
		src_wxg23[i] = z->wxg23[i];
		src_wxg24[i] = z->wxg24[i];

		src_wxi21[i] = z->wxi21[i];
		src_wxi22[i] = z->wxi22[i];
		src_wxi23[i] = z->wxi23[i];
		src_wxi24[i] = z->wxi24[i];

		src_wxo21[i] = z->wxo21[i];
		src_wxo22[i] = z->wxo22[i];
		src_wxo23[i] = z->wxo23[i];
		src_wxo24[i] = z->wxo24[i];

		src_whf21[i] = z->whf21[i];
		src_whf22[i] = z->whf22[i];
		src_whf23[i] = z->whf23[i];
		src_whf24[i] = z->whf24[i];

		src_whg21[i] = z->whg21[i];
		src_whg22[i] = z->whg22[i];
		src_whg23[i] = z->whg23[i];
		src_whg24[i] = z->whg24[i];

		src_whi21[i] = z->whi21[i];
		src_whi22[i] = z->whi22[i];
		src_whi23[i] = z->whi23[i];
		src_whi24[i] = z->whi24[i];

		src_who21[i] = z->who21[i];
		src_who22[i] = z->who22[i];
		src_who23[i] = z->who23[i];
		src_who24[i] = z->who24[i];

		src_h_wxf1[i] = z->h_wxf1[i];
		src_h_wxf2[i] = z->h_wxf2[i];
		src_h_wxf3[i] = z->h_wxf3[i];
		src_h_wxf4[i] = z->h_wxf4[i];

		src_h_wxg1[i] = z->h_wxg1[i];
		src_h_wxg2[i] = z->h_wxg2[i];
		src_h_wxg3[i] = z->h_wxg3[i];
		src_h_wxg4[i] = z->h_wxg4[i];

		src_h_wxi1[i] = z->h_wxi1[i];
		src_h_wxi2[i] = z->h_wxi2[i];
		src_h_wxi3[i] = z->h_wxi3[i];
		src_h_wxi4[i] = z->h_wxi4[i];

		src_h_wxo1[i] = z->h_wxo1[i];
		src_h_wxo2[i] = z->h_wxo2[i];
		src_h_wxo3[i] = z->h_wxo3[i];
		src_h_wxo4[i] = z->h_wxo4[i];

		src_h_whf1[i] = z->h_whf1[i];
		src_h_whf2[i] = z->h_whf2[i];
		src_h_whf3[i] = z->h_whf3[i];
		src_h_whf4[i] = z->h_whf4[i];

		src_h_whg1[i] = z->h_whg1[i];
		src_h_whg2[i] = z->h_whg2[i];
		src_h_whg3[i] = z->h_whg3[i];
		src_h_whg4[i] = z->h_whg4[i];

		src_h_whi1[i] = z->h_whi1[i];
		src_h_whi2[i] = z->h_whi2[i];
		src_h_whi3[i] = z->h_whi3[i];
		src_h_whi4[i] = z->h_whi4[i];

		src_h_who1[i] = z->h_who1[i];
		src_h_who2[i] = z->h_who2[i];
		src_h_who3[i] = z->h_who3[i];
		src_h_who4[i] = z->h_who4[i];

		src_h_wxf21[i] = z->h_wxf21[i];
		src_h_wxf22[i] = z->h_wxf22[i];
		src_h_wxf23[i] = z->h_wxf23[i];
		src_h_wxf24[i] = z->h_wxf24[i];

		src_h_wxg21[i] = z->h_wxg21[i];
		src_h_wxg22[i] = z->h_wxg22[i];
		src_h_wxg23[i] = z->h_wxg23[i];
		src_h_wxg24[i] = z->h_wxg24[i];

		src_h_wxi21[i] = z->h_wxi21[i];
		src_h_wxi22[i] = z->h_wxi22[i];
		src_h_wxi23[i] = z->h_wxi23[i];
		src_h_wxi24[i] = z->h_wxi24[i];

		src_h_wxo21[i] = z->h_wxo21[i];
		src_h_wxo22[i] = z->h_wxo22[i];
		src_h_wxo23[i] = z->h_wxo23[i];
		src_h_wxo24[i] = z->h_wxo24[i];

		src_h_whf21[i] = z->h_whf21[i];
		src_h_whf22[i] = z->h_whf22[i];
		src_h_whf23[i] = z->h_whf23[i];
		src_h_whf24[i] = z->h_whf24[i];

		src_h_whg21[i] = z->h_whg21[i];
		src_h_whg22[i] = z->h_whg22[i];
		src_h_whg23[i] = z->h_whg23[i];
		src_h_whg24[i] = z->h_whg24[i];

		src_h_whi21[i] = z->h_whi21[i];
		src_h_whi22[i] = z->h_whi22[i];
		src_h_whi23[i] = z->h_whi23[i];
		src_h_whi24[i] = z->h_whi24[i];

		src_h_who21[i] = z->h_who21[i];
		src_h_who22[i] = z->h_who22[i];
		src_h_who23[i] = z->h_who23[i];
		src_h_who24[i] = z->h_who24[i];


	}



	for(int i = 0; i < 80; ++i)
	{
		/*
		src_bf1[i] = z->bf[i];
		src_bf2[i] = z->bf[80+i];
		src_bf3[i] = z->bf[2*80+i];
		src_bf4[i] = z->bf[3*80+i];

		src_bg1[i] = z->bg[i];
		src_bg2[i] = z->bg[80+i];
		src_bg3[i] = z->bg[2*80+i];
		src_bg4[i] = z->bg[3*80+i];

		src_bi1[i] = z->bi[i];
		src_bi2[i] = z->bi[80+i];
		src_bi3[i] = z->bi[2*80+i];
		src_bi4[i] = z->bi[3*80+i];

		src_bo1[i] = z->bo[i];
		src_bo2[i] = z->bo[80+i];
		src_bo3[i] = z->bo[2*80+i];
		src_bo4[i] = z->bo[3*80+i];

		src_bf21[i] = z->bf2[i];
		src_bf22[i] = z->bf2[80+i];
		src_bf23[i] = z->bf2[2*80+i];
		src_bf24[i] = z->bf2[3*80+i];

		src_bg21[i] = z->bg2[i];
		src_bg22[i] = z->bg2[80+i];
		src_bg23[i] = z->bg2[2*80+i];
		src_bg24[i] = z->bg2[3*80+i];

		src_bi21[i] = z->bi2[i];
		src_bi22[i] = z->bi2[80+i];
		src_bi23[i] = z->bi2[2*80+i];
		src_bi24[i] = z->bi2[3*80+i];

		src_bo21[i] = z->bo2[i];
		src_bo22[i] = z->bo2[80+i];
		src_bo23[i] = z->bo2[2*80+i];
		src_bo24[i] = z->bo2[3*80+i];


		src_h_bf1[i] = z->h_bf[i];
		src_h_bf2[i] = z->h_bf[80+i];
		src_h_bf3[i] = z->h_bf[2*80+i];
		src_h_bf4[i] = z->h_bf[3*80+i];

		src_h_bg1[i] = z->h_bg[i];
		src_h_bg2[i] = z->h_bg[80+i];
		src_h_bg3[i] = z->h_bg[2*80+i];
		src_h_bg4[i] = z->h_bg[3*80+i];

		src_h_bi1[i] = z->h_bi[i];
		src_h_bi2[i] = z->h_bi[80+i];
		src_h_bi3[i] = z->h_bi[2*80+i];
		src_h_bi4[i] = z->h_bi[3*80+i];

		src_h_bo1[i] = z->h_bo[i];
		src_h_bo2[i] = z->h_bo[80+i];
		src_h_bo3[i] = z->h_bo[2*80+i];
		src_h_bo4[i] = z->h_bo[3*80+i];

		src_h_bf21[i] = z->h_bf2[i];
		src_h_bf22[i] = z->h_bf2[80+i];
		src_h_bf23[i] = z->h_bf2[2*80+i];
		src_h_bf24[i] = z->h_bf2[3*80+i];

		src_h_bg21[i] = z->h_bg2[i];
		src_h_bg22[i] = z->h_bg2[80+i];
		src_h_bg23[i] = z->h_bg2[2*80+i];
		src_h_bg24[i] = z->h_bg2[3*80+i];

		src_h_bi21[i] = z->h_bi2[i];
		src_h_bi22[i] = z->h_bi2[80+i];
		src_h_bi23[i] = z->h_bi2[2*80+i];
		src_h_bi24[i] = z->h_bi2[3*80+i];

		src_h_bo21[i] = z->h_bo2[i];
		src_h_bo22[i] = z->h_bo2[80+i];
		src_h_bo23[i] = z->h_bo2[2*80+i];
		src_h_bo24[i] = z->h_bo2[3*80+i];
		*/

		src_bf1[i] = z->bf1[i];
		src_bf2[i] = z->bf2[i];
		src_bf3[i] = z->bf3[i];
		src_bf4[i] = z->bf4[i];

		src_bg1[i] = z->bg1[i];
		src_bg2[i] = z->bg2[i];
		src_bg3[i] = z->bg3[i];
		src_bg4[i] = z->bg4[i];

		src_bi1[i] = z->bi1[i];
		src_bi2[i] = z->bi2[i];
		src_bi3[i] = z->bi3[i];
		src_bi4[i] = z->bi4[i];

		src_bo1[i] = z->bo1[i];
		src_bo2[i] = z->bo2[i];
		src_bo3[i] = z->bo3[i];
		src_bo4[i] = z->bo4[i];

		src_bf21[i] = z->bf21[i];
		src_bf22[i] = z->bf22[i];
		src_bf23[i] = z->bf23[i];
		src_bf24[i] = z->bf24[i];

		src_bg21[i] = z->bg21[i];
		src_bg22[i] = z->bg22[i];
		src_bg23[i] = z->bg23[i];
		src_bg24[i] = z->bg24[i];

		src_bi21[i] = z->bi21[i];
		src_bi22[i] = z->bi22[i];
		src_bi23[i] = z->bi23[i];
		src_bi24[i] = z->bi24[i];

		src_bo21[i] = z->bo21[i];
		src_bo22[i] = z->bo22[i];
		src_bo23[i] = z->bo23[i];
		src_bo24[i] = z->bo24[i];


		src_h_bf1[i] = z->h_bf1[i];
		src_h_bf2[i] = z->h_bf2[i];
		src_h_bf3[i] = z->h_bf3[i];
		src_h_bf4[i] = z->h_bf4[i];

		src_h_bg1[i] = z->h_bg1[i];
		src_h_bg2[i] = z->h_bg2[i];
		src_h_bg3[i] = z->h_bg3[i];
		src_h_bg4[i] = z->h_bg4[i];

		src_h_bi1[i] = z->h_bi1[i];
		src_h_bi2[i] = z->h_bi2[i];
		src_h_bi3[i] = z->h_bi3[i];
		src_h_bi4[i] = z->h_bi4[i];

		src_h_bo1[i] = z->h_bo1[i];
		src_h_bo2[i] = z->h_bo2[i];
		src_h_bo3[i] = z->h_bo3[i];
		src_h_bo4[i] = z->h_bo4[i];

		src_h_bf21[i] = z->h_bf21[i];
		src_h_bf22[i] = z->h_bf22[i];
		src_h_bf23[i] = z->h_bf23[i];
		src_h_bf24[i] = z->h_bf24[i];

		src_h_bg21[i] = z->h_bg21[i];
		src_h_bg22[i] = z->h_bg22[i];
		src_h_bg23[i] = z->h_bg23[i];
		src_h_bg24[i] = z->h_bg24[i];

		src_h_bi21[i] = z->h_bi21[i];
		src_h_bi22[i] = z->h_bi22[i];
		src_h_bi23[i] = z->h_bi23[i];
		src_h_bi24[i] = z->h_bi24[i];

		src_h_bo21[i] = z->h_bo21[i];
		src_h_bo22[i] = z->h_bo22[i];
		src_h_bo23[i] = z->h_bo23[i];
		src_h_bo24[i] = z->h_bo24[i];

	}








	std::ofstream weightsfile("weights.txt");



	for(int ep=0; ep < epochs; ++ep)
	{
		std::cout << "stopping the trainig is available --->started" << std::endl;
		sleep(10);
		std::cout << "stopping the trainig is available --->ended" << std::endl;



		start = chrono::system_clock::now();








		std::cout << "Starting epochs : " << ep+1 << std::endl;
		//float x[4000];
		float x[975*320];
		//std::cout << sizeof(x) << std::endl;
		float y[975*320];
		float datat[919];
		//std::cout << sizeof(x) << std::endl;
		//std::cout << *x << std::endl;
		int count = 0;
		float n = 0;
		float *l;
		l = &n;


		std::ifstream stream("../data/actual_in500.csv");
		//std::ifstream stream("../../data/actual_in100.csv");
		//std::ifstream stream("../data/sampledatax.csv");
		//std::ifstream stream("data/actual_in.csv");
		string line = "";
		std::ifstream stream3("../data/actual_out500.csv");
		//std::ifstream stream3("../../data/actual_out100.csv");
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
						//src_datax[i] = (tmp2);
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
						datat[ti] = (tmpt2);
						//std::cout << y[ti];
						ti++;
			      }catch(...){
				      printf("error\n");
				      break;
			      }
			}


			//forward in host
			z->predict1(x, y); //forward
			



			if(argc != 2) {
				std::cout << "Usage:" << argv[0] << "<XCLBIN File>" << std::endl;
					return EXIT_FAILURE;
				}
				

			for(int i = 0; i < 75*320; ++i)
			{
				src_datax[i] = x[i];
			}

			for(int i = 0; i < 75*80; ++i)
			{
				src_datax1[i] = src_datax[i];
			}
			for(int i = 0; i < 75*80; ++i)
			{
				src_datax2[i] = src_datax[75*80+i];
			}
			for(int i = 0; i < 75*80; ++i)
			{
				src_datax3[i] = src_datax[75*80*2+i];
			}
			for(int i = 0; i < 75*80; ++i)
			{
				src_datax4[i] = src_datax[75*80*3+i];
			}
			

			std::cout << "original data " << std::endl;

			for(int i = 0; i < 75*640; ++i)
			{
				src_datay[i] = {0};
			}

			//datay = 0;

			// ------------------------------------------
			// sending weights and h parameters to kernel
			// ------------------------------------------

			OCL_CHECK(err, cl::Buffer wxf1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxf, src_wxf1.data(), &err));
			OCL_CHECK(err, cl::Buffer wxf2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxf, src_wxf2.data(), &err));
			OCL_CHECK(err, cl::Buffer wxf3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxf, src_wxf3.data(), &err));
			OCL_CHECK(err, cl::Buffer wxf4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxf, src_wxf4.data(), &err));

			OCL_CHECK(err, cl::Buffer wxg1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxg, src_wxg1.data(), &err));
			OCL_CHECK(err, cl::Buffer wxg2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxg, src_wxg2.data(), &err));
			OCL_CHECK(err, cl::Buffer wxg3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxg, src_wxg3.data(), &err));
			OCL_CHECK(err, cl::Buffer wxg4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxg, src_wxg4.data(), &err));

			OCL_CHECK(err, cl::Buffer wxi1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxi, src_wxi1.data(), &err));
			OCL_CHECK(err, cl::Buffer wxi2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxi, src_wxi2.data(), &err));
			OCL_CHECK(err, cl::Buffer wxi3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxi, src_wxi3.data(), &err));
			OCL_CHECK(err, cl::Buffer wxi4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxi, src_wxi4.data(), &err));

			OCL_CHECK(err, cl::Buffer wxo1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxo, src_wxo1.data(), &err));
			OCL_CHECK(err, cl::Buffer wxo2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxo, src_wxo2.data(), &err));
			OCL_CHECK(err, cl::Buffer wxo3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxo, src_wxo3.data(), &err));
			OCL_CHECK(err, cl::Buffer wxo4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxo, src_wxo4.data(), &err));

			OCL_CHECK(err, cl::Buffer whf1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whf, src_whf1.data(), &err));
			OCL_CHECK(err, cl::Buffer whf2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whf, src_whf2.data(), &err));
			OCL_CHECK(err, cl::Buffer whf3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whf, src_whf3.data(), &err));
			OCL_CHECK(err, cl::Buffer whf4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whf, src_whf4.data(), &err));

			OCL_CHECK(err, cl::Buffer whg1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whg, src_whg1.data(), &err));
			OCL_CHECK(err, cl::Buffer whg2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whg, src_whg2.data(), &err));
			OCL_CHECK(err, cl::Buffer whg3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whg, src_whg3.data(), &err));
			OCL_CHECK(err, cl::Buffer whg4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whg, src_whg4.data(), &err));

			OCL_CHECK(err, cl::Buffer whi1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whi, src_whi1.data(), &err));
			OCL_CHECK(err, cl::Buffer whi2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whi, src_whi2.data(), &err));
			OCL_CHECK(err, cl::Buffer whi3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whi, src_whi3.data(), &err));
			OCL_CHECK(err, cl::Buffer whi4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whi, src_whi4.data(), &err));

			OCL_CHECK(err, cl::Buffer who1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_who, src_who1.data(), &err));
			OCL_CHECK(err, cl::Buffer who2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_who, src_who2.data(), &err));
			OCL_CHECK(err, cl::Buffer who3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_who, src_who3.data(), &err));
			OCL_CHECK(err, cl::Buffer who4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_who, src_who4.data(), &err));



			OCL_CHECK(err, cl::Buffer wxf21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxf2, src_wxf21.data(), &err));
			OCL_CHECK(err, cl::Buffer wxf22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxf2, src_wxf22.data(), &err));
			OCL_CHECK(err, cl::Buffer wxf23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxf2, src_wxf23.data(), &err));
			OCL_CHECK(err, cl::Buffer wxf24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxf2, src_wxf24.data(), &err));

			OCL_CHECK(err, cl::Buffer wxg21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxg2, src_wxg21.data(), &err));
			OCL_CHECK(err, cl::Buffer wxg22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxg2, src_wxg22.data(), &err));
			OCL_CHECK(err, cl::Buffer wxg23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxg2, src_wxg23.data(), &err));
			OCL_CHECK(err, cl::Buffer wxg24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxg2, src_wxg24.data(), &err));

			OCL_CHECK(err, cl::Buffer wxi21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxi2, src_wxi21.data(), &err));
			OCL_CHECK(err, cl::Buffer wxi22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxi2, src_wxi22.data(), &err));
			OCL_CHECK(err, cl::Buffer wxi23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxi2, src_wxi23.data(), &err));
			OCL_CHECK(err, cl::Buffer wxi24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxi2, src_wxi24.data(), &err));

			OCL_CHECK(err, cl::Buffer wxo21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxo2, src_wxo21.data(), &err));
			OCL_CHECK(err, cl::Buffer wxo22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxo2, src_wxo22.data(), &err));
			OCL_CHECK(err, cl::Buffer wxo23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxo2, src_wxo23.data(), &err));
			OCL_CHECK(err, cl::Buffer wxo24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxo2, src_wxo24.data(), &err));

			OCL_CHECK(err, cl::Buffer whf21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whf2, src_whf21.data(), &err));
			OCL_CHECK(err, cl::Buffer whf22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whf2, src_whf22.data(), &err));
			OCL_CHECK(err, cl::Buffer whf23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whf2, src_whf23.data(), &err));
			OCL_CHECK(err, cl::Buffer whf24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whf2, src_whf24.data(), &err));

			OCL_CHECK(err, cl::Buffer whg21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whg2, src_whg21.data(), &err));
			OCL_CHECK(err, cl::Buffer whg22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whg2, src_whg22.data(), &err));
			OCL_CHECK(err, cl::Buffer whg23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whg2, src_whg23.data(), &err));
			OCL_CHECK(err, cl::Buffer whg24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whg2, src_whg24.data(), &err));

			OCL_CHECK(err, cl::Buffer whi21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whi2, src_whi21.data(), &err));
			OCL_CHECK(err, cl::Buffer whi22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whi2, src_whi22.data(), &err));
			OCL_CHECK(err, cl::Buffer whi23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whi2, src_whi23.data(), &err));
			OCL_CHECK(err, cl::Buffer whi24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whi2, src_whi24.data(), &err));

			OCL_CHECK(err, cl::Buffer who21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_who2, src_who21.data(), &err));
			OCL_CHECK(err, cl::Buffer who22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_who2, src_who22.data(), &err));
			OCL_CHECK(err, cl::Buffer who23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_who2, src_who23.data(), &err));
			OCL_CHECK(err, cl::Buffer who24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_who2, src_who24.data(), &err));


			OCL_CHECK(err, cl::Buffer bf1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bf, src_bf1.data(), &err));
			OCL_CHECK(err, cl::Buffer bf2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bf, src_bf2.data(), &err));
			OCL_CHECK(err, cl::Buffer bf3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bf, src_bf3.data(), &err));
			OCL_CHECK(err, cl::Buffer bf4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bf, src_bf4.data(), &err));

			OCL_CHECK(err, cl::Buffer bg1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bg, src_bg1.data(), &err));
			OCL_CHECK(err, cl::Buffer bg2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bg, src_bg2.data(), &err));
			OCL_CHECK(err, cl::Buffer bg3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bg, src_bg3.data(), &err));
			OCL_CHECK(err, cl::Buffer bg4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bg, src_bg4.data(), &err));

			OCL_CHECK(err, cl::Buffer bi1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bi, src_bi1.data(), &err));
			OCL_CHECK(err, cl::Buffer bi2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bi, src_bi2.data(), &err));
			OCL_CHECK(err, cl::Buffer bi3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bi, src_bi3.data(), &err));
			OCL_CHECK(err, cl::Buffer bi4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bi, src_bi4.data(), &err));

			OCL_CHECK(err, cl::Buffer bo1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bo, src_bo1.data(), &err));
			OCL_CHECK(err, cl::Buffer bo2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bo, src_bo2.data(), &err));
			OCL_CHECK(err, cl::Buffer bo3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bo, src_bo3.data(), &err));
			OCL_CHECK(err, cl::Buffer bo4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bo, src_bo4.data(), &err));


			OCL_CHECK(err, cl::Buffer bf21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bf2, src_bf21.data(), &err));
			OCL_CHECK(err, cl::Buffer bf22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bf2, src_bf22.data(), &err));
			OCL_CHECK(err, cl::Buffer bf23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bf2, src_bf23.data(), &err));
			OCL_CHECK(err, cl::Buffer bf24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bf2, src_bf24.data(), &err));

			OCL_CHECK(err, cl::Buffer bg21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bg2, src_bg21.data(), &err));
			OCL_CHECK(err, cl::Buffer bg22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bg2, src_bg22.data(), &err));
			OCL_CHECK(err, cl::Buffer bg23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bg2, src_bg23.data(), &err));
			OCL_CHECK(err, cl::Buffer bg24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bg2, src_bg24.data(), &err));

			OCL_CHECK(err, cl::Buffer bi21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bi2, src_bi21.data(), &err));
			OCL_CHECK(err, cl::Buffer bi22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bi2, src_bi22.data(), &err));
			OCL_CHECK(err, cl::Buffer bi23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bi2, src_bi23.data(), &err));
			OCL_CHECK(err, cl::Buffer bi24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bi2, src_bi24.data(), &err));

			OCL_CHECK(err, cl::Buffer bo21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bo2, src_bo21.data(), &err));
			OCL_CHECK(err, cl::Buffer bo22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bo2, src_bo22.data(), &err));
			OCL_CHECK(err, cl::Buffer bo23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bo2, src_bo23.data(), &err));
			OCL_CHECK(err, cl::Buffer bo24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bo2, src_bo24.data(), &err));


			OCL_CHECK(err, cl::Buffer h_wxf1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxf, src_h_wxf1.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxf2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxf, src_h_wxf2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxf3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxf, src_h_wxf3.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxf4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxf, src_h_wxf4.data(), &err));

			OCL_CHECK(err, cl::Buffer h_wxg1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxg, src_h_wxg1.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxg2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxg, src_h_wxg2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxg3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxg, src_h_wxg3.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxg4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxg, src_h_wxg4.data(), &err));

			OCL_CHECK(err, cl::Buffer h_wxi1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxi, src_h_wxi1.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxi2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxi, src_h_wxi2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxi3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxi, src_h_wxi3.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxi4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxi, src_h_wxi4.data(), &err));

			OCL_CHECK(err, cl::Buffer h_wxo1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxo, src_h_wxo1.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxo2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxo, src_h_wxo2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxo3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxo, src_h_wxo3.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxo4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxo, src_h_wxo4.data(), &err));

			OCL_CHECK(err, cl::Buffer h_whf1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whf, src_h_whf1.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whf2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whf, src_h_whf2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whf3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whf, src_h_whf3.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whf4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whf, src_h_whf4.data(), &err));

			OCL_CHECK(err, cl::Buffer h_whg1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whg, src_h_whg1.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whg2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whg, src_h_whg2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whg3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whg, src_h_whg3.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whg4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whg, src_h_whg4.data(), &err));

			OCL_CHECK(err, cl::Buffer h_whi1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whi, src_h_whi1.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whi2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whi, src_h_whi2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whi3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whi, src_h_whi3.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whi4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whi, src_h_whi4.data(), &err));

			OCL_CHECK(err, cl::Buffer h_who1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_who, src_h_who1.data(), &err));
			OCL_CHECK(err, cl::Buffer h_who2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_who, src_h_who2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_who3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_who, src_h_who3.data(), &err));
			OCL_CHECK(err, cl::Buffer h_who4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_who, src_h_who4.data(), &err));


			OCL_CHECK(err, cl::Buffer h_wxf21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxf2, src_h_wxf21.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxf22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxf2, src_h_wxf22.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxf23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxf2, src_h_wxf23.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxf24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxf2, src_h_wxf24.data(), &err));

			OCL_CHECK(err, cl::Buffer h_wxg21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxg2, src_h_wxg21.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxg22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxg2, src_h_wxg22.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxg23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxg2, src_h_wxg23.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxg24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxg2, src_h_wxg24.data(), &err));

			OCL_CHECK(err, cl::Buffer h_wxi21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxi2, src_h_wxi21.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxi22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxi2, src_h_wxi22.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxi23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxi2, src_h_wxi23.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxi24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxi2, src_h_wxi24.data(), &err));

			OCL_CHECK(err, cl::Buffer h_wxo21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxo2, src_h_wxo21.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxo22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxo2, src_h_wxo22.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxo23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxo2, src_h_wxo23.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxo24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxo2, src_h_wxo24.data(), &err));

			OCL_CHECK(err, cl::Buffer h_whf21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whf2, src_h_whf21.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whf22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whf2, src_h_whf22.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whf23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whf2, src_h_whf23.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whf24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whf2, src_h_whf24.data(), &err));

			OCL_CHECK(err, cl::Buffer h_whg21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whg2, src_h_whg21.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whg22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whg2, src_h_whg22.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whg23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whg2, src_h_whg23.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whg24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whg2, src_h_whg24.data(), &err));

			OCL_CHECK(err, cl::Buffer h_whi21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whi2, src_h_whi21.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whi22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whi2, src_h_whi22.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whi23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whi2, src_h_whi23.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whi24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whi2, src_h_whi24.data(), &err));

			OCL_CHECK(err, cl::Buffer h_who21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_who2, src_h_who21.data(), &err));
			OCL_CHECK(err, cl::Buffer h_who22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_who2, src_h_who22.data(), &err));
			OCL_CHECK(err, cl::Buffer h_who23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_who2, src_h_who23.data(), &err));
			OCL_CHECK(err, cl::Buffer h_who24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_who2, src_h_who24.data(), &err));


			OCL_CHECK(err, cl::Buffer h_bf1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bf, src_h_bf1.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bf2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bf, src_h_bf2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bf3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bf, src_h_bf3.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bf4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bf, src_h_bf4.data(), &err));

			OCL_CHECK(err, cl::Buffer h_bg1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bg, src_h_bg1.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bg2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bg, src_h_bg2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bg3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bg, src_h_bg3.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bg4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bg, src_h_bg4.data(), &err));

			OCL_CHECK(err, cl::Buffer h_bi1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bi, src_h_bi1.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bi2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bi, src_h_bi2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bi3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bi, src_h_bi3.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bi4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bi, src_h_bi4.data(), &err));

			OCL_CHECK(err, cl::Buffer h_bo1(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bo, src_h_bo1.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bo2(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bo, src_h_bo2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bo3(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bo, src_h_bo3.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bo4(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bo, src_h_bo4.data(), &err));


			OCL_CHECK(err, cl::Buffer h_bf21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bf2, src_h_bf21.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bf22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bf2, src_h_bf22.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bf23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bf2, src_h_bf23.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bf24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bf2, src_h_bf24.data(), &err));

			OCL_CHECK(err, cl::Buffer h_bg21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bg2, src_h_bg21.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bg22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bg2, src_h_bg22.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bg23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bg2, src_h_bg23.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bg24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bg2, src_h_bg24.data(), &err));

			OCL_CHECK(err, cl::Buffer h_bi21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bi2, src_h_bi21.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bi22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bi2, src_h_bi22.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bi23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bi2, src_h_bi23.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bi24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bi2, src_h_bi24.data(), &err));

			OCL_CHECK(err, cl::Buffer h_bo21(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bo2, src_h_bo21.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bo22(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bo2, src_h_bo22.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bo23(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bo2, src_h_bo23.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bo24(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bo2, src_h_bo24.data(), &err));


			// ------------------------------------------
			// END
			// ------------------------------------------


			/*
			//setup buffers and run kernel
			OCL_CHECK(err, cl::Buffer datax(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_datax, src_datax.data(), &err));
			OCL_CHECK(err, cl::Buffer datay(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, size_bytes_datay, src_datay.data(), &err));
			OCL_CHECK(err, cl::Buffer doutk(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_doutk, src_doutk.data(), &err));
			//OCL_CHECK(err, cl::Buffer mode(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 1, src_mode.data(), &err));
			OCL_CHECK(err, cl::Buffer buffer_output(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, size_bytes_buffer_output, src_buffer_output.data(), &err));
			*/


			//divide activation into 4 part
                        OCL_CHECK(err, buffer_datax[0] = cl::Buffer(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_datax, src_datax1.data(), &err));
                        OCL_CHECK(err, buffer_datax[1] = cl::Buffer(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_datax, src_datax1.data(), &err));
                        OCL_CHECK(err, buffer_datax[2] = cl::Buffer(contexts[2], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_datax, src_datax2.data(), &err));
                        OCL_CHECK(err, buffer_datax[3] = cl::Buffer(contexts[3], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_datax, src_datax2.data(), &err));
                        OCL_CHECK(err, buffer_datax[4] = cl::Buffer(contexts[4], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_datax, src_datax3.data(), &err));
                        OCL_CHECK(err, buffer_datax[5] = cl::Buffer(contexts[5], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_datax, src_datax3.data(), &err));
                        OCL_CHECK(err, buffer_datax[6] = cl::Buffer(contexts[6], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_datax, src_datax4.data(), &err));
                        OCL_CHECK(err, buffer_datax[7] = cl::Buffer(contexts[7], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_datax, src_datax4.data(), &err));



                        for (int d = 0; d < (int)device_count; d++) {


                                // Allocate Buffers in Global Memory
                                // Buffers are allocated using CL_MEM_USE_HOST_PTR for efficient memory and


                                std::cout << "Creating Buffers[" << d << "]..." << std::endl;
                                //OCL_CHECK(err, buffer_datax[d] = cl::Buffer(contexts[d], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_datax, src_datax.data(), &err));


                                OCL_CHECK(err, buffer_datay[d] = cl::Buffer(contexts[d], CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, size_bytes_datay, src_datay.data(), &err));
                                //OCL_CHECK(err, buffer_dout[d] = cl::Buffer(contexts[d], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_dout, src_dout.data(), &err));
                                OCL_CHECK(err, buffer_doutk[d] = cl::Buffer(contexts[d], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_dout, src_dout.data(), &err));

                        }
                                OCL_CHECK(err, buffer_result[0] = cl::Buffer(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, size_bytes_buffer_output, src_buffer_output.data(), &err));
                                OCL_CHECK(err, buffer_result[1] = cl::Buffer(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, size_bytes_buffer_output, src_buffer_output_.data(), &err));


                        OCL_CHECK(err, err = kerneldl[0].setArg(0, buffer_datax[0]));
                        OCL_CHECK(err, err = kerneldl[0].setArg(1, buffer_datay[0]));
                        OCL_CHECK(err, err = kerneldl[0].setArg(2, buffer_doutk[0]));
                        OCL_CHECK(err, err = kerneldl[0].setArg(3, buffer_result[0]));

                        OCL_CHECK(err, err = kerneldl[1].setArg(0, buffer_datax[1]));
                        OCL_CHECK(err, err = kerneldl[1].setArg(1, buffer_datay[1]));
                        OCL_CHECK(err, err = kerneldl[1].setArg(2, buffer_doutk[1]));
                        OCL_CHECK(err, err = kerneldl[1].setArg(3, buffer_result[1]));


                        OCL_CHECK(err, err = kerneldl[2].setArg(0, buffer_datax[0]));
                        OCL_CHECK(err, err = kerneldl[2].setArg(1, buffer_datay[0]));
                        OCL_CHECK(err, err = kerneldl[2].setArg(2, buffer_doutk[0]));
                        OCL_CHECK(err, err = kerneldl[2].setArg(3, buffer_result[0]));

                        OCL_CHECK(err, err = kerneldl[3].setArg(0, buffer_datax[1]));
                        OCL_CHECK(err, err = kerneldl[3].setArg(1, buffer_datay[1]));
                        OCL_CHECK(err, err = kerneldl[3].setArg(2, buffer_doutk[1]));
                        OCL_CHECK(err, err = kerneldl[3].setArg(3, buffer_result[1]));

                        OCL_CHECK(err, err = kerneldl[4].setArg(0, buffer_datax[0]));
                        OCL_CHECK(err, err = kerneldl[4].setArg(1, buffer_datay[0]));
                        OCL_CHECK(err, err = kerneldl[4].setArg(2, buffer_doutk[0]));
                        OCL_CHECK(err, err = kerneldl[4].setArg(3, buffer_result[0]));

                        OCL_CHECK(err, err = kerneldl[5].setArg(0, buffer_datax[1]));
                        OCL_CHECK(err, err = kerneldl[5].setArg(1, buffer_datay[1]));
                        OCL_CHECK(err, err = kerneldl[5].setArg(2, buffer_doutk[1]));
                        OCL_CHECK(err, err = kerneldl[5].setArg(3, buffer_result[1]));

                        OCL_CHECK(err, err = kerneldl[6].setArg(0, buffer_datax[0]));
                        OCL_CHECK(err, err = kerneldl[6].setArg(1, buffer_datay[0]));
                        OCL_CHECK(err, err = kerneldl[6].setArg(2, buffer_doutk[0]));
                        OCL_CHECK(err, err = kerneldl[6].setArg(3, buffer_result[0]));

                        OCL_CHECK(err, err = kerneldl[7].setArg(0, buffer_datax[1]));
                        OCL_CHECK(err, err = kerneldl[7].setArg(1, buffer_datay[1]));
                        OCL_CHECK(err, err = kerneldl[7].setArg(2, buffer_doutk[1]));
                        OCL_CHECK(err, err = kerneldl[7].setArg(3, buffer_result[1]));






			/*
			// set the kernel arguments
			OCL_CHECK(err, err = kerneldl.setArg(0, datax));
			OCL_CHECK(err, err = kerneldl.setArg(1, datay));
			OCL_CHECK(err, err = kerneldl.setArg(2, doutk));
			OCL_CHECK(err, err = kerneldl.setArg(3, buffer_output));
			*/

			// ------------------------------------------
			// sending weights and h parameters to kernel
			// ------------------------------------------

			/*
                        for (int d = 0; d < (int)device_count; d += 2) {
				OCL_CHECK(err, err = kerneldl[d].setArg(5, wxf));
				OCL_CHECK(err, err = kerneldl[d].setArg(6, wxg));
				OCL_CHECK(err, err = kerneldl[d].setArg(7, wxi));
				OCL_CHECK(err, err = kerneldl[d].setArg(8, wxo));
				OCL_CHECK(err, err = kerneldl[d].setArg(9, whf));
				OCL_CHECK(err, err = kerneldl[d].setArg(10, whg));
				OCL_CHECK(err, err = kerneldl[d].setArg(11, whi));
				OCL_CHECK(err, err = kerneldl[d].setArg(12, who));

				OCL_CHECK(err, err = kerneldl[d].setArg(13, bf));
				OCL_CHECK(err, err = kerneldl[d].setArg(14, bg));
				OCL_CHECK(err, err = kerneldl[d].setArg(15, bi));
				OCL_CHECK(err, err = kerneldl[d].setArg(16, bo));

				OCL_CHECK(err, err = kerneldl[d].setArg(17, h_wxf));
				OCL_CHECK(err, err = kerneldl[d].setArg(18, h_wxg));
				OCL_CHECK(err, err = kerneldl[d].setArg(19, h_wxi));
				OCL_CHECK(err, err = kerneldl[d].setArg(20, h_wxo));
				OCL_CHECK(err, err = kerneldl[d].setArg(21, h_whf));
				OCL_CHECK(err, err = kerneldl[d].setArg(22, h_whg));
				OCL_CHECK(err, err = kerneldl[d].setArg(23, h_whi));
				OCL_CHECK(err, err = kerneldl[d].setArg(24, h_who));

				OCL_CHECK(err, err = kerneldl[d].setArg(25, h_bf));
				OCL_CHECK(err, err = kerneldl[d].setArg(26, h_bg));
				OCL_CHECK(err, err = kerneldl[d].setArg(27, h_bi));
				OCL_CHECK(err, err = kerneldl[d].setArg(28, h_bo));
			}



                        for (int d = 1; d < (int)device_count; d += 2) {

				OCL_CHECK(err, err = kerneldl[d].setArg(5, wxf2));
				OCL_CHECK(err, err = kerneldl[d].setArg(6, wxg2));
				OCL_CHECK(err, err = kerneldl[d].setArg(7, wxi2));
				OCL_CHECK(err, err = kerneldl[d].setArg(8, wxo2));
				OCL_CHECK(err, err = kerneldl[d].setArg(9, whf2));
				OCL_CHECK(err, err = kerneldl[d].setArg(10, whg2));
				OCL_CHECK(err, err = kerneldl[d].setArg(11, whi2));
				OCL_CHECK(err, err = kerneldl[d].setArg(12, who2));

				OCL_CHECK(err, err = kerneldl[d].setArg(13, bf2));
				OCL_CHECK(err, err = kerneldl[d].setArg(14, bg2));
				OCL_CHECK(err, err = kerneldl[d].setArg(15, bi2));
				OCL_CHECK(err, err = kerneldl[d].setArg(16, bo2));

				OCL_CHECK(err, err = kerneldl[d].setArg(17, h_wxf2));
				OCL_CHECK(err, err = kerneldl[d].setArg(18, h_wxg2));
				OCL_CHECK(err, err = kerneldl[d].setArg(19, h_wxi2));
				OCL_CHECK(err, err = kerneldl[d].setArg(20, h_wxo2));
				OCL_CHECK(err, err = kerneldl[d].setArg(21, h_whf2));
				OCL_CHECK(err, err = kerneldl[d].setArg(22, h_whg2));
				OCL_CHECK(err, err = kerneldl[d].setArg(23, h_whi2));
				OCL_CHECK(err, err = kerneldl[d].setArg(24, h_who2));

				OCL_CHECK(err, err = kerneldl[d].setArg(25, h_bf2));
				OCL_CHECK(err, err = kerneldl[d].setArg(26, h_bg2));
				OCL_CHECK(err, err = kerneldl[d].setArg(27, h_bi2));
				OCL_CHECK(err, err = kerneldl[d].setArg(28, h_bo2));
			}
			*/

			OCL_CHECK(err, err = kerneldl[0].setArg(5, wxf1));
			OCL_CHECK(err, err = kerneldl[2].setArg(5, wxf2));
			OCL_CHECK(err, err = kerneldl[4].setArg(5, wxf3));
			OCL_CHECK(err, err = kerneldl[6].setArg(5, wxf4));
			OCL_CHECK(err, err = kerneldl[1].setArg(5, wxf21));
			OCL_CHECK(err, err = kerneldl[3].setArg(5, wxf22));
			OCL_CHECK(err, err = kerneldl[5].setArg(5, wxf23));
			OCL_CHECK(err, err = kerneldl[7].setArg(5, wxf24));

			OCL_CHECK(err, err = kerneldl[0].setArg(6, wxg1));
			OCL_CHECK(err, err = kerneldl[2].setArg(6, wxg2));
			OCL_CHECK(err, err = kerneldl[4].setArg(6, wxg3));
			OCL_CHECK(err, err = kerneldl[6].setArg(6, wxg4));
			OCL_CHECK(err, err = kerneldl[1].setArg(6, wxg21));
			OCL_CHECK(err, err = kerneldl[3].setArg(6, wxg22));
			OCL_CHECK(err, err = kerneldl[5].setArg(6, wxg23));
			OCL_CHECK(err, err = kerneldl[7].setArg(6, wxg24));

			OCL_CHECK(err, err = kerneldl[0].setArg(7, wxi1));
			OCL_CHECK(err, err = kerneldl[2].setArg(7, wxi2));
			OCL_CHECK(err, err = kerneldl[4].setArg(7, wxi3));
			OCL_CHECK(err, err = kerneldl[6].setArg(7, wxi4));
			OCL_CHECK(err, err = kerneldl[1].setArg(7, wxi21));
			OCL_CHECK(err, err = kerneldl[3].setArg(7, wxi22));
			OCL_CHECK(err, err = kerneldl[5].setArg(7, wxi23));
			OCL_CHECK(err, err = kerneldl[7].setArg(7, wxi24));

			OCL_CHECK(err, err = kerneldl[0].setArg(8, wxo1));
			OCL_CHECK(err, err = kerneldl[2].setArg(8, wxo2));
			OCL_CHECK(err, err = kerneldl[4].setArg(8, wxo3));
			OCL_CHECK(err, err = kerneldl[6].setArg(8, wxo4));
			OCL_CHECK(err, err = kerneldl[1].setArg(8, wxo21));
			OCL_CHECK(err, err = kerneldl[3].setArg(8, wxo22));
			OCL_CHECK(err, err = kerneldl[5].setArg(8, wxo23));
			OCL_CHECK(err, err = kerneldl[7].setArg(8, wxo24));

			OCL_CHECK(err, err = kerneldl[0].setArg(9, whf1));
			OCL_CHECK(err, err = kerneldl[2].setArg(9, whf2));
			OCL_CHECK(err, err = kerneldl[4].setArg(9, whf3));
			OCL_CHECK(err, err = kerneldl[6].setArg(9, whf4));
			OCL_CHECK(err, err = kerneldl[1].setArg(9, whf21));
			OCL_CHECK(err, err = kerneldl[3].setArg(9, whf22));
			OCL_CHECK(err, err = kerneldl[5].setArg(9, whf23));
			OCL_CHECK(err, err = kerneldl[7].setArg(9, whf24));

			OCL_CHECK(err, err = kerneldl[0].setArg(10, whg1));
			OCL_CHECK(err, err = kerneldl[2].setArg(10, whg2));
			OCL_CHECK(err, err = kerneldl[4].setArg(10, whg3));
			OCL_CHECK(err, err = kerneldl[6].setArg(10, whg4));
			OCL_CHECK(err, err = kerneldl[1].setArg(10, whg21));
			OCL_CHECK(err, err = kerneldl[3].setArg(10, whg22));
			OCL_CHECK(err, err = kerneldl[5].setArg(10, whg23));
			OCL_CHECK(err, err = kerneldl[7].setArg(10, whg24));

			OCL_CHECK(err, err = kerneldl[0].setArg(11, whi1));
			OCL_CHECK(err, err = kerneldl[2].setArg(11, whi2));
			OCL_CHECK(err, err = kerneldl[4].setArg(11, whi3));
			OCL_CHECK(err, err = kerneldl[6].setArg(11, whi4));
			OCL_CHECK(err, err = kerneldl[1].setArg(11, whi21));
			OCL_CHECK(err, err = kerneldl[3].setArg(11, whi22));
			OCL_CHECK(err, err = kerneldl[5].setArg(11, whi23));
			OCL_CHECK(err, err = kerneldl[7].setArg(11, whi24));

			OCL_CHECK(err, err = kerneldl[0].setArg(12, who1));
			OCL_CHECK(err, err = kerneldl[2].setArg(12, who2));
			OCL_CHECK(err, err = kerneldl[4].setArg(12, who3));
			OCL_CHECK(err, err = kerneldl[6].setArg(12, who4));
			OCL_CHECK(err, err = kerneldl[1].setArg(12, who21));
			OCL_CHECK(err, err = kerneldl[3].setArg(12, who22));
			OCL_CHECK(err, err = kerneldl[5].setArg(12, who23));
			OCL_CHECK(err, err = kerneldl[7].setArg(12, who24));

			OCL_CHECK(err, err = kerneldl[0].setArg(13, bf1));
			OCL_CHECK(err, err = kerneldl[2].setArg(13, bf2));
			OCL_CHECK(err, err = kerneldl[4].setArg(13, bf3));
			OCL_CHECK(err, err = kerneldl[6].setArg(13, bf4));
			OCL_CHECK(err, err = kerneldl[1].setArg(13, bf21));
			OCL_CHECK(err, err = kerneldl[3].setArg(13, bf22));
			OCL_CHECK(err, err = kerneldl[5].setArg(13, bf23));
			OCL_CHECK(err, err = kerneldl[7].setArg(13, bf24));

			OCL_CHECK(err, err = kerneldl[0].setArg(14, bg1));
			OCL_CHECK(err, err = kerneldl[2].setArg(14, bg2));
			OCL_CHECK(err, err = kerneldl[4].setArg(14, bg3));
			OCL_CHECK(err, err = kerneldl[6].setArg(14, bg4));
			OCL_CHECK(err, err = kerneldl[1].setArg(14, bg21));
			OCL_CHECK(err, err = kerneldl[3].setArg(14, bg22));
			OCL_CHECK(err, err = kerneldl[5].setArg(14, bg23));
			OCL_CHECK(err, err = kerneldl[7].setArg(14, bg24));

			OCL_CHECK(err, err = kerneldl[0].setArg(15, bi1));
			OCL_CHECK(err, err = kerneldl[2].setArg(15, bi2));
			OCL_CHECK(err, err = kerneldl[4].setArg(15, bi3));
			OCL_CHECK(err, err = kerneldl[6].setArg(15, bi4));
			OCL_CHECK(err, err = kerneldl[1].setArg(15, bi21));
			OCL_CHECK(err, err = kerneldl[3].setArg(15, bi22));
			OCL_CHECK(err, err = kerneldl[5].setArg(15, bi23));
			OCL_CHECK(err, err = kerneldl[7].setArg(15, bi24));

			OCL_CHECK(err, err = kerneldl[0].setArg(16, bo1));
			OCL_CHECK(err, err = kerneldl[2].setArg(16, bo2));
			OCL_CHECK(err, err = kerneldl[4].setArg(16, bo3));
			OCL_CHECK(err, err = kerneldl[6].setArg(16, bo4));
			OCL_CHECK(err, err = kerneldl[1].setArg(16, bo21));
			OCL_CHECK(err, err = kerneldl[3].setArg(16, bo22));
			OCL_CHECK(err, err = kerneldl[5].setArg(16, bo23));
			OCL_CHECK(err, err = kerneldl[7].setArg(16, bo24));

			OCL_CHECK(err, err = kerneldl[0].setArg(17, h_wxf1));
			OCL_CHECK(err, err = kerneldl[2].setArg(17, h_wxf2));
			OCL_CHECK(err, err = kerneldl[4].setArg(17, h_wxf3));
			OCL_CHECK(err, err = kerneldl[6].setArg(17, h_wxf4));
			OCL_CHECK(err, err = kerneldl[1].setArg(17, h_wxf21));
			OCL_CHECK(err, err = kerneldl[3].setArg(17, h_wxf22));
			OCL_CHECK(err, err = kerneldl[5].setArg(17, h_wxf23));
			OCL_CHECK(err, err = kerneldl[7].setArg(17, h_wxf24));

			OCL_CHECK(err, err = kerneldl[0].setArg(18, h_wxg1));
			OCL_CHECK(err, err = kerneldl[2].setArg(18, h_wxg2));
			OCL_CHECK(err, err = kerneldl[4].setArg(18, h_wxg3));
			OCL_CHECK(err, err = kerneldl[6].setArg(18, h_wxg4));
			OCL_CHECK(err, err = kerneldl[1].setArg(18, h_wxg21));
			OCL_CHECK(err, err = kerneldl[3].setArg(18, h_wxg22));
			OCL_CHECK(err, err = kerneldl[5].setArg(18, h_wxg23));
			OCL_CHECK(err, err = kerneldl[7].setArg(18, h_wxg24));

			OCL_CHECK(err, err = kerneldl[0].setArg(19, h_wxi1));
			OCL_CHECK(err, err = kerneldl[2].setArg(19, h_wxi2));
			OCL_CHECK(err, err = kerneldl[4].setArg(19, h_wxi3));
			OCL_CHECK(err, err = kerneldl[6].setArg(19, h_wxi4));
			OCL_CHECK(err, err = kerneldl[1].setArg(19, h_wxi21));
			OCL_CHECK(err, err = kerneldl[3].setArg(19, h_wxi22));
			OCL_CHECK(err, err = kerneldl[5].setArg(19, h_wxi23));
			OCL_CHECK(err, err = kerneldl[7].setArg(19, h_wxi24));

			OCL_CHECK(err, err = kerneldl[0].setArg(20, h_wxo1));
			OCL_CHECK(err, err = kerneldl[2].setArg(20, h_wxo2));
			OCL_CHECK(err, err = kerneldl[4].setArg(20, h_wxo3));
			OCL_CHECK(err, err = kerneldl[6].setArg(20, h_wxo4));
			OCL_CHECK(err, err = kerneldl[1].setArg(20, h_wxo21));
			OCL_CHECK(err, err = kerneldl[3].setArg(20, h_wxo22));
			OCL_CHECK(err, err = kerneldl[5].setArg(20, h_wxo23));
			OCL_CHECK(err, err = kerneldl[7].setArg(20, h_wxo24));

			OCL_CHECK(err, err = kerneldl[0].setArg(21, h_whf1));
			OCL_CHECK(err, err = kerneldl[2].setArg(21, h_whf2));
			OCL_CHECK(err, err = kerneldl[4].setArg(21, h_whf3));
			OCL_CHECK(err, err = kerneldl[6].setArg(21, h_whf4));
			OCL_CHECK(err, err = kerneldl[1].setArg(21, h_whf21));
			OCL_CHECK(err, err = kerneldl[3].setArg(21, h_whf22));
			OCL_CHECK(err, err = kerneldl[5].setArg(21, h_whf23));
			OCL_CHECK(err, err = kerneldl[7].setArg(21, h_whf24));

			OCL_CHECK(err, err = kerneldl[0].setArg(22, h_whg1));
			OCL_CHECK(err, err = kerneldl[2].setArg(22, h_whg2));
			OCL_CHECK(err, err = kerneldl[4].setArg(22, h_whg3));
			OCL_CHECK(err, err = kerneldl[6].setArg(22, h_whg4));
			OCL_CHECK(err, err = kerneldl[1].setArg(22, h_whg21));
			OCL_CHECK(err, err = kerneldl[3].setArg(22, h_whg22));
			OCL_CHECK(err, err = kerneldl[5].setArg(22, h_whg23));
			OCL_CHECK(err, err = kerneldl[7].setArg(22, h_whg24));

			OCL_CHECK(err, err = kerneldl[0].setArg(23, h_whi1));
			OCL_CHECK(err, err = kerneldl[2].setArg(23, h_whi2));
			OCL_CHECK(err, err = kerneldl[4].setArg(23, h_whi3));
			OCL_CHECK(err, err = kerneldl[6].setArg(23, h_whi4));
			OCL_CHECK(err, err = kerneldl[1].setArg(23, h_whi21));
			OCL_CHECK(err, err = kerneldl[3].setArg(23, h_whi22));
			OCL_CHECK(err, err = kerneldl[5].setArg(23, h_whi23));
			OCL_CHECK(err, err = kerneldl[7].setArg(23, h_whi24));

			OCL_CHECK(err, err = kerneldl[0].setArg(24, h_who1));
			OCL_CHECK(err, err = kerneldl[2].setArg(24, h_who2));
			OCL_CHECK(err, err = kerneldl[4].setArg(24, h_who3));
			OCL_CHECK(err, err = kerneldl[6].setArg(24, h_who4));
			OCL_CHECK(err, err = kerneldl[1].setArg(24, h_who21));
			OCL_CHECK(err, err = kerneldl[3].setArg(24, h_who22));
			OCL_CHECK(err, err = kerneldl[5].setArg(24, h_who23));
			OCL_CHECK(err, err = kerneldl[7].setArg(24, h_who24));

			OCL_CHECK(err, err = kerneldl[0].setArg(25, h_bf1));
			OCL_CHECK(err, err = kerneldl[2].setArg(25, h_bf2));
			OCL_CHECK(err, err = kerneldl[4].setArg(25, h_bf3));
			OCL_CHECK(err, err = kerneldl[6].setArg(25, h_bf4));
			OCL_CHECK(err, err = kerneldl[1].setArg(25, h_bf21));
			OCL_CHECK(err, err = kerneldl[3].setArg(25, h_bf22));
			OCL_CHECK(err, err = kerneldl[5].setArg(25, h_bf23));
			OCL_CHECK(err, err = kerneldl[7].setArg(25, h_bf24));

			OCL_CHECK(err, err = kerneldl[0].setArg(26, h_bg1));
			OCL_CHECK(err, err = kerneldl[2].setArg(26, h_bg2));
			OCL_CHECK(err, err = kerneldl[4].setArg(26, h_bg3));
			OCL_CHECK(err, err = kerneldl[6].setArg(26, h_bg4));
			OCL_CHECK(err, err = kerneldl[1].setArg(26, h_bg21));
			OCL_CHECK(err, err = kerneldl[3].setArg(26, h_bg22));
			OCL_CHECK(err, err = kerneldl[5].setArg(26, h_bg23));
			OCL_CHECK(err, err = kerneldl[7].setArg(26, h_bg24));

			OCL_CHECK(err, err = kerneldl[0].setArg(27, h_bi1));
			OCL_CHECK(err, err = kerneldl[2].setArg(27, h_bi2));
			OCL_CHECK(err, err = kerneldl[4].setArg(27, h_bi3));
			OCL_CHECK(err, err = kerneldl[6].setArg(27, h_bi4));
			OCL_CHECK(err, err = kerneldl[1].setArg(27, h_bi21));
			OCL_CHECK(err, err = kerneldl[3].setArg(27, h_bi22));
			OCL_CHECK(err, err = kerneldl[5].setArg(27, h_bi23));
			OCL_CHECK(err, err = kerneldl[7].setArg(27, h_bi24));

			OCL_CHECK(err, err = kerneldl[0].setArg(28, h_bo1));
			OCL_CHECK(err, err = kerneldl[2].setArg(28, h_bo2));
			OCL_CHECK(err, err = kerneldl[4].setArg(28, h_bo3));
			OCL_CHECK(err, err = kerneldl[6].setArg(28, h_bo4));
			OCL_CHECK(err, err = kerneldl[1].setArg(28, h_bo21));
			OCL_CHECK(err, err = kerneldl[3].setArg(28, h_bo22));
			OCL_CHECK(err, err = kerneldl[5].setArg(28, h_bo23));
			OCL_CHECK(err, err = kerneldl[7].setArg(28, h_bo24));








			// ------------------------------------------
			// END
			// ------------------------------------------
				
                        for (int d = 0; d < (int)device_count; d++) {
				OCL_CHECK(err, err = kerneldl[d].setArg(29, count));
				OCL_CHECK(err, err = kerneldl[d].setArg(30, d/2));
			}


			//-------------------
			//forward in kernel
			//-------------------
			

			clock_t start = clock();


                        for (int d = 0; d < (int)device_count; d += 2) {

				//setting the device as FORWARD_MODE
				OCL_CHECK(err, err = kerneldl[d].setArg(4, 1));
				OCL_CHECK(err, err = kerneldl[d+1].setArg(4, 3));

				//command queue for FORWARD_MODE
				//OCL_CHECK(err, cl::CommandQueue q_forward(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

				if(count==1)
				{
					if(d==0)
					{
						//transfer activation data from system memmory over PCIe to the FPGA on-board DDR memory
						//OCL_CHECK(err, err = q_forward.enqueueMigrateMemObjects({datax}, 0 ));
						OCL_CHECK(err, err = q_forward[d].enqueueMigrateMemObjects({buffer_datax[0], wxf1, wxg1, wxi1, wxo1, whf1, whg1, whi1, who1, bf1, bg1, bi1, bo1, h_wxf1, h_wxg1, h_wxi1, h_wxo1, h_whf1, h_whg1, h_whi1, h_who1, h_bf1, h_bg1, h_bi1, h_bo1}, 0 ));
						OCL_CHECK(err, err = q_forward[d+1].enqueueMigrateMemObjects({buffer_datax[1], wxf21, wxg21, wxi21, wxo21, whf21, whg21, whi21, who21, bf21, bg21, bi21, bo21, h_wxf21, h_wxg21, h_wxi21, h_wxo21, h_whf21, h_whg21, h_whi21, h_who21, h_bf21, h_bg21, h_bi21, h_bo21}, 0 ));
					}
					if(d==2)
					{
						OCL_CHECK(err, err = q_forward[d].enqueueMigrateMemObjects({buffer_datax[0], wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf2, bg2, bi2, bo2, h_wxf2, h_wxg2, h_wxi2, h_wxo2, h_whf2, h_whg2, h_whi2, h_who2, h_bf2, h_bg2, h_bi2, h_bo2}, 0 ));
						OCL_CHECK(err, err = q_forward[d+1].enqueueMigrateMemObjects({buffer_datax[1], wxf22, wxg22, wxi22, wxo22, whf22, whg22, whi22, who22, bf22, bg22, bi22, bo22, h_wxf22, h_wxg22, h_wxi22, h_wxo22, h_whf22, h_whg22, h_whi22, h_who22, h_bf22, h_bg22, h_bi22, h_bo22}, 0 ));
					}
					if(d==4)
					{
						OCL_CHECK(err, err = q_forward[d].enqueueMigrateMemObjects({buffer_datax[0], wxf3, wxg3, wxi3, wxo3, whf3, whg3, whi3, who3, bf3, bg3, bi3, bo3, h_wxf3, h_wxg3, h_wxi3, h_wxo3, h_whf3, h_whg3, h_whi3, h_who3, h_bf3, h_bg3, h_bi3, h_bo3}, 0 ));
						OCL_CHECK(err, err = q_forward[d+1].enqueueMigrateMemObjects({buffer_datax[1], wxf23, wxg23, wxi23, wxo23, whf23, whg23, whi23, who23, bf23, bg23, bi23, bo23, h_wxf23, h_wxg23, h_wxi23, h_wxo23, h_whf23, h_whg23, h_whi23, h_who23, h_bf23, h_bg23, h_bi23, h_bo23}, 0 ));
					}
					if(d==6)
					{
						OCL_CHECK(err, err = q_forward[d].enqueueMigrateMemObjects({buffer_datax[0], wxf4, wxg4, wxi4, wxo4, whf4, whg4, whi4, who4, bf4, bg4, bi4, bo4, h_wxf4, h_wxg4, h_wxi4, h_wxo4, h_whf4, h_whg4, h_whi4, h_who4, h_bf4, h_bg4, h_bi4, h_bo4}, 0 ));
						OCL_CHECK(err, err = q_forward[d+1].enqueueMigrateMemObjects({buffer_datax[1], wxf24, wxg24, wxi24, wxo24, whf24, whg24, whi24, who24, bf24, bg24, bi24, bo24, h_wxf24, h_wxg24, h_wxi24, h_wxo24, h_whf24, h_whg24, h_whi24, h_who24, h_bf24, h_bg24, h_bi24, h_bo24}, 0 ));
					}
					
				}else{
					OCL_CHECK(err, err = q_forward[d].enqueueMigrateMemObjects({buffer_datax[0]}, 0 ));
					OCL_CHECK(err, err = q_forward[d+1].enqueueMigrateMemObjects({buffer_datax[1]}, 0 ));
				}
					


				//boot the kernel
				//OCL_CHECK(err, err = q_forward[0].enqueueTask(kerneldl[0]));
				OCL_CHECK(err, err = q_forward[d].enqueueTask(kerneldl[d], NULL, &events[d]));
				OCL_CHECK(err, err = q_forward[d+1].enqueueTask(kerneldl[d+1], NULL, &events[d+1]));


				//receive the data from kernel
				OCL_CHECK(err, err = q_forward[d].enqueueMigrateMemObjects({buffer_datay[0]}, CL_MIGRATE_MEM_OBJECT_HOST));
				OCL_CHECK(err, err = q_forward[d+1].enqueueMigrateMemObjects({buffer_datay[1]}, CL_MIGRATE_MEM_OBJECT_HOST));

				
			}

			start_forward = chrono::system_clock::now();
			//finish the all the command in the queue (q_forward)
			int dev = 0;
			for (auto queue : q_forward) {
				std::cout << "Waiting for work to finish on device " << dev++ << std::endl;
				OCL_CHECK(err, err = queue.flush());
				OCL_CHECK(err, err = queue.finish());
			}

			end_forward = chrono::system_clock::now();


			double time_for = static_cast<double>(chrono::duration_cast<chrono::microseconds>(end_forward-start_forward).count() /1000.0);
			outputfile << " forward  : " << time_for << " [ms]" << std::endl;


			//clock_t end = clock();

			//const double time = static_cast<double>(end - start) / CLOCKS_PER_SEC * 1000.0;
			//outputfile << "time(forward) : " << time << "[ms]" << std::endl;


			float bufferx[75*640];
			float buffery[75*640];
			for(int i = 0; i < 75*640; ++i)
			{
				bufferx[i] = src_datay[i];
			}
			for(int i = 0; i < 640; ++i)
			{
				//std::cout << src_datay[i] <<":";
			}




			//forward in host
			z->predict2(bufferx, buffery); //forward



			//float dout[919];
			float dout2[640*975];
			for(int i = 0; i < 919; ++i)
			{
				dout2[i] = {1};
				//std::cout << t[i] << " : ";
				//std::cout << y[i];
			}
		

			//cnn z = cnn();
			//cnn z; //with this pattern, loss will be -nan
			

			//z->loss(x, t, l);
			*l = 0;
			loss.forward(buffery, datat, l);

			//std::cout << "l : " << *l << endl;
			lossval += *l;


			loss.backward(dout2, datat);

			//backward in host
			z->gradient1(dout2, buffery); //backward


			for(int i =0; i<640*75; ++i)
			{
				src_dout[i] = dout2[i];
				//std::cout << src_dout[i] << std::endl;
			}


			//OCL_CHECK(err, err = kerneldl.setArg(2, dout));

                        //OCL_CHECK(err, cl::Buffer dout(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_dout, src_dout.data(), &err));
                        OCL_CHECK(err, buffer_dout[0] = cl::Buffer(contexts[0], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_dout, src_dout.data(), &err));
                        OCL_CHECK(err, buffer_dout[1] = cl::Buffer(contexts[1], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_dout, src_dout.data(), &err));
                        OCL_CHECK(err, buffer_dout[2] = cl::Buffer(contexts[2], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_dout, src_dout.data(), &err));
                        OCL_CHECK(err, buffer_dout[3] = cl::Buffer(contexts[3], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_dout, src_dout.data(), &err));
                        OCL_CHECK(err, buffer_dout[4] = cl::Buffer(contexts[4], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_dout, src_dout.data(), &err));
                        OCL_CHECK(err, buffer_dout[5] = cl::Buffer(contexts[5], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_dout, src_dout.data(), &err));
                        OCL_CHECK(err, buffer_dout[6] = cl::Buffer(contexts[6], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_dout, src_dout.data(), &err));
                        OCL_CHECK(err, buffer_dout[7] = cl::Buffer(contexts[7], CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_dout, src_dout.data(), &err));

                        // set the kernel arguments
                        //OCL_CHECK(err, err = kerneldl.setArg(1, datay));
                        //OCL_CHECK(err, err = kerneldl.setArg(2, dout));
                        OCL_CHECK(err, err = kerneldl[0].setArg(2, buffer_dout[0]));
                        OCL_CHECK(err, err = kerneldl[1].setArg(2, buffer_dout[1]));
                        OCL_CHECK(err, err = kerneldl[2].setArg(2, buffer_dout[0]));
                        OCL_CHECK(err, err = kerneldl[3].setArg(2, buffer_dout[1]));
                        OCL_CHECK(err, err = kerneldl[4].setArg(2, buffer_dout[0]));
                        OCL_CHECK(err, err = kerneldl[5].setArg(2, buffer_dout[1]));
                        OCL_CHECK(err, err = kerneldl[6].setArg(2, buffer_dout[0]));
                        OCL_CHECK(err, err = kerneldl[7].setArg(2, buffer_dout[1]));


			//-------------------
			//backward in kernel
			//-------------------
			
			clock_t start2 = clock();

                        for (int d = 0; d < (int)device_count; d += 2) {
				//setting the device as BACKWARD_MODE
				OCL_CHECK(err, err = kerneldl[d].setArg(4, 2));
				OCL_CHECK(err, err = kerneldl[d+1].setArg(4, 4));


				//command queue for BACKWARD_MODE
				//OCL_CHECK(err, cl::CommandQueue q_backward(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

				//transfer activation data from system memmory over PCIe to the FPGA on-board DDR memory
				OCL_CHECK(err, err = q_backward[d].enqueueMigrateMemObjects({buffer_dout[0]}, 0 ));
				OCL_CHECK(err, err = q_backward[d+1].enqueueMigrateMemObjects({buffer_dout[1]}, 0 ));

				//boot the kernel
				OCL_CHECK(err, err = q_backward[d].enqueueTask(kerneldl[d], NULL, &events[d]));
				OCL_CHECK(err, err = q_backward[d+1].enqueueTask(kerneldl[d+1], NULL, &events[d+1]));

				if(count==500)
				{
					if(d==0)
					{
						//std::cout << "checking in host #5" << std::endl;
						OCL_CHECK(err, err = q_backward[d].enqueueMigrateMemObjects({buffer_result[0], wxf1, wxg1, wxi1, wxo1, whf1, whg1, whi1, who1, bf1, bg1, bi1, bo1, h_wxf1, h_wxg1, h_wxi1, h_wxo1, h_whf1, h_whg1, h_whi1, h_who1, h_bf1, h_bg1, h_bi1, h_bo1}, CL_MIGRATE_MEM_OBJECT_HOST));
						OCL_CHECK(err, err = q_backward[d+1].enqueueMigrateMemObjects({buffer_result[1], wxf21, wxg21, wxi21, wxo21, whf21, whg21, whi21, who21, bf21, bg21, bi21, bo21, h_wxf21, h_wxg21, h_wxi21, h_wxo21, h_whf21, h_whg21, h_whi21, h_who21, h_bf21, h_bg21, h_bi21, h_bo21}, CL_MIGRATE_MEM_OBJECT_HOST));
					}
					if(d==2)
					{
						OCL_CHECK(err, err = q_backward[d].enqueueMigrateMemObjects({buffer_result[0], wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf2, bg2, bi2, bo2, h_wxf2, h_wxg2, h_wxi2, h_wxo2, h_whf2, h_whg2, h_whi2, h_who2, h_bf2, h_bg2, h_bi2, h_bo2}, CL_MIGRATE_MEM_OBJECT_HOST));
						OCL_CHECK(err, err = q_backward[d+1].enqueueMigrateMemObjects({buffer_result[1], wxf22, wxg22, wxi22, wxo22, whf22, whg22, whi22, who22, bf22, bg22, bi22, bo22, h_wxf22, h_wxg22, h_wxi22, h_wxo22, h_whf22, h_whg22, h_whi22, h_who22, h_bf22, h_bg22, h_bi22, h_bo22}, CL_MIGRATE_MEM_OBJECT_HOST));
					}
					if(d==4)
					{
						OCL_CHECK(err, err = q_backward[d].enqueueMigrateMemObjects({buffer_result[0], wxf3, wxg3, wxi3, wxo3, whf3, whg3, whi3, who3, bf3, bg3, bi3, bo3, h_wxf3, h_wxg3, h_wxi3, h_wxo3, h_whf3, h_whg3, h_whi3, h_who3, h_bf3, h_bg3, h_bi3, h_bo3}, CL_MIGRATE_MEM_OBJECT_HOST));
						OCL_CHECK(err, err = q_backward[d+1].enqueueMigrateMemObjects({buffer_result[1], wxf23, wxg23, wxi23, wxo23, whf23, whg23, whi23, who23, bf23, bg23, bi23, bo23, h_wxf23, h_wxg23, h_wxi23, h_wxo23, h_whf23, h_whg23, h_whi23, h_who23, h_bf23, h_bg23, h_bi23, h_bo23}, CL_MIGRATE_MEM_OBJECT_HOST));
					}
					if(d==6)
					{
						OCL_CHECK(err, err = q_backward[d].enqueueMigrateMemObjects({buffer_result[0], wxf4, wxg4, wxi4, wxo4, whf4, whg4, whi4, who4, bf4, bg4, bi4, bo4, h_wxf4, h_wxg4, h_wxi4, h_wxo4, h_whf4, h_whg4, h_whi4, h_who4, h_bf4, h_bg4, h_bi4, h_bo4}, CL_MIGRATE_MEM_OBJECT_HOST));
						OCL_CHECK(err, err = q_backward[d+1].enqueueMigrateMemObjects({buffer_result[1], wxf24, wxg24, wxi24, wxo24, whf24, whg24, whi24, who24, bf24, bg24, bi24, bo24, h_wxf24, h_wxg24, h_wxi24, h_wxo24, h_whf24, h_whg24, h_whi24, h_who24, h_bf24, h_bg24, h_bi24, h_bo24}, CL_MIGRATE_MEM_OBJECT_HOST));
					}

				}else{
					OCL_CHECK(err, err = q_backward[d].enqueueMigrateMemObjects({buffer_result[0]}, CL_MIGRATE_MEM_OBJECT_HOST));
					OCL_CHECK(err, err = q_backward[d+1].enqueueMigrateMemObjects({buffer_result[1]}, CL_MIGRATE_MEM_OBJECT_HOST));
				}



			}

			dev = 0;

			start_backward = chrono::system_clock::now();
			for (auto queue : q_backward) {
				std::cout << "Waiting for work to finish on device " << dev++ << std::endl;
				OCL_CHECK(err, err = queue.flush());
				OCL_CHECK(err, err = queue.finish());
			}
			end_backward = chrono::system_clock::now();


			double time_back = static_cast<double>(chrono::duration_cast<chrono::microseconds>(end_backward-start_backward).count() /1000.0);
			outputfile << " backward  : " << time_back << " [ms]" << std::endl;

			//clock_t end2 = clock();

			//const double time2 = static_cast<double>(end2 - start2) / CLOCKS_PER_SEC * 1000.0;
			//outputfile << "time(backward) : " << time2 << "[ms]" << std::endl;
			//outputfile << "time(forward) + time(backward) : " << time+time2 << "[ms]" << std::endl;

			float buffer_outputx[975*320];
                        for(int i = 0; i < 75*320; ++i)
                        {
                                buffer_outputx[i] = src_buffer_output[i] + src_buffer_output_[i];
                        }

			//backward in host
			z->gradient2(buffer_outputx, y); //backward


			if(count%100==0)
			{
				outputfile << "loss : " << lossval/100 << std::endl;
				std::cout << "loss : " << lossval/100 << std::endl;
				loss_avg += lossval/100;
				lossval = 0;

				rmsprop opt;
				for(int i = 0; i < 320; ++i)
				{
					//std::cout << z->gradsw3[925*75+i];
					//std::cout << z->wxf[320*10+i];
					//std::cout << ": " << z->gradsw1[26*4+i];
				}

				opt.update(z->paramsw1, z->gradsw1, z->h1, 26*4*320);

				for(int i = 0; i < 33280; ++i)
				{
					if(isnan(z->gradsw1[i]) || isinf(z->gradsw1[i]))
					{
						//printf("gradsw1_error"); 
					}
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

				opt.update(z->paramsw2, z->gradsw2, z->h3, 75*640*925);
				opt.update(z->paramsb2, z->gradsb2, z->h4, 925);
				for(int i = 0; i < 75*925*640; ++i)
				{
					if(isnan(z->gradsw2[i]) || isinf(z->gradsw2[i]))
					{
						//printf("gradsw2_error"); 
					}
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
					/*
					if(isnan(z->gradsw3[i]) || isinf(z->gradsw3[i]))
					{
						printf("gradsw1_error"); 
					}
					//std::cout << z->paramsw3[i];
					//std::cout << z->gradsw3[i];
					z->gradsw3[i] = 0;
					*/
				}
				for(int i = 0; i < 919; ++i)
				{
					z->gradsb3[i] = 0;
				}


				/*
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


				//std::cout << "checkcheck" << std::endl;

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
					//std::cout << ": " << z->whg2[320*319+i];
					//std::cout << ": " << z->paramsw1[26*4+i];
					z->gradsbf[i] = 0;
					z->gradsbg[i] = 0;
					z->gradsbi[i] = 0;
					z->gradsbo[i] = 0;
					z->gradsbf2[i] = 0;
					z->gradsbg2[i] = 0;
					z->gradsbi2[i] = 0;
					z->gradsbo2[i] = 0;

				}
				*/


			}// if 100


		} //while
		outputfile << "epoch: " << ep+1 << " --------->    loss_avg : " << loss_avg/5 << std::endl;
		std::cout  << "epoch: " << ep+1 << " --------->    loss_avg : " << loss_avg/5 << std::endl;
		lossfile << ep+1 <<" " << loss_avg/5 << std::endl;
                loss_avg = 0;



		//saving waights and h
		std::cout  << "saving the parameters" << std::endl;




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


		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxf1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxf2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxf3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxf4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxg1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxg2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxg3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxg4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxi1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxi2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxi3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxi4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i) //10
		{
			weightsfile << z->wxo1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i) //10
		{
			weightsfile << z->wxo2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i) //10
		{
			weightsfile << z->wxo3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i) //10
		{
			weightsfile << z->wxo4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whf1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whf2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whf3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whf4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whg1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whg2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whg3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whg4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whi1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whi2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whi3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whi4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->who1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->who2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->who3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->who4[i] << ",";
		}
		weightsfile << std::endl;

		for(int i = 0; i <320*80; ++i) //15
		{
			weightsfile << z->wxf21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i) //15
		{
			weightsfile << z->wxf22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i) //15
		{
			weightsfile << z->wxf23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i) //15
		{
			weightsfile << z->wxf24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxg21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxg22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxg23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxg24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxi21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxi22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxi23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxi24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxo21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxo22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxo23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->wxo24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whf21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whf22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whf23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whf24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whg21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whg22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whg23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whg24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whi21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whi22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whi23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->whi24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->who21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->who22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->who23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->who24[i] << ",";
		}
		weightsfile << std::endl;

		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bf1[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bf2[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bf3[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bf4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bg1[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bg2[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bg3[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bg4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i) //25
		{
			weightsfile << z->bi1[i] << ",";
		}
		for(int i = 0; i < 80; ++i) //25
		{
			weightsfile << z->bi2[i] << ",";
		}
		for(int i = 0; i < 80; ++i) //25
		{
			weightsfile << z->bi3[i] << ",";
		}
		for(int i = 0; i < 80; ++i) //25
		{
			weightsfile << z->bi4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bo1[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bo2[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bo3[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bo4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bf21[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bf22[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bf23[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bf24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bg21[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bg22[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bg23[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bg24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bi21[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bi22[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bi23[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bi24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bo21[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bo22[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bo23[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->bo24[i] << ",";
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



		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxf1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxf2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxf3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxf4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxg1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxg2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxg3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxg4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxi1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxi2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxi3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxi4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i) //40
		{
			weightsfile << z->h_wxo1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i) //40
		{
			weightsfile << z->h_wxo2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i) //40
		{
			weightsfile << z->h_wxo3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i) //40
		{
			weightsfile << z->h_wxo4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whf1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whf2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whf3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whf4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whg1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whg2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whg3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whg4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whi1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whi2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whi3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whi4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_who1[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_who2[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_who3[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_who4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxf21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxf22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxf23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxf24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxg21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxg22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxg23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxg24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxi21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxi22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxi23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxi24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxo21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxo22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxo23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_wxo24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whf21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whf22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whf23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whf24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i) //50
		{
			weightsfile << z->h_whg21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i) //50
		{
			weightsfile << z->h_whg22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i) //50
		{
			weightsfile << z->h_whg23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i) //50
		{
			weightsfile << z->h_whg24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whi21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whi22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whi23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_whi24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_who21[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_who22[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_who23[i] << ",";
		}
		for(int i = 0; i <320*80; ++i)
		{
			weightsfile << z->h_who24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bf1[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bf2[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bf3[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bf4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bg1[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bg2[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bg3[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bg4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i) //55
		{
			weightsfile << z->h_bi1[i] << ",";
		}
		for(int i = 0; i < 80; ++i) //55
		{
			weightsfile << z->h_bi2[i] << ",";
		}
		for(int i = 0; i < 80; ++i) //55
		{
			weightsfile << z->h_bi3[i] << ",";
		}
		for(int i = 0; i < 80; ++i) //55
		{
			weightsfile << z->h_bi4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bo1[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bo2[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bo3[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bo4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bf21[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bf22[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bf23[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bf24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bg21[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bg22[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bg23[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bg24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bi21[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bi22[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bi23[i] << ",";
		}
		for(int i = 0; i < 80; ++i)
		{
			weightsfile << z->h_bi24[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 80; ++i) //60
		{
			weightsfile << z->h_bo21[i] << ",";
		}
		for(int i = 0; i < 80; ++i) //60
		{
			weightsfile << z->h_bo22[i] << ",";
		}
		for(int i = 0; i < 80; ++i) //60
		{
			weightsfile << z->h_bo23[i] << ",";
		}
		for(int i = 0; i < 80; ++i) //60
		{
			weightsfile << z->h_bo24[i] << ",";
		}
		weightsfile << std::endl;




		weightsfile.close();

		end = chrono::system_clock::now();

		double time = static_cast<double>(chrono::duration_cast<chrono::microseconds>(end-start).count() /1000.0);
		std::cout << "Time of Epochs " << ep+1 << " is ----> " << time << " [ms]" << std::endl;
		outputfile << "Time of Epochs " << ep+1 << " is ----> " << time << " [ms]" << std::endl;


	} //epochs


	//cnn::predict(float) x[4000], (float) y[975*320]);
	//predict(x, y);
	
	/*	
	for(int i = 0; i < 975*320; ++i)
	{
		std::cout << y[i];
	}
	*/	
	


	outputfile.close();
	lossfile.close();
	return 0;

} //main


cl::Program load_cl2_binary(cl::Program::Binaries bins,
                            cl::Device device,
                            cl::Context context) {
    cl_int err;
    std::vector<cl::Device> devices(1, device);
    OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));
    return program;
}


