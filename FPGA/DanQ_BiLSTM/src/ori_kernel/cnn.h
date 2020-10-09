//#include "hls_math.h"

#include "loss.h"
//#include "layers.h"
#include "optimizer.h"
#include "lstm.h"

#pragma once


class cnn 
{
public: 
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

	cnn()
	{

		for(int i = 0; i < 320*320; ++i)
		{
			wxf[i] = 2;
			wxg[i] = 2;
			wxi[i] = 2;
			wxo[i] = 2;
			gradswxf[i] = 0;
			gradswxg[i] = 0;
			gradswxi[i] = 0;
			gradswxo[i] = 0;
			wxf2[i] = 2;
			wxg2[i] = 2;
			wxi2[i] = 2;
			wxo2[i] = 2;
			gradswxf2[i] = 0;
			gradswxg2[i] = 0;
			gradswxi2[i] = 0;
			gradswxo2[i] = 0;

			whf[i] = 2;
			whg[i] = 2;
			whi[i] = 2;
			who[i] = 2;
			gradswhf[i] = 0;
			gradswhg[i] = 0;
			gradswhi[i] = 0;
			gradswho[i] = 0;
			whf2[i] = 2;
			whg2[i] = 2;
			whi2[i] = 2;
			who2[i] = 2;
			gradswhf2[i] = 0;
			gradswhg2[i] = 0;
			gradswhi2[i] = 0;
			gradswho2[i] = 0;




		}

		for(int i = 0; i < 320; ++i)
		{
			bf[i] = 2;
			bg[i] = 2;
			bi[i] = 2;
			bo[i] = 2;
			gradsbf[i] = 0;
			gradsbg[i] = 0;
			gradsbi[i] = 0;
			gradsbo[i] = 0;

			bf2[i] = 2;
			bg2[i] = 2;
			bi2[i] = 2;
			bo2[i] = 2;
			gradsbf2[i] = 0;
			gradsbg2[i] = 0;
			gradsbi2[i] = 0;
			gradsbo2[i] = 0;
		}
	}

	TimeBiLSTM e;

	//void predict(float* x, float* y, float* paramsw1, float* paramsb1)
	void predict(float *x, float *y)
	{
		e.forward(x, y, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf2, bg2, bi2, bo2); //BiLSTM


	}

	//void gradient(float* dout, float* gradsw1, float* gradsb1)
	void gradient(float *dout)
	{
		e.backward(dout, wxf, wxg, wxi, wxo, whf, whg, whi, who, gradswxf, gradswxg, gradswxi, gradswxo, gradswhf, gradswhg, gradswhi, gradswho, gradsbf, gradsbg, gradsbi, gradsbo, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, gradswxf2, gradswxg2, gradswxi2, gradswxo2, gradswhf2, gradswhg2, gradswhi2, gradswho2, gradsbf2, gradsbg2, gradsbi2, gradsbo2); // BiLSTM
	}
};


