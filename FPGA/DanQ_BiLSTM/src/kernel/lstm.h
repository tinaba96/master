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

	// input_dim = 320
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
		


		for(int k = 0; k < 320; k++)
		{
			cache[k] = in[k];
			cache[320+k] = h_prev[k];
			cache[320*2+k] = c_prev[k];
			cache[320*3+k] = i[k];
			cache[320*4+k] = f[k];
			cache[320*5+k] = g[k];
			cache[320*6+k] = o[k];
			cache[320*7+k] = c_next[k];
		}


	} //forward





	void backward(int t, float* dout, float* dh, float* dh_next, float* dc_next, float* wxf, float* wxg, float* wxi, float* wxo, float* whf, float* whg, float* whi, float* who, float* gradswxf, float* gradswxg, float* gradswxi, float* gradswxo, float* gradswhf, float* gradswhg, float* gradswhi, float* gradswho, float* gradsbf, float* gradsbg, float* gradsbi, float* gradsbo)
	{
		//N = 1, H = 320, D = 320
		//dout = 320
	
		

		float tanh_c_next[320];
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
		}




		for(int j = 0; j < 320; j++)
		{

			tanh_c_next[j] = tanh(c_next[j]);
			
			ds[j] = dc_next[j] + dh_next[j]*o[j]*(1-tanh_c_next[j]*tanh_c_next[j]);
			

			dc_next[j] = ds[j]*f[j];  //here


			di[j] = ds[j]*g[j];
			
			
	

			df[j] = ds[j] * c_prev[j];
			do_[j] = dh_next[j]*tanh_c_next[j];
			dg[j] = ds[j]*i[j];

			di[j] *= i[j] * (1-i[j]);
			df[j] *= f[j] * (1-f[j]);
			do_[j] *= o[j] * (1-o[j]);  // here, I had a big problem of calculating 0*0.
			dg[j] *= (1-g[j]*g[j]);

		}


		for(int j = 0; j < 320; j++)
		{

			for(int k = 0; k < 320; k++)
			{

				gradswxf[320*j+k] += h_prev[j]*df[k]; //here
				gradswxg[320*j+k] += h_prev[j]*dg[k]; //here
				gradswxi[320*j+k] += h_prev[j]*di[k]; //here
				gradswxo[320*j+k] += h_prev[j]*do_[k]; //here

				gradswhf[320*j+k] += x[j]*df[k]; //here
				gradswhg[320*j+k] += x[j]*dg[k]; //here
				gradswhi[320*j+k] += x[j]*di[k]; //here
				gradswho[320*j+k] += x[j]*do_[k]; //here
				
			}

			gradsbf[j] += df[j]; //here
			gradsbg[j] += dg[j]; //here
			gradsbi[j] += di[j]; //here
			gradsbo[j] += do_[j]; //here

		}



			
		for(int j = 0; j < 320; j++)
		{
			dh[j] = 0;
		}

		for(int k =0; k < 320; k++)
		{
			for(int i = 0; i < 320; i++)
			{

				dout[320*t+i] += di[i]*wxi[320*i+k];
				dout[320*t+i] += df[i]*wxf[320*i+k];
				dout[320*t+i] += do_[i]*wxo[320*i+k];
				dout[320*t+i] += dg[i]*wxg[320*i+k];

				//dh_prev = dh_next -> dh
				
				dh[i] += di[i]*whi[320*i+k];

				dh[i] += df[i]*whf[320*i+k];

				dh[i] += do_[i]*who[320*i+k];

				dh[i] += dg[i]*whg[320*i+k];

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
				//hs[t*320+i] = h[i]
				hs[(2*(74-t)+1)*320+s] = h_next[s];
			}
		}//75
	}

	//void backward(float* dhs, float* dout)
	void backward(float* dout, float* wxf, float* wxg, float* wxi, float* wxo, float* whf, float* whg, float* whi, float* who, float* gradswxf, float* gradswxg, float* gradswxi, float* gradswxo, float* gradswhf, float* gradswhg, float* gradswhi, float* gradswho, float* gradsbf, float* gradsbg, float* gradsbi, float* gradsbo, float* wxf2, float* wxg2, float* wxi2, float* wxo2, float* whf2, float* whg2, float* whi2, float* who2, float* gradswxf2, float* gradswxg2, float* gradswxi2, float* gradswxo2, float* gradswhf2, float* gradswhg2, float* gradswhi2, float* gradswho2, float* gradsbf2, float* gradsbg2, float* gradsbi2, float* gradsbo2)
	{
		//dout = dhs
	
		float dh[320];  //dh_prev
		float dc[320];  //dc_prev

		for(int s = 0; s < 320; s++)
		{
			dh[s] = 0;
			dc[s] = 0;
		}

		for(int s = 0; s < 75*640; s++)
		{
			hs[s] = dout[s];
			dout[s] = 0;
		}

		for(int t = 0; t < 75; t++)
		{
			float hsdh[320];

			for(int s = 0; s < 320; s++)
			{

				hsdh[s] = hs[(2*(74-t))*320+s] + dh[s];
				
			}

			//hs+dh=dout
			lstm[74-t].backward(74-t, dout, dh, hsdh, dc, wxf, wxg, wxi, wxo, whf, whg, whi, who, gradswxf, gradswxg, gradswxi, gradswxo, gradswhf, gradswhg, gradswhi, gradswho, gradsbf, gradsbg, gradsbi, gradsbo);

		}

		for(int s = 0; s < 320; s++)
		{
			dh[s] = 0;
			dc[s] = 0;
		}

		for(int t = 0; t < 75; t++)
		{

			float hsdh[320];

			for(int s = 0; s < 320; s++)
			{
				hsdh[s] = hs[(2*(74-t)+1)*320+s] + dh[s];
			}

			//hs+dh=dout
			lstm2[74-t].backward(t, dout, dh, hsdh, dc, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, gradswxf2, gradswxg2, gradswxi2, gradswxo2, gradswhf2, gradswhg2, gradswhi2, gradswho2, gradsbf2, gradsbg2, gradsbi2, gradsbo2);


		} //75
	} //backward
};


