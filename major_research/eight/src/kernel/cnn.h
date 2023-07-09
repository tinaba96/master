#include "ap_int.h"
#include <math.h>
#include <stdio.h>
#include <iostream>

#include "loss.h"
#include "optimizer.h"

#pragma once



class LSTM
{
public:
	
	ap_fixed<16, 4, AP_RND, AP_SAT> f[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> g[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> i[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> o[320];

	ap_fixed<16, 4, AP_RND, AP_SAT> cache[8*320];

	//ap_fixed<16, 4, AP_RND, AP_SAT> dh[320]; 

	// input_dim = 320
	void forward(int slot_num, char flag, int t, ap_fixed<16, 4, AP_RND, AP_SAT> *x, ap_fixed<16, 4, AP_RND, AP_SAT> *y, ap_fixed<16, 4, AP_RND, AP_SAT> *h_next, ap_fixed<16, 4, AP_RND, AP_SAT> *c_next, ap_fixed<16, 4, AP_RND, AP_SAT> *wxf, ap_fixed<16, 4, AP_RND, AP_SAT> *wxg, ap_fixed<16, 4, AP_RND, AP_SAT> *wxi, ap_fixed<16, 4, AP_RND, AP_SAT> *wxo, ap_fixed<16, 4, AP_RND, AP_SAT> *whf, ap_fixed<16, 4, AP_RND, AP_SAT> *whg, ap_fixed<16, 4, AP_RND, AP_SAT> *whi, ap_fixed<16, 4, AP_RND, AP_SAT> *who, ap_fixed<16, 4, AP_RND, AP_SAT> *bf, ap_fixed<16, 4, AP_RND, AP_SAT> *bg, ap_fixed<16, 4, AP_RND, AP_SAT> *bi, ap_fixed<16, 4, AP_RND, AP_SAT> *bo)
	{
		//N = 1, H = 320, D = 320
		//w.length = 320*320
		
		ap_fixed<16, 4, AP_RND, AP_SAT> in[320];
		if(flag == 'o')
		{
			for(int s = 0; s < 80; s++)
			{
				in[s] = x[t*320 + 80*slot_num+s];	
			}
		}else{
			for(int s = 0 ; s < 80; s++)
			{
				//in_rev[s] = x[(74-t)*320+s];
				in[s] = x[(74-t)*320 + 80*slot_num+s];
			}


		}

		ap_fixed<16, 4, AP_RND, AP_SAT> c_prev[320];
		ap_fixed<16, 4, AP_RND, AP_SAT> h_prev[320];

		for(int k = 0; k < 80; k++)
		{
			c_prev[k] = c_next[80*slot_num+k];
			h_prev[k] = h_next[80*slot_num+k];
			f[80*slot_num+k] = 0;
			g[80*slot_num+k] = 0;
			i[80*slot_num+k] = 0;
			o[80*slot_num+k] = 0;
		}

		for(int k = 0; k < 80; k++)
		{
			for(int s = 0; s < 320; ++s)
			{
				//f[s] += in[k]*wxf[320*(80*slot_num+k) + s];
				//f[s] += h_prev[k]*whf[320*(80*slot_num+k) + s];
				f[s] += in[k]*wxf[320*k + s];
				f[s] += h_prev[k]*whf[320*k + s];

				//g[s] += in[k]*wxg[320*(80*slot_num+k) + s];
				//g[s] += h_prev[k]*whg[320*(80*slot_num+k) + s];
				g[s] += in[k]*wxg[320*k + s];
				g[s] += h_prev[k]*whg[320*k + s];

				//i[s] += in[k]*wxi[320*(80*slot_num+k) + s];
				//i[s] += h_prev[k]*whi[320*(80*slot_num+k) + s];
				i[s] += in[k]*wxi[320*k + s];
				i[s] += h_prev[k]*whi[320*k + s];

				//o[s] += in[k]*wxo[320*(80*slot_num+k) + s];
				//o[s] += h_prev[k]*who[320*(80*slot_num+k) + s];
				o[s] += in[k]*wxo[320*k + s];
				o[s] += h_prev[k]*who[320*k + s];

			}

			/*
			f[80*slot_num+k] += bf[80*slot_num+k];
			g[80*slot_num+k] += bg[80*slot_num+k];
			i[80*slot_num+k] += bi[80*slot_num+k];
			o[80*slot_num+k] += bo[80*slot_num+k];
			*/
			f[80*slot_num+k] += bf[80*slot_num+k];
			g[80*slot_num+k] += bg[80*slot_num+k];
			i[80*slot_num+k] += bi[80*slot_num+k];
			o[80*slot_num+k] += bo[80*slot_num+k];
		}	
		

		for(int k = 0; k < 80; k++)
		{

			float temp;
			float ftemp;
			ftemp = f[80*slot_num+k];
			temp = exp(-ftemp);
			//f[k] = 1.0/(1.0+exp(-f[k]));  // sigmoid
			f[80*slot_num+k] = 1/(1+temp);  // sigmoid
			ftemp = g[80*slot_num+k];
			g[80*slot_num+k] = tanh(ftemp);
			//g[k] = tanh(g[k]);
			ftemp = i[80*slot_num+k];
			i[80*slot_num+k] = 1.0/(1.0+exp(-ftemp));  // sigmoid
			//i[k] = 1.0/(1.0+exp(-i[k]));  // sigmoid
			ftemp = o[80*slot_num+k];
			o[80*slot_num+k] = 1.0/(1.0+exp(-ftemp));  // sigmoid
			//o[k] = 1.0/(1.0+exp(-o[k]));  // sigmoid




			c_next[80*slot_num+k] = f[80*slot_num+k]*c_prev[80*slot_num+k] + g[80*slot_num+k]*i[80*slot_num+k];
			float temp2;
			float temp3;
			ftemp = c_next[80*slot_num+k];
			temp = o[80*slot_num+k];
			//h_next[k] = o[k]*tanh(c_next[k]);
			temp3 = tanh(ftemp);
			h_next[80*slot_num+k] = temp*temp3;


			cache[80*slot_num+k] = in[k];
			cache[320+80*slot_num+k] = h_prev[k];
			cache[320*2+80*slot_num+k] = c_prev[k];
			cache[320*3+80*slot_num+k] = i[80*slot_num+k];
			cache[320*4+80*slot_num+k] = f[80*slot_num+k];
			cache[320*5+80*slot_num+k] = g[80*slot_num+k];
			cache[320*6+80*slot_num+k] = o[80*slot_num+k];
			cache[320*7+80*slot_num+k] = c_next[80*slot_num+k];
		}


		if(flag == 'o')
		{
			for(int s = 0; s < 80; s++)
			{
				y[(2*t)*320+80*slot_num+s] = h_next[80*slot_num+s];
				//y[(2*t)*320+s] = 3;
			}
		}else{
			for(int s = 0; s < 80; s++)
			{
				//hs[t*320+i] = h[i]
				y[(2*(74-t)+1)*320+80*slot_num+s] = h_next[80*slot_num+s];
				//y[(2*(74-t)+1)*320+s] = 3;
			}
		}



	} //forward





	void backward(int slot_num, char flag, int t, ap_fixed<16, 4, AP_RND, AP_SAT> *dout, ap_fixed<16, 4, AP_RND, AP_SAT> *dh, ap_fixed<16, 4, AP_RND, AP_SAT> *hs, ap_fixed<16, 4, AP_RND, AP_SAT> *dc_next, ap_fixed<16, 4, AP_RND, AP_SAT> *wxf, ap_fixed<16, 4, AP_RND, AP_SAT> *wxg, ap_fixed<16, 4, AP_RND, AP_SAT> *wxi, ap_fixed<16, 4, AP_RND, AP_SAT> *wxo, ap_fixed<16, 4, AP_RND, AP_SAT> *whf, ap_fixed<16, 4, AP_RND, AP_SAT> *whg, ap_fixed<16, 4, AP_RND, AP_SAT> *whi, ap_fixed<16, 4, AP_RND, AP_SAT> *who, ap_fixed<16, 4, AP_RND, AP_SAT> *gradswxf, ap_fixed<16, 4, AP_RND, AP_SAT> *gradswxg, ap_fixed<16, 4, AP_RND, AP_SAT> *gradswxi, ap_fixed<16, 4, AP_RND, AP_SAT> *gradswxo, ap_fixed<16, 4, AP_RND, AP_SAT> *gradswhf, ap_fixed<16, 4, AP_RND, AP_SAT> *gradswhg, ap_fixed<16, 4, AP_RND, AP_SAT> *gradswhi, ap_fixed<16, 4, AP_RND, AP_SAT> *gradswho, ap_fixed<16, 4, AP_RND, AP_SAT> *gradsbf, ap_fixed<16, 4, AP_RND, AP_SAT> *gradsbg, ap_fixed<16, 4, AP_RND, AP_SAT> *gradsbi, ap_fixed<16, 4, AP_RND, AP_SAT> *gradsbo)
	{
		//N = 1, H = 320, D = 320
		//dout = 320
			
		//#pragma HLS pipleine II=1	
		



		ap_fixed<16, 4, AP_RND, AP_SAT> ds[80];
		ap_fixed<16, 4, AP_RND, AP_SAT> dc_prev[80];

		ap_fixed<16, 4, AP_RND, AP_SAT> di[80];
		ap_fixed<16, 4, AP_RND, AP_SAT> df[80];
		ap_fixed<16, 4, AP_RND, AP_SAT> dg[80];
		ap_fixed<16, 4, AP_RND, AP_SAT> do_[80];

		ap_fixed<16, 4, AP_RND, AP_SAT> x[320];

		ap_fixed<16, 4, AP_RND, AP_SAT> h_prev[320];
		ap_fixed<16, 4, AP_RND, AP_SAT> c_prev[320];
		ap_fixed<16, 4, AP_RND, AP_SAT> c_next[320];
		ap_fixed<16, 4, AP_RND, AP_SAT> dh_next[320];


		for(int k = 0; k < 80; k++)
		{
			x[k] = cache[k];
			h_prev[k] = cache[320+80*slot_num+k];
			c_prev[k] = cache[320*2+80*slot_num+k];
			i[k] = cache[320*3+80*slot_num+k];
			f[k] = cache[320*4+80*slot_num+k];
			g[k] = cache[320*5+80*slot_num+k];
			o[k] = cache[320*6+80*slot_num+k];
			c_next[k] = cache[320*7+80*slot_num+k];

			if(flag == 'o')
			{
				dh_next[k] = hs[(2*t)*320+80*slot_num+k] + dh[k];
			}else{
				dh_next[k] = hs[(2*(74-t)+1)*320+80*slot_num+k] + dh[k];
			}
	
			dh[k] = 0;
		}



		one:for(int k = 0; k < 80; k++)
		{

			
			ap_fixed<16, 4, AP_RND, AP_SAT> temp;
			ap_fixed<16, 4, AP_RND, AP_SAT> temp2;
			ap_fixed<16, 4, AP_RND, AP_SAT> temp3;
			ap_fixed<16, 4, AP_RND, AP_SAT> temp4;
			float ftemp;
			ftemp = c_next[k]; 
			temp = tanh(ftemp);
			temp2 = o[80*slot_num+k];
			temp3 = dc_next[k];
			temp4 = dh_next[k];
			//ds[k] = dc_next[k] + dh_next[k]*o[k]*(1-tanh(c_next[k])*tanh(c_next[k])); //dh_next
			ds[k] = temp3 + temp4*temp2*(1-temp*temp); 
			

			dc_next[80*slot_num+k] = ds[k]*f[80*slot_num+k]; 


			di[k] = ds[k]*g[80*slot_num+k] * i[80*slot_num+k] * (1-i[80*slot_num+k]);
			
			df[k] = ds[k] * c_prev[k] * f[80*slot_num+k] * (1-f[80*slot_num+k]);


			//do_[k] = dh_next[k]*tanh(c_next[k]) * o[k] * (1-o[k]);
			do_[k] = temp4*temp * temp2 * (1-temp2);


			dg[k] = ds[k]*i[80*slot_num+k] * (1-g[80*slot_num+k]*g[80*slot_num+k]);

		}


		two:for(int j = 0; j < 320; j++)
		{

			for(int k = 0; k < 80; k++)
			{
				gradswxf[320*j+80*slot_num+k] += h_prev[j]*df[k];
				gradswxg[320*j+80*slot_num+k] += h_prev[j]*dg[k];
				gradswxi[320*j+80*slot_num+k] += h_prev[j]*di[k];
				gradswxo[320*j+80*slot_num+k] += h_prev[j]*do_[k];

				gradswhf[320*j+80*slot_num+k] += x[j]*df[k]; //ok
				gradswhg[320*j+80*slot_num+k] += x[j]*dg[k]; //ok
				gradswhi[320*j+80*slot_num+k] += x[j]*di[k]; //ok
				gradswho[320*j+80*slot_num+k] += x[j]*do_[k]; //here
			}

			gradsbf[80*slot_num+j] += df[j];
			gradsbg[80*slot_num+j] += dg[j];
			gradsbi[80*slot_num+j] += di[j];
			gradsbo[80*slot_num+j] += do_[j];

		}




			

		three:for(int k =0; k < 320; k++)
		{
			for(int i = 0; i < 80; i++)
			{

				dout[320*t+80*slot_num+i] += di[i]*wxi[320*i+k] + df[i]*wxf[320*i+k] + do_[i]*wxo[320*i+k] + dg[i]*wxg[320*i+k]; //a little


				//dh_prev = dh_next -> dh
				
				dh[80*slot_num+i] += di[i]*whi[320*i+k] + df[i]*whf[320*i+k] + do_[i]*who[320*i+k] + dg[i]*whg[320*i+k];

			
			}
		} //320
	} //backward	

};




class cnn 
{
public: 
	//for LSTM
	/*
	ap_fixed<16, 4, AP_RND, AP_SAT> wxf[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxg[320*320]; 
	ap_fixed<16, 4, AP_RND, AP_SAT> wxi[320*320];  
	ap_fixed<16, 4, AP_RND, AP_SAT> wxo[320*320];
	*/
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswxf[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswxg[320*320]; 
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswxi[320*320];  
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswxo[320*320];
	/*
	ap_fixed<16, 4, AP_RND, AP_SAT> wxf2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxg2[320*320]; 
	ap_fixed<16, 4, AP_RND, AP_SAT> wxi2[320*320];  
	ap_fixed<16, 4, AP_RND, AP_SAT> wxo2[320*320];
	*/
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswxf2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswxg2[320*320]; 
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswxi2[320*320];  
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswxo2[320*320];

	/*
	ap_fixed<16, 4, AP_RND, AP_SAT> whf[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whg[320*320]; 
	ap_fixed<16, 4, AP_RND, AP_SAT> whi[320*320];  
	ap_fixed<16, 4, AP_RND, AP_SAT> who[320*320];
	*/
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswhf[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswhg[320*320]; 
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswhi[320*320];  
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswho[320*320];
	/*
	ap_fixed<16, 4, AP_RND, AP_SAT> whf2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whg2[320*320]; 
	ap_fixed<16, 4, AP_RND, AP_SAT> whi2[320*320];  
	ap_fixed<16, 4, AP_RND, AP_SAT> who2[320*320];
	*/
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswhf2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswhg2[320*320]; 
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswhi2[320*320];  
	ap_fixed<16, 4, AP_RND, AP_SAT> gradswho2[320*320];


	/*
	ap_fixed<16, 4, AP_RND, AP_SAT> bf[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bg[320]; 
	ap_fixed<16, 4, AP_RND, AP_SAT> bi[320];  
	ap_fixed<16, 4, AP_RND, AP_SAT> bo[320];
	*/
	ap_fixed<16, 4, AP_RND, AP_SAT> gradsbf[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> gradsbg[320]; 
	ap_fixed<16, 4, AP_RND, AP_SAT> gradsbi[320];  
	ap_fixed<16, 4, AP_RND, AP_SAT> gradsbo[320];
	/*
	ap_fixed<16, 4, AP_RND, AP_SAT> bf2[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bg2[320]; 
	ap_fixed<16, 4, AP_RND, AP_SAT> bi2[320];  
	ap_fixed<16, 4, AP_RND, AP_SAT> bo2[320];
	*/
	ap_fixed<16, 4, AP_RND, AP_SAT> gradsbf2[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> gradsbg2[320]; 
	ap_fixed<16, 4, AP_RND, AP_SAT> gradsbi2[320];  
	ap_fixed<16, 4, AP_RND, AP_SAT> gradsbo2[320];


	/*
	ap_fixed<18, 6, AP_RND, AP_SAT> h_wxf[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_wxg[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_wxi[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_wxo[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_whf[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_whg[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_whi[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_who[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_bf[320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_bg[320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_bi[320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_bo[320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_wxf2[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_wxg2[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_wxi2[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_wxo2[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_whf2[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_whg2[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_whi2[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_who2[320*320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_bf2[320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_bg2[320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_bi2[320];
	ap_fixed<18, 6, AP_RND, AP_SAT> h_bo2[320];
	*/






	cnn()
	{
		for(int i = 0; i < 320*320; ++i)
		{
			/*
			wxf[i] = 1;
			wxg[i] = 1;
			wxi[i] = 1;
			wxo[i] = 1;
			*/
			gradswxf[i] = 0;
			gradswxg[i] = 0;
			gradswxi[i] = 0;
			gradswxo[i] = 0;
			/*
			wxf2[i] = 1;
			wxg2[i] = 1;
			wxi2[i] = 1;
			wxo2[i] = 1;
			*/
			gradswxf2[i] = 0;
			gradswxg2[i] = 0;
			gradswxi2[i] = 0;
			gradswxo2[i] = 0;

			/*
			whf[i] = 1;
			whg[i] = 1;
			whi[i] = 1;
			who[i] = 1;
			*/
			gradswhf[i] = 0;
			gradswhg[i] = 0;
			gradswhi[i] = 0;
			gradswho[i] = 0;
			/*
			whf2[i] = 1;
			whg2[i] = 1;
			whi2[i] = 1;
			who2[i] = 1;
			*/
			gradswhf2[i] = 0;
			gradswhg2[i] = 0;
			gradswhi2[i] = 0;
			gradswho2[i] = 0;




		}

		for(int i = 0; i < 320; ++i)
		{
			/*
			bf[i] = 1;
			bg[i] = 1;
			bi[i] = 1;
			bo[i] = 1;
			*/
			gradsbf[i] = 0;
			gradsbg[i] = 0;
			gradsbi[i] = 0;
			gradsbo[i] = 0;
			/*
			bf2[i] = 1;
			bg2[i] = 1;
			bi2[i] = 1;
			bo2[i] = 1;
			*/
			gradsbf2[i] = 0;
			gradsbg2[i] = 0;
			gradsbi2[i] = 0;
			gradsbo2[i] = 0;
		}
	}


	ap_fixed<16, 4, AP_RND, AP_SAT> hs[75*640];  //final output

	LSTM lstm[76];
	LSTM lstm2[76];



	//void predict(ap_fixed<16, 4, AP_RND, AP_SAT>* x, ap_fixed<16, 4, AP_RND, AP_SAT>* y, ap_fixed<16, 4, AP_RND, AP_SAT>* paramsw1, ap_fixed<16, 4, AP_RND, AP_SAT>* paramsb1)
	void predictf(int slot_num, ap_fixed<16, 4, AP_RND, AP_SAT> *x, ap_fixed<16, 4, AP_RND, AP_SAT> *y, ap_fixed<16, 4, AP_RND, AP_SAT> *wxf, ap_fixed<16, 4, AP_RND, AP_SAT> *wxg, ap_fixed<16, 4, AP_RND, AP_SAT> *wxi, ap_fixed<16, 4, AP_RND, AP_SAT> *wxo, ap_fixed<16, 4, AP_RND, AP_SAT> *whf, ap_fixed<16, 4, AP_RND, AP_SAT> *whg, ap_fixed<16, 4, AP_RND, AP_SAT> *whi, ap_fixed<16, 4, AP_RND, AP_SAT> *who, ap_fixed<16, 4, AP_RND, AP_SAT> *bf, ap_fixed<16, 4, AP_RND, AP_SAT> *bg, ap_fixed<16, 4, AP_RND, AP_SAT> *bi, ap_fixed<16, 4, AP_RND, AP_SAT> *bo)



	{
		#pragma HLS RESOURCE variable=wxf  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=wxg  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=wxi  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=who  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=whf  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=whg  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=whi  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=who  core=XPM_MEMORY uram // utilizes URAM

		/*
		#pragma HLS RESOURCE variable=wxf2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=wxg2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=wxi2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=wxo2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=whf2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=whg2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=whi2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=who2  core=XPM_MEMORY uram // utilizes URAM

		#pragma HLS RESOURCE variable=bf  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bg  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bi  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bo  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bf2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bg2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bi2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bo2  core=XPM_MEMORY uram // utilizes URAM
		*/

		//e.forward(x, y, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf2, bg2, bi2, bo2); //BiLSTM

	//void forward(ap_fixed<16, 4, AP_RND, AP_SAT> *xs, ap_fixed<16, 4, AP_RND, AP_SAT> *hs, ap_fixed<16, 4, AP_RND, AP_SAT> *wxf, ap_fixed<16, 4, AP_RND, AP_SAT> *wxg, ap_fixed<16, 4, AP_RND, AP_SAT> *wxi, ap_fixed<16, 4, AP_RND, AP_SAT> *wxo, ap_fixed<16, 4, AP_RND, AP_SAT> *whf, ap_fixed<16, 4, AP_RND, AP_SAT> *whg, ap_fixed<16, 4, AP_RND, AP_SAT> *whi, ap_fixed<16, 4, AP_RND, AP_SAT> *who, ap_fixed<16, 4, AP_RND, AP_SAT> *bf, ap_fixed<16, 4, AP_RND, AP_SAT> *bg, ap_fixed<16, 4, AP_RND, AP_SAT> *bi, ap_fixed<16, 4, AP_RND, AP_SAT> *bo, ap_fixed<16, 4, AP_RND, AP_SAT> *wxf2, ap_fixed<16, 4, AP_RND, AP_SAT> *wxg2, ap_fixed<16, 4, AP_RND, AP_SAT> *wxi2, ap_fixed<16, 4, AP_RND, AP_SAT> *wxo2, ap_fixed<16, 4, AP_RND, AP_SAT> *whf2, ap_fixed<16, 4, AP_RND, AP_SAT> *whg2, ap_fixed<16, 4, AP_RND, AP_SAT> *whi2, ap_fixed<16, 4, AP_RND, AP_SAT> *who2, ap_fixed<16, 4, AP_RND, AP_SAT> *bf2, ap_fixed<16, 4, AP_RND, AP_SAT> *bg2, ap_fixed<16, 4, AP_RND, AP_SAT> *bi2, ap_fixed<16, 4, AP_RND, AP_SAT> *bo2)
	//{

		ap_fixed<16, 4, AP_RND, AP_SAT> h_next[320];
		ap_fixed<16, 4, AP_RND, AP_SAT> c_next[320];
		for(int i = 0; i < 320; i++)
		{ 
			h_next[i] = 0;
			c_next[i] = 0;
		}
		char flag;

		flag = 'o';


		for(int t = 0; t < 75; t++)
		{


			lstm[t].forward(slot_num, flag, t, x, y, h_next, c_next, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo);


		}//75



	//}


	}




	void predicts(int slot_num, ap_fixed<16, 4, AP_RND, AP_SAT> *x, ap_fixed<16, 4, AP_RND, AP_SAT> *y, ap_fixed<16, 4, AP_RND, AP_SAT> *wxf, ap_fixed<16, 4, AP_RND, AP_SAT> *wxg, ap_fixed<16, 4, AP_RND, AP_SAT> *wxi, ap_fixed<16, 4, AP_RND, AP_SAT> *wxo, ap_fixed<16, 4, AP_RND, AP_SAT> *whf, ap_fixed<16, 4, AP_RND, AP_SAT> *whg, ap_fixed<16, 4, AP_RND, AP_SAT> *whi, ap_fixed<16, 4, AP_RND, AP_SAT> *who, ap_fixed<16, 4, AP_RND, AP_SAT> *bf, ap_fixed<16, 4, AP_RND, AP_SAT> *bg, ap_fixed<16, 4, AP_RND, AP_SAT> *bi, ap_fixed<16, 4, AP_RND, AP_SAT> *bo)

	{
		#pragma HLS RESOURCE variable=wxf  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=wxg  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=wxi  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=who  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=whf  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=whg  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=whi  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=who  core=XPM_MEMORY uram // utilizes URAM

		/*
		#pragma HLS RESOURCE variable=wxf2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=wxg2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=wxi2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=wxo2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=whf2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=whg2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=whi2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=who2  core=XPM_MEMORY uram // utilizes URAM

		#pragma HLS RESOURCE variable=bf  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bg  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bi  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bo  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bf2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bg2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bi2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=bo2  core=XPM_MEMORY uram // utilizes URAM
		*/

		//e.forward(x, y, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf2, bg2, bi2, bo2); //BiLSTM

	//void forward(ap_fixed<16, 4, AP_RND, AP_SAT> *xs, ap_fixed<16, 4, AP_RND, AP_SAT> *hs, ap_fixed<16, 4, AP_RND, AP_SAT> *wxf, ap_fixed<16, 4, AP_RND, AP_SAT> *wxg, ap_fixed<16, 4, AP_RND, AP_SAT> *wxi, ap_fixed<16, 4, AP_RND, AP_SAT> *wxo, ap_fixed<16, 4, AP_RND, AP_SAT> *whf, ap_fixed<16, 4, AP_RND, AP_SAT> *whg, ap_fixed<16, 4, AP_RND, AP_SAT> *whi, ap_fixed<16, 4, AP_RND, AP_SAT> *who, ap_fixed<16, 4, AP_RND, AP_SAT> *bf, ap_fixed<16, 4, AP_RND, AP_SAT> *bg, ap_fixed<16, 4, AP_RND, AP_SAT> *bi, ap_fixed<16, 4, AP_RND, AP_SAT> *bo, ap_fixed<16, 4, AP_RND, AP_SAT> *wxf2, ap_fixed<16, 4, AP_RND, AP_SAT> *wxg2, ap_fixed<16, 4, AP_RND, AP_SAT> *wxi2, ap_fixed<16, 4, AP_RND, AP_SAT> *wxo2, ap_fixed<16, 4, AP_RND, AP_SAT> *whf2, ap_fixed<16, 4, AP_RND, AP_SAT> *whg2, ap_fixed<16, 4, AP_RND, AP_SAT> *whi2, ap_fixed<16, 4, AP_RND, AP_SAT> *who2, ap_fixed<16, 4, AP_RND, AP_SAT> *bf2, ap_fixed<16, 4, AP_RND, AP_SAT> *bg2, ap_fixed<16, 4, AP_RND, AP_SAT> *bi2, ap_fixed<16, 4, AP_RND, AP_SAT> *bo2)
	//{

		ap_fixed<16, 4, AP_RND, AP_SAT> h_next[320];
		ap_fixed<16, 4, AP_RND, AP_SAT> c_next[320];
		for(int i = 0; i < 320; i++)
		{ 
			h_next[i] = 0;
			c_next[i] = 0;
		}
		char flag;

		flag = 't';

		for (int t = 0; t < 75; t++)
		{

			//backward BiLSTM
			//lstm2[t].forward(flag, t, x, y, h_next, c_next, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf2, bg2, bi2, bo2);
			lstm2[t].forward(slot_num, flag, t, x, y, h_next, c_next, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo);


		}//75


	//}


	}








	//void gradient(ap_fixed<16, 4, AP_RND, AP_SAT> *dout)
	void gradientf(int slot_num, ap_fixed<16, 4, AP_RND, AP_SAT> *dout, ap_fixed<16, 4, AP_RND, AP_SAT> *wxf, ap_fixed<16, 4, AP_RND, AP_SAT> *wxg, ap_fixed<16, 4, AP_RND, AP_SAT> *wxi, ap_fixed<16, 4, AP_RND, AP_SAT> *wxo, ap_fixed<16, 4, AP_RND, AP_SAT> *whf, ap_fixed<16, 4, AP_RND, AP_SAT> *whg, ap_fixed<16, 4, AP_RND, AP_SAT> *whi, ap_fixed<16, 4, AP_RND, AP_SAT> *who,  ap_fixed<16, 4, AP_RND, AP_SAT> *bf, ap_fixed<16, 4, AP_RND, AP_SAT> *bg, ap_fixed<16, 4, AP_RND, AP_SAT> *bi, ap_fixed<16, 4, AP_RND, AP_SAT> *bo)
	{
		//e.backward(dout, wxf, wxg, wxi, wxo, whf, whg, whi, who, gradswxf, gradswxg, gradswxi, gradswxo, gradswhf, gradswhg, gradswhi, gradswho, gradsbf, gradsbg, gradsbi, gradsbo, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, gradswxf2, gradswxg2, gradswxi2, gradswxo2, gradswhf2, gradswhg2, gradswhi2, gradswho2, gradsbf2, gradsbg2, gradsbi2, gradsbo2); // BiLSTM


		#pragma HLS RESOURCE variable=gradswxf  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswxg  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswxi  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswxo  core=XPM_MEMORY uram // utilizes URAM

		#pragma HLS RESOURCE variable=gradswxf2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswxg2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswxi2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswxo2  core=XPM_MEMORY uram // utilizes URAM

		#pragma HLS RESOURCE variable=gradswhf  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswhg  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswhi  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswho  core=XPM_MEMORY uram // utilizes URAM

		#pragma HLS RESOURCE variable=gradswhf2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswhg2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswhi2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswho2  core=XPM_MEMORY uram // utilizes URAM

		/*
		#pragma HLS RESOURCE variable=gradsbf  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbg  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbi  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbo  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbf2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbg2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbi2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbo2  core=XPM_MEMORY uram // utilizes URAM
		*/

		//dout = dhs
	
		ap_fixed<16, 4, AP_RND, AP_SAT> dh[320];  //dh_prev
		ap_fixed<16, 4, AP_RND, AP_SAT> dc[320];  //dc_prev
		//ap_fixed<16, 4, AP_RND, AP_SAT> hsdh[320];

		for(int s = 0; s < 75*160; s++)
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
			lstm[75-t-1].backward(slot_num, flag, 74-t, dout, dh, hs, dc, wxf, wxg, wxi, wxo, whf, whg, whi, who, gradswxf, gradswxg, gradswxi, gradswxo, gradswhf, gradswhg, gradswhi, gradswho, gradsbf, gradsbg, gradsbi, gradsbo);

		}

	//} //backward

	}

	void gradients(int slot_num, ap_fixed<16, 4, AP_RND, AP_SAT> *dout, ap_fixed<16, 4, AP_RND, AP_SAT> *wxf, ap_fixed<16, 4, AP_RND, AP_SAT> *wxg, ap_fixed<16, 4, AP_RND, AP_SAT> *wxi, ap_fixed<16, 4, AP_RND, AP_SAT> *wxo, ap_fixed<16, 4, AP_RND, AP_SAT> *whf, ap_fixed<16, 4, AP_RND, AP_SAT> *whg, ap_fixed<16, 4, AP_RND, AP_SAT> *whi, ap_fixed<16, 4, AP_RND, AP_SAT> *who,  ap_fixed<16, 4, AP_RND, AP_SAT> *bf, ap_fixed<16, 4, AP_RND, AP_SAT> *bg, ap_fixed<16, 4, AP_RND, AP_SAT> *bi, ap_fixed<16, 4, AP_RND, AP_SAT> *bo)
	{
		//e.backward(dout, wxf, wxg, wxi, wxo, whf, whg, whi, who, gradswxf, gradswxg, gradswxi, gradswxo, gradswhf, gradswhg, gradswhi, gradswho, gradsbf, gradsbg, gradsbi, gradsbo, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, gradswxf2, gradswxg2, gradswxi2, gradswxo2, gradswhf2, gradswhg2, gradswhi2, gradswho2, gradsbf2, gradsbg2, gradsbi2, gradsbo2); // BiLSTM


		#pragma HLS RESOURCE variable=gradswxf  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswxg  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswxi  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswxo  core=XPM_MEMORY uram // utilizes URAM

		#pragma HLS RESOURCE variable=gradswxf2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswxg2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswxi2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswxo2  core=XPM_MEMORY uram // utilizes URAM

		#pragma HLS RESOURCE variable=gradswhf  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswhg  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswhi  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswho  core=XPM_MEMORY uram // utilizes URAM

		#pragma HLS RESOURCE variable=gradswhf2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswhg2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswhi2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradswho2  core=XPM_MEMORY uram // utilizes URAM

		/*
		#pragma HLS RESOURCE variable=gradsbf  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbg  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbi  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbo  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbf2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbg2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbi2  core=XPM_MEMORY uram // utilizes URAM
		#pragma HLS RESOURCE variable=gradsbo2  core=XPM_MEMORY uram // utilizes URAM
		*/

		//dout = dhs
	
		ap_fixed<16, 4, AP_RND, AP_SAT> dh[320];  //dh_prev
		ap_fixed<16, 4, AP_RND, AP_SAT> dc[320];  //dc_prev
		//ap_fixed<16, 4, AP_RND, AP_SAT> hsdh[320];

		for(int s = 0; s < 75*160; s++)
		{
			hs[s] = dout[s];
			dout[s] = 0;
		}

		char flag;


		for(int s = 0; s < 320; s++)
		{
			dc[s] = 0;
			dh[s] = 0;
		}

		flag = 't';

		loops:for(int t = 0; t < 75; t++)
		{

			//lstm2[75-t-1].backward(flag, t, dout, dh, hs, dc, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, gradswxf2, gradswxg2, gradswxi2, gradswxo2, gradswhf2, gradswhg2, gradswhi2, gradswho2, gradsbf2, gradsbg2, gradsbi2, gradsbo2);
			lstm2[75-t-1].backward(slot_num, flag, t, dout, dh, hs, dc, wxf, wxg, wxi, wxo, whf, whg, whi, who, gradswxf2, gradswxg2, gradswxi2, gradswxo2, gradswhf2, gradswhg2, gradswhi2, gradswho2, gradsbf2, gradsbg2, gradsbi2, gradsbo2);

		} //75
	//} //backward

	}





};




