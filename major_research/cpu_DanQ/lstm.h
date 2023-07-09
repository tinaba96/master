//#include "hls_math.h"
#include <math.h>
#include <stdio.h>
#include <iostream>

class LSTM
{
public:
	
	float f[320];
	float g[320];
	float i[320];
	float o[320];

	float cache[8*320];

	void forward(float* in, float* h_next, float* c_next, float* wxf, float* wxg, float* wxi, float* wxo, float* whf, float* whg, float* whi, float* who, float* bf, float* bg, float* bi, float* bo)
	{
		//N = 1, H = 320, D = 320
		//w.length = 320*320

		float c_prev[320];
		float h_prev[320];

		for(int k = 0; k < 320; k++)
		{
			c_prev[k] = c_next[k];
			h_prev[k] = h_next[k];
			f[k] = 0;
			g[k] = 0;
			i[k] = 0;
			o[k] = 0;
		}

		for(int i = 0; i < 320; i++)
		{
			for(int s = 0; s < 320; ++s)
			{
				f[s] += in[i]*wxf[320*i+s];
				f[s] += h_prev[i]*whf[320*i+s];
			}
			f[i] += bf[i];
		}	
		
		
		for(int i = 0; i < 320; i++)
		{
			for(int s = 0; s < 320; ++s)
			{
				g[s] += in[i]*wxg[320*i+s];
				g[s] += h_prev[i]*whg[320*i+s];
			}
			g[i] += bg[i];
		}	
		


		for(int k = 0; k < 320; k++)
		{
			for(int s = 0; s < 320; ++s)
			{
				i[s] += in[k]*wxi[320*k+s];
				i[s] += h_prev[k]*whi[320*k+s];
			}
			i[k] += bi[k];
		}	


		for(int i = 0; i < 320; i++)
		{
			for(int s = 0; s < 320; ++s)
			{
				o[s] += in[i]*wxo[320*i+s];
				o[s] += h_prev[i]*who[320*i+s];
			}
			o[i] += bo[i];
		}	


	

		for(int k = 0; k < 320; k++)
		{
			f[k] = 1.0/(1.0+exp(-f[k]));  // sigmoid
			g[k] = tanh(g[k]);
			i[k] = 1.0/(1.0+exp(-i[k]));  // sigmoid
			o[k] = 1.0/(1.0+exp(-o[k]));  // sigmoid
		}


		for(int k = 0; k < 320; k++)
		{
			c_next[k] = f[k]*c_prev[k] + g[k]*i[k];
			h_next[k] = o[k]*tanh(c_next[k]);
		}
		
		for(int i = 0; i < 320; i++)
		{
			cache[i] = in[i];
		}
		for(int i = 0; i < 320; i++)
		{
			cache[320+i] = h_prev[i];
		}
		for(int i = 0; i < 320; i++)
		{
			cache[320*2+i] = c_prev[i];
		}
		for(int k = 0; k < 320; k++)
		{
			cache[320*3+k] = i[k];
		}
		for(int i = 0; i < 320; i++)
		{
			cache[320*4+i] = f[i];
		}
		for(int i = 0; i < 320; i++)
		{
			cache[320*5+i] = g[i];
		}
		for(int i = 0; i < 320; i++)
		{
			cache[320*6+i] = o[i];
		}
		for(int i = 0; i < 320; i++)
		{
			cache[320*7+i] = c_next[i];
		}


	} //forward





	void backward(char flag, int t, float *dout, float *dh, float *hs, float *dc_next, float *wxf, float *wxg, float *wxi, float *wxo, float *whf, float *whg, float *whi, float *who, float *gradswxf, float *gradswxg, float *gradswxi, float *gradswxo, float *gradswhf, float *gradswhg, float *gradswhi, float *gradswho, float *gradsbf, float *gradsbg, float *gradsbi, float *gradsbo)
	{
		//N = 1, H = 320, D = 320
		//dout = 320
		
		float ds[320];
		float dc_prev[320];

		float di[320];
		float df[320];
		float dg[320];
		float do_[320];

		float x[320];

		float h_prev[320];
		float c_prev[320];
		float c_next[320];
		float dh_next[320];


		for(int k = 0; k < 320; k++)
		{
			x[k] = cache[k];
			h_prev[k] = cache[320+k];
			c_prev[k] = cache[320*2+k];
			i[k] = cache[320*3+k];
			f[k] = cache[320*4+k];
			g[k] = cache[320*5+k];
			o[k] = cache[320*6+k];
			c_next[k] = cache[320*7+k];

			if(flag == 'o')
			{
				dh_next[k] = hs[(2*t)*320+k] + dh[k];
			}else{
				dh_next[k] = hs[(2*(74-t)+1)*320+k] + dh[k];
			}
			
			dh[k] = 0;
		}



		one:for(int k = 0; k < 320; k++)
		{

			
			ds[k] = dc_next[k] + dh_next[k]*o[k]*(1-tanh(c_next[k])*tanh(c_next[k])); //dh_next
			

			dc_next[k] = ds[k]*f[k]; 


			di[k] = ds[k]*g[k] * i[k] * (1-i[k]);
			
			
			df[k] = ds[k] * c_prev[k] * f[k] * (1-f[k]);


			do_[k] = dh_next[k]*tanh(c_next[k]) * o[k] * (1-o[k]);


			dg[k] = ds[k]*i[k] * (1-g[k]*g[k]);

		}


		two:for(int j = 0; j < 320; j++)
		{

			for(int k = 0; k < 320; k++)
			{

				gradswxf[320*j+k] += h_prev[j]*df[k];
				gradswxg[320*j+k] += h_prev[j]*dg[k];
				gradswxi[320*j+k] += h_prev[j]*di[k];
				gradswxo[320*j+k] += h_prev[j]*do_[k];

				gradswhf[320*j+k] += x[j]*df[k]; //ok
				gradswhg[320*j+k] += x[j]*dg[k]; //ok
				gradswhi[320*j+k] += x[j]*di[k]; //ok
				gradswho[320*j+k] += x[j]*do_[k]; //here
				
			}

			gradsbf[j] += df[j];
			gradsbg[j] += dg[j];
			gradsbi[j] += di[j];
			gradsbo[j] += do_[j];

		}


		
		for(int i =0; i < 320; i++)
		{
			dh[i] = 0;
		}

			

		three:for(int k =0; k < 320; k++)
		{
			for(int i = 0; i < 320; i++)
			{

				dout[320*t+k] += di[i]*wxi[320*k+i] + df[i]*wxf[320*k+i] + do_[i]*wxo[320*k+i] + dg[i]*wxg[320*k+i]; 


				//dh_prev = dh_next -> dh
				dh[k] += di[i]*whi[320*k+i] + df[i]*whf[320*k+i] + do_[i]*who[320*k+i] + dg[i]*whg[320*k+i];

			
			}
		} //320
	} //backward	

};





class TimeBiLSTM
{
public:
	float hs[75*640];  //final output

	LSTM lstm[75];
	LSTM lstm2[75];


	//void forward(float* xs, float* hs)
	void forward(float* xs, float* hs, float* wxf, float* wxg, float* wxi, float* wxo, float* whf, float* whg, float* whi, float* who, float* bf, float* bg, float* bi, float* bo, float* wxf2, float* wxg2, float* wxi2, float* wxo2, float* whf2, float* whg2, float* whi2, float* who2, float* bf2, float* bg2, float* bi2, float* bo2)
	{

		float h_next[320];
		float c_next[320];
		for(int i = 0; i < 320; i++)
		{ 
			h_next[i] = 0;
			c_next[i] = 0;
		}

		for(int t = 0; t < 75; t++)
		{

			float in[320];
			for(int s = 0; s < 320; s++)
			{
				in[s] = xs[t*320+s];	
			}

			lstm[t].forward(in, h_next, c_next, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo);

			for(int s = 0; s < 320; s++)
			{
				hs[(2*t)*320+s] = h_next[s];
			}


		}//75


		float in_rev[320];

		for(int i = 0; i < 320; i++)
		{ 
			h_next[i] = 0;
			c_next[i] = 0;
		}
		for (int t = 0; t < 75; t++)
		{
			for(int s = 0 ; s < 320; s++)
			{
				in_rev[s] = xs[(74-t)*320+s];
			}


			//backward BiLSTM
			lstm2[t].forward(in_rev, h_next, c_next, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf2, bg2, bi2, bo2);

			for(int s = 0; s < 320; s++)
			{
				hs[(2*(74-t)+1)*320+s] = h_next[s];
			}


		}//75


	}

	//void backward(float* dhs, float* dout)
	void backward(float* dout, float* wxf, float* wxg, float* wxi, float* wxo, float* whf, float* whg, float* whi, float* who, float* gradswxf, float* gradswxg, float* gradswxi, float* gradswxo, float* gradswhf, float* gradswhg, float* gradswhi, float* gradswho, float* gradsbf, float* gradsbg, float* gradsbi, float* gradsbo, float* wxf2, float* wxg2, float* wxi2, float* wxo2, float* whf2, float* whg2, float* whi2, float* who2, float* gradswxf2, float* gradswxg2, float* gradswxi2, float* gradswxo2, float* gradswhf2, float* gradswhg2, float* gradswhi2, float* gradswho2, float* gradsbf2, float* gradsbg2, float* gradsbi2, float* gradsbo2)
	{

		float dc[320];  //dc_prev
		float dh[320]; 
		float hsdh[320];

		for(int s = 0; s < 75*640; s++)
		{
			hs[s] = dout[s];
			dout[s] = 0;
		}

		for(int s = 0; s < 320; s++)
		{
			dc[s] = 0;
			dh[s] = 0;
		}

		char flag;

		flag = 'o';

		loopf:for(int t = 0; t < 75; t++)
		{

			//hs+dh=dout
			lstm[74-t].backward(flag, 74-t, dout, dh, hs, dc, wxf, wxg, wxi, wxo, whf, whg, whi, who, gradswxf, gradswxg, gradswxi, gradswxo, gradswhf, gradswhg, gradswhi, gradswho, gradsbf, gradsbg, gradsbi, gradsbo);


		} //75

		for(int s = 0; s < 320; s++)
		{
			dc[s] = 0;
			dh[s] = 0;
		}

		flag = 't';

		loops:for(int t = 0; t < 75; t++)
		{
			//hs+dh=dout
			lstm2[74-t].backward(flag, t, dout, dh, hs, dc, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, gradswxf2, gradswxg2, gradswxi2, gradswxo2, gradswhf2, gradswhg2, gradswhi2, gradswho2, gradsbf2, gradsbg2, gradsbi2, gradsbo2);

		} //75

	} //backward
};









