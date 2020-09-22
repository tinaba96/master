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

	//float h_prev[320];
	//float h_next[320];

	//float c_prev[320];
	//float c_next[320];

	float cache[8*320];

	// input_dim = 320
	void forward(float* in, float* h_next, float* c_next, float* wxf, float* wxg, float* wxi, float* wxo, float* whf, float* whg, float* whi, float* who, float* bf, float* bg, float* bi, float* bo)
	{
		//N = 1, H = 320, D = 320
		//w.length = 320*320

		float c_prev[320];
		float h_prev[320];

		for(int i = 0; i < 320; i++)
		{
			//printf("{%f}", h_next[i]); 
			c_prev[i] = c_next[i];
			h_prev[i] = h_next[i];
		}
		//float c_next[320];

		for(int i = 0; i < 320; i++)
		{
			//printf("{%f}", bf[i]);
			f[i] = 0.000000001;
			for(int s = 0; s < 320; ++s)
			{
				f[i] += (0.0000001 + in[i])*(0.000001 + wxf[320*i+s]);
				f[i] += (0.0000001 + h_prev[i])*(0.0000001 + whf[320*i+s]);
			}
			//printf("{%f}", f[i]); 
			//printf("{%f}", h_prev[i]);
			f[i] += bf[i];
			//printf("{%f}", f[i]);
		}	
		
		
		for(int i = 0; i < 320; i++)
		{
			g[i] = 0.00000001;
			//printf("{%f}", wxg[i]);
			for(int s = 0; s < 320; ++s)
			{
				g[i] += (0.00000001 + in[i])*(0.0000001 + wxg[320*i+s]);
				//g[i] += (0.0000001 + wxg[320*i+s]);
				g[i] += (0.00000001 + h_prev[i])*(0.00001 + whg[320*i+s]);
			}
			//printf("{%f}", wxg[320*3+i]);
			g[i] += bg[i];
		}	
		


		for(int k = 0; k < 320; k++)
		{
			i[k] = 0.0000001;
			for(int s = 0; s < 320; ++s)
			{
				i[k] += (0.00000001 + in[k])*(0.00000001 + wxi[320*k+s]);
				//i[k] += (0.0000001 * in[k]);
				i[k] += (0.00000001 + h_prev[k])*(0.00000001 + whi[320*k+s]);
			}
			//printf("{%f}", i[k]);
			i[k] += bi[k];
		}	


		for(int i = 0; i < 320; i++)
		{
			o[i] = 0.0000001;
			for(int s = 0; s < 320; ++s)
			{
				o[i] += (0.000000001+in[i])*(0.00000001 + wxo[320*i+s]);
				o[i] += (0.000000001+h_prev[i])*(0.00000001 + who[320*i+s]);
				//o[i] += wxo[320*i+s];
			}
			o[i] += bo[i];
		}	


	

		for(int k = 0; k < 320; k++)
		{
			f[k] = 0.000001 + 1.0/(1.0+exp(-f[k]));  // sigmoid
			g[k] = 0.000001 + tanh(g[k]);
			i[k] = 0.000001 + 1.0/(1.0+exp(-i[k]));  // sigmoid
			o[k] = 0.000001 + 1.0/(1.0+exp(-o[k]));  // sigmoid
		}


		for(int k = 0; k < 320; k++)
		{
			c_next[k] = 0.000001 + (0.00000001 + f[k])*(0.00000001 + c_prev[k]) + (0.000001 + g[k])*(0.0000001 + i[k]);
			//printf("{%f}", o[k]); 
			h_next[k] = 0.000001 + (0.00000001 + o[k])*(0.00001 + tanh(c_next[k]));
			//printf("{%f}", c_next[k]);
		}
		



		//cache[0] = x; //in
		//cache[1] = h_prev;
		//cache[2] = c_prev;
		//cache[3] = i;
		//cache[4] = f;
		//cache[5] = g;
		//cache[6] = o;
		//cache[7] = c_next;
		

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
			//printf("{%f}", o[i]); // -nan occurs
			cache[320*6+i] = o[i];
		}
		for(int i = 0; i < 320; i++)
		{
			cache[320*7+i] = c_next[i];
		}


	} //forward





	void backward(int t, float* dout, float* dh, float* dh_next, float* dc_next, float* wxf, float* wxg, float* wxi, float* wxo, float* whf, float* whg, float* whi, float* who, float* gradswxf, float* gradswxg, float* gradswxi, float* gradswxo, float* gradswhf, float* gradswhg, float* gradswhi, float* gradswho, float* gradsbf, float* gradsbg, float* gradsbi, float* gradsbo)
	{
		//N = 1, H = 320, D = 320
		//dout = 320
	
		
		/*
		x = cache[0];
		h_prev = cache[1];
		c_prev = cache[2];
		i = cache[3];
		f = cache[4];
		g = cache[5];
		o = cache[6];
		c_next = cache[7];
		*/

		float tanh_c_next[320];
		float ds[320];
		float dc_prev[320];

		float di[320];
		float df[320];
		float dg[320];
		float do_[320];

		float dWhf[320*320];
		float dWhg[320*320];
		float dWhi[320*320];
		float dWho[320*320];

		float dWxf[320*320];
		float dWxg[320*320];
		float dWxi[320*320];
		float dWxo[320*320];

		float dbf[320];
		float dbg[320];
		float dbi[320];
		float dbo[320];

		float x[320];

		float h_prev[320];
		float c_prev[320];
		/*
		float i[320];
		float f[320];
		float g[320];
		float o[320];
		*/
		float c_next[320];



		for(int i = 0; i < 320; i++)
		{
			x[i] = cache[i];
		}
		for(int i = 0; i < 320; i++)
		{
			h_prev[i] = cache[320+i];
		}
		for(int i = 0; i < 320; i++)
		{
			c_prev[i] = cache[320*2+i];
		}
		for(int k = 0; k < 320; k++)
		{
			i[k] = cache[320*3+k];
		}
		for(int i = 0; i < 320; i++)
		{
			f[i] = cache[320*4+i];
		}
		for(int i = 0; i < 320; i++)
		{
			g[i] = cache[320*5+i];
		}
		for(int i = 0; i < 320; i++)
		{
			o[i] = cache[320*6+i];
		}
		for(int i = 0; i < 320; i++)
		{
			c_next[i] = cache[320*7+i];
		}



		for(int i = 0; i < 320; i++)
		{
			//printf("{%f}", o[i]); // -nan occurs
			di[i] = 0.0000001;
			df[i] = 0.0000001;
			do_[i] = 0.0000001;
			dg[i] = 0.0000001;
		}

		for(int j = 0; j < 320; j++)
		{

			tanh_c_next[j] = tanh(c_next[j]);
			
			//printf("{%f}", 1-tanh_c_next[j]*tanh_c_next[j]);
			//printf("{%f}", dh_next[j]); // -nan occurs


			ds[j] = dc_next[j] + ((0.0000001 + dh_next[j])*(0.0001 + o[j]))*(1-(0.0000001 + tanh_c_next[j])*(0.000001 + tanh_c_next[j]));
			//ds[j] = 2;
			/*
			if(isinf(ds[j]) || isnan(ds[j]))
			{
				printf("dh_next ->"); 
				printf("{%f}", dh_next[j]); 
			}
			
			if(isnan(ds[j]))
			{
				printf("{%f}", ds[j]); 
				printf("dh_next ->"); 
				printf("{%f}", dh_next[j]); 
			}
			*/


			//dc_prev[j] = (0.0000001 + ds[j]) * f[j]; 
			dc_next[j] = (0.0000001 + ds[j]) * (0.01 + f[j]); 


			//di[j] = 2;
			//printf("di_prev ->"); 
			//printf("{%f}", di[j]); 
			di[j] = (0.0000001 + ds[j]) * (0.000001 + g[j]);
			
			/*
			if(isinf(di[j]))
			{
				printf("{%f}", di[j]); 
				printf("ds ->"); 
				printf("{%f}", ds[j]); 
				printf("g->"); 
				printf("{%f}", g[j]);
				exit(1);
			}
			
		

			if(isnan(di[j]))
			{
				printf("{%f}", di[j]); 
				printf("ds ->"); 
				printf("{%f}", ds[j]); 
				printf("g ->"); 
				printf("{%f}", g[j]); 
			}
			*/
	

			df[j] = (0.000001 + ds[j]) * (0.000001 + c_prev[j]);
			//do_[j] = 2;
			do_[j] =(0.000001 + dh_next[j])*(0.0000001 + tanh_c_next[j]);
			//printf("{%f}", tanh_c_next[j]); 
			//printf("{%f}", c_prev[j]);
			dg[j] = (0.000001 + ds[j])*(0.00000001 + i[j]);
			
			/*
			if(isnan(dg[j]))
			{
				printf("{%f}", dg[j]); 
				printf("dh_next ->"); 
				printf("{%f}", ds[j]); 
				printf("tanh_c_next ->"); 
				printf("{%f}", i[j]); 
				exit(1);
			}
		
			//printf("{%f}", dg[j]); 
			//printf("{%f}", g[j]);
			

			printf("dibefore->"); 
			printf("{%f}", di[j]);
			*/

			di[j] *= (0.0000001 + i[j] * (1-i[j]));
			/*
			if(isinf(di[j]))
			{
				printf("{%f}", di[j]); 
				printf("i ->"); 
				printf("{%f}", i[j]); 
				exit(1);
			}
			*/
			//printf("diafter->"); 
			//printf("{%f}", di[j]);
			df[j] *= (0.0000001 + f[j] * (1-f[j]));
			do_[j] *= (0.000001 +  o[j] * (1-o[j]));  // here, I had a big problem of calculating 0*0.
			dg[j] *= (0.0000001 + (1-g[j]*(0.000001 + g[j])));

		}


		for(int j = 0; j < 320; j++)
		{

			for(int k = 0; k < 320; k++)
			{

				dWhf[320*j+k] = (0.001 + h_prev[j])*(0.000001 + df[k]);
				dWhg[320*j+k] = (0.001 + h_prev[j])*(0.000001 + dg[k]);
				dWhi[320*j+k] = (0.001 + h_prev[j])*(0.000001 + di[k]);
				dWho[320*j+k] = (0.001 + h_prev[j])*(0.000001 + do_[k]);

				dWxf[320*j+k] = (0.0000001 + x[j])*(0.000001 + df[k]);
				dWxg[320*j+k] = (0.0000001 + x[j])*(0.000001 + dg[k]);
				dWxi[320*j+k] = (0.0000001 + x[j])*(0.000001 + di[k]);
				dWxo[320*j+k] = (0.0000001 + x[j])*(0.000001 + do_[k]);
				
			}

			dbf[j] = 0.0000001 + df[j];
			dbg[j] = 0.0000001 + dg[j];
			dbi[j] = 0.0000001 + di[j];
			dbo[j] = 0.0000001 + do_[j];

		}


		for(int j = 0; j < 320*320; j++)
		{

			//if(dWxf[j] == "nan" || "-nan")
			/*
			if(isnan(dWxf[j]))
			{
				gradswxf[j] = 0.000001;
			}else{
				gradswxf[j] = dWxf[j];
			}
			*/

			gradswxf[j] = dWxf[j];
			gradswxg[j] = dWxg[j];
			gradswxi[j] = dWxi[j];
			gradswxo[j] = dWxo[j];

			gradswhf[j] = dWhf[j];
			gradswhg[j] = dWhg[j];
			gradswhi[j] = dWhi[j];
			gradswho[j] = dWho[j];

		}

			
		for(int j = 0; j < 320; j++)
		{
			//printf("{%f}", gradswxf[j]); 
			gradsbf[j] = dbf[j];
			gradsbg[j] = dbg[j];
			gradsbi[j] = dbi[j];
			gradsbo[j] = dbo[j];
		}

		for(int k =0; k < 320; k++)
		{
			for(int i = 0; i < 320; i++)
			{

				dout[320*t+i] += (0.0000001 + di[i])*(0.000001 + wxi[320*k+i]);
				dout[320*t+i] += (0.0000001 + df[i])*(0.000001 + wxf[320*k+i]);
				dout[320*t+i] += (0.0000001 + do_[i])*(0.00001 + wxo[320*k+i]);
				dout[320*t+i] += (0.0000001 + dg[i])*(0.000001 + wxg[320*k+i]);

				//dh_prev = dh_next -> dh
				
				dh[i] += (0.01 + di[i])*(0.000001 + whi[320*k+i]);
				if(isnan(dh[i]) || isinf(dh[i]))
				{
					printf("{di}"); 
					printf("{%f}", di[i]); 
					//printf("{%f}", whi[320*k+i]); 
					//exit(1);
				}

				dh[i] += (0.01 + df[i])*(0.000001 + whf[320*k+i]);
				if(isnan(dh[i]) || isinf(dh[i]))
				{
					printf("{df}"); 
					//exit(1);
				}
				dh[i] += (0.01 + do_[i])*(0.00001 + who[320*k+i]);
				if(isnan(dh[i]) || isinf(dh[i]))
				{
					printf("{do_}"); 
					//exit(1);
				}
				dh[i] += (0.01 + dg[i])*(0.000001 + whg[320*k+i]);
				if(isnan(dh[i]) || isinf(dh[i]))
				{
					printf("{dg}"); 
					exit(1);
				}

				//printf("{%f}", (0.000001 + di[i])*whi[320*k+i]);

			}

				//printf("{%f}", do_[k]); //-nan occurs
				//printf("{%f}", dg[k]); 
				//printf("{%f}", di[k]);
				
		} //320

		

	} //backward	

};


class TimeLSTM
{
public:
	

	float hs[75*320];  //final output

	/*
	// otherwise ~no matching function for call to 'forward'
	float wxf[320];
	float wxg[320];
	float wxi[320]; 
	float wxo[320];  
	float whf[320];
	float whg[320];
	float whi[320];
	float who[320]; 
	float bf[320];
	float bg[320]; 
	float bi[320];  
	float bo[320];

	float gradswxf[320];
	float gradswxg[320];
	float gradswxi[320];
	float gradswxo[320];

	float gradswhf[320];
	float gradswhg[320];
	float gradswhi[320];
	float gradswho[320];
	*/


	LSTM lstm[75];


	//void forward(float* xs, float* hs)
	void forward(float* xs, float* hs, float* wxf, float* wxg, float* wxi, float* wxo, float* whf, float* whg, float* whi, float* who, float* bf, float* bg, float* bi, float* bo)
	{

		//printf("{%f}", wxf[400]);
		float h_next[320];
		float c_next[320];
		for(int i = 0; i < 320; i++)
		{ 
			h_next[i] = 0;
			c_next[i] = 0;
		}

		for(int t = 0; t < 75; t++)
		{

			//LSTM lstm[t]; //mistake of making the instance again. with this, segmentaiton fault occurs. it seemed that the size of variables such as wxf has changed somehow. Maybe the matter of memory address.

			float in[320];
			for(int s = 0; s < 320; s++)
			{
				in[s] = xs[t*320+s];	
			}



			//LSTM.forward(float* h, float* c);
			lstm[t].forward(in, h_next, c_next, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo);


			for(int s = 0; s < 320; s++)
			{
				//printf("(%f)", h_next[s]);
				//hs[t*320+i] = h[i]
				hs[t*320+s] = h_next[s];
			}

		}
	}


	//void backward(float* dhs, float* dout)
	void backward(float* dout, float* wxf, float* wxg, float* wxi, float* wxo, float* whf, float* whg, float* whi, float* who, float* gradswxf, float* gradswxg, float* gradswxi, float* gradswxo, float* gradswhf, float* gradswhg, float* gradswhi, float* gradswho, float* gradswxf_tot, float* gradswxg_tot, float* gradswxi_tot, float* gradswxo_tot, float* gradswhf_tot, float* gradswhg_tot, float* gradswhi_tot, float* gradswho_tot, float* gradsbf, float* gradsbg, float* gradsbi, float* gradsbo, float* gradsbf_tot, float* gradsbg_tot, float* gradsbi_tot, float* gradsbo_tot)
	{

		//dout = dhs
	
		float dh[320];  //dh_prev
		float dc[320];  //dc_prev


		for(int t = 0; t < 75; t++)
		{
			float hsdh[320];

			for(int s = 0; s < 320; s++)
			{
				hs[s] = dout[t*320+s];
				hsdh[s] = hs[s] + dh[s];
				//printf("{%f}", dh[s]); //-nan occurs
			}


			//hs+dh=dout
			lstm[74-t].backward(t, dout, dh, hsdh, dc, wxf, wxg, wxi, wxo, whf, whg, whi, who, gradswxf, gradswxg, gradswxi, gradswxo, gradswhf, gradswhg, gradswhi, gradswho, gradsbf, gradsbg, gradsbi, gradsbo);


			for(int s = 0; s < 320; s++)
			{
					//dout[(74-t)*320] = dx[s]; //dout = dxs
			}
			
			for(int s = 0; s < 320*320; s++)
			{
					gradswxf_tot[s] += gradswxf[s];
					//printf("{%f}", gradswxf_tot[s]);
					gradswxf[s] = 0;
					gradswxg_tot[s] += gradswxg[s];
					gradswxg[s] = 0;
					gradswxi_tot[s] += gradswxi[s];
					gradswxi[s] = 0;
					gradswxo_tot[s] += gradswxo[s];
					gradswxo[s] = 0;

					gradswhf_tot[s] += gradswhf[s];
					gradswhf[s] = 0;
					gradswhg_tot[s] += gradswhg[s];
					gradswhg[s] = 0;
					gradswhi_tot[s] += gradswhi[s];
					gradswhi[s] = 0;
					gradswho_tot[s] += gradswho[s];
					gradswho[s] = 0;
			}


			for(int s = 0; s < 320; s++)
			{
				gradsbf_tot[s] += gradsbf[s];
				gradsbg_tot[s] += gradsbg[s];
				gradsbi_tot[s] += gradsbi[s];
				gradsbo_tot[s] += gradsbo[s];
				gradsbf[s] = 0;
				gradsbg[s] = 0;
				gradsbi[s] = 0;
				gradsbo[s] = 0;
			}
		}
	}
};

class TimeBiLSTM
{
public:
	

	float hs[75*640];  //final output

	/*
	// otherwise ~no matching function for call to 'forward'
	float wxf[320];
	float wxg[320];
	float wxi[320]; 
	float wxo[320];  
	float whf[320];
	float whg[320];
	float whi[320];
	float who[320]; 
	float bf[320];
	float bg[320]; 
	float bi[320];  
	float bo[320];

	float gradswxf[320];
	float gradswxg[320];
	float gradswxi[320];
	float gradswxo[320];

	float gradswhf[320];
	float gradswhg[320];
	float gradswhi[320];
	float gradswho[320];
	*/


	LSTM lstm[75];
	LSTM lstm2[75];


	//void forward(float* xs, float* hs)
	void forward(float* xs, float* hs, float* wxf, float* wxg, float* wxi, float* wxo, float* whf, float* whg, float* whi, float* who, float* bf, float* bg, float* bi, float* bo, float* wxf2, float* wxg2, float* wxi2, float* wxo2, float* whf2, float* whg2, float* whi2, float* who2, float* bf2, float* bg2, float* bi2, float* bo2)
	{

		//printf("{%f}", wxf[400]);
		float h_next[320];
		float c_next[320];
		for(int i = 0; i < 320; i++)
		{ 
			h_next[i] = 0.0000000001;
			c_next[i] = 0.0000000001;
		}
		for(int i = 0; i < 320*320; i++)
		{
			//printf("{%f}", wxf[i]); 
		}

		for(int t = 0; t < 75; t++)
		{


			//LSTM lstm[t]; //mistake of making the instance again. with this, segmentaiton fault occurs. it seemed that the size of variables such as wxf has changed somehow. Maybe the matter of memory address.

			float in[320];
			for(int s = 0; s < 320; s++)
			{
				in[s] = xs[t*320+s];	
				//printf("{%f}", c_next[s]);
				//printf("%f", whf[s]);
			}


			//LSTM.forward(float* h, float* c);
			lstm[t].forward(in, h_next, c_next, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo);


			for(int s = 0; s < 320; s++)
			{
				//hs[t*320+i] = h[i]
				hs[(2*t)*320+s] = h_next[s];
				//printf("%f", hs[(2*t)*320+s]);
				//printf("%f", h_next[s]);
			}


		}//75


		float in_rev[320];

		for(int i = 0; i < 320; i++)
		{ 
			h_next[i] = 0.000000001;
			c_next[i] = 0.000000001;
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
				//printf("%f", hs[(2*(74-t)+1)*320+s]);
			}










		}//75


	}

	//void backward(float* dhs, float* dout)
	void backward(float* dout, float* wxf, float* wxg, float* wxi, float* wxo, float* whf, float* whg, float* whi, float* who, float* gradswxf, float* gradswxg, float* gradswxi, float* gradswxo, float* gradswhf, float* gradswhg, float* gradswhi, float* gradswho, float* gradswxf_tot, float* gradswxg_tot, float* gradswxi_tot, float* gradswxo_tot, float* gradswhf_tot, float* gradswhg_tot, float* gradswhi_tot, float* gradswho_tot, float* gradsbf, float* gradsbg, float* gradsbi, float* gradsbo, float* gradsbf_tot, float* gradsbg_tot, float* gradsbi_tot, float* gradsbo_tot, float* wxf2, float* wxg2, float* wxi2, float* wxo2, float* whf2, float* whg2, float* whi2, float* who2, float* gradswxf2, float* gradswxg2, float* gradswxi2, float* gradswxo2, float* gradswhf2, float* gradswhg2, float* gradswhi2, float* gradswho2, float* gradswxf_tot2, float* gradswxg_tot2, float* gradswxi_tot2, float* gradswxo_tot2, float* gradswhf_tot2, float* gradswhg_tot2, float* gradswhi_tot2, float* gradswho_tot2, float* gradsbf2, float* gradsbg2, float* gradsbi2, float* gradsbo2, float* gradsbf_tot2, float* gradsbg_tot2, float* gradsbi_tot2, float* gradsbo_tot2)
	{


		//dout = dhs
	
		float dh[320];  //dh_prev
		float dc[320];  //dc_prev

		for(int s = 0; s < 320; s++)
		{
			dh[s] = 0.000000001;
			dc[s] = 0.000000001;
		}

		for(int s = 0; s < 75*640; s++)
		{
			hs[s] = dout[s] + 0.000001;
			//printf("{%f}", hs[s]); 
			dout[s] = 0.00000001;
		}

		for(int t = 0; t < 75; t++)
		{
			float hsdh[320];

			for(int s = 0; s < 320; s++)
			{

				//printf("{%f}", dout[(2*t)*320+s]);
				hsdh[s] = hs[(2*t)*320+s] + dh[s] + 0.00000001;
				//printf("{%f}", hs[s]); //-nan occurs
				//printf("{check} ----->"); //-nan occurs

				hsdh[s] /= 10;
				//printf("{%f}", dh[s]); //-nan occurs
				//printf("<------- {check} "); //-nan occurs
				
			}


			//hs+dh=dout
			lstm[74-t].backward(2*(74-t), dout, dh, hsdh, dc, wxf, wxg, wxi, wxo, whf, whg, whi, who, gradswxf, gradswxg, gradswxi, gradswxo, gradswhf, gradswhg, gradswhi, gradswho, gradsbf, gradsbg, gradsbi, gradsbo);


			for(int s = 0; s < 320; s++)
			{
					//dout[(74-t)*320] = dx[s]; //dout = dxs
					//printf("{%f}", gradswxf[s]); 
					//printf("{%f}", gradswxf[s]);
			}
			
			for(int s = 0; s < 320*320; s++)
			{
					gradswxf_tot[s] += 0.0000001 + gradswxf[s];
					gradswxf[s] = 0;
					gradswxg_tot[s] += 0.0000001 + gradswxg[s];
					gradswxg[s] = 0;
					gradswxi_tot[s] += 0.0000001 + gradswxi[s];
					gradswxi[s] = 0;
					gradswxo_tot[s] += 0.0000001 + gradswxo[s];
					gradswxo[s] = 0;

					gradswhf_tot[s] += 0.0000001 + gradswhf[s];
					gradswhf[s] = 0;
					gradswhg_tot[s] += 0.0000001 + gradswhg[s];
					gradswhg[s] = 0;
					gradswhi_tot[s] += 0.0000001 + gradswhi[s];
					gradswhi[s] = 0;
					gradswho_tot[s] += 0.0000001 + gradswho[s];
					gradswho[s] = 0;

			}


			for(int s = 0; s < 320; s++)
			{
				gradsbf_tot[s] += 0.0000001 + gradsbf[s];
				gradsbg_tot[s] += 0.0000001 + gradsbg[s];
				gradsbi_tot[s] += 0.0000001 + gradsbi[s];
				gradsbo_tot[s] += 0.0000001 + gradsbo[s];
				gradsbf[s] = 0;
				gradsbg[s] = 0;
				gradsbi[s] = 0;
				gradsbo[s] = 0;
			}
		}

		for(int s = 0; s < 320; s++)
		{
			dh[s] = 0.00000001;
			dc[s] = 0.00000001;
		}




		for(int t = 0; t < 75; t++)
		{

			float hsdh[320];

			for(int s = 0; s < 320; s++)
			{
				hsdh[s] = hs[(2*t+1)*320+s] + dh[s] + 0.00000001;
				hsdh[s] /= 10;
			}


			//hs+dh=dout
			lstm2[74-t].backward(2*(74-t)+1, dout, dh, hsdh, dc, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, gradswxf2, gradswxg2, gradswxi2, gradswxo2, gradswhf2, gradswhg2, gradswhi2, gradswho2, gradsbf2, gradsbg2, gradsbi2, gradsbo2);


			for(int s = 0; s < 320*320; s++)
			{

					gradswxf_tot2[s] += 0.0000001 + gradswxf2[s];
					gradswxf2[s] = 0;
					gradswxg_tot2[s] += 0.0000001 + gradswxg2[s];
					gradswxg2[s] = 0;
					gradswxi_tot2[s] += 0.0000001 + gradswxi2[s];
					gradswxi2[s] = 0;
					gradswxo_tot2[s] += 0.0000001 + gradswxo2[s];
					gradswxo2[s] = 0;

					gradswhf_tot2[s] += 0.0000001 + gradswhf2[s];
					gradswhf2[s] = 0;
					gradswhg_tot2[s] += 0.0000001 + gradswhg2[s];
					gradswhg2[s] = 0;
					gradswhi_tot2[s] += 0.0000001 + gradswhi2[s];
					gradswhi2[s] = 0;
					gradswho_tot2[s] += 0.0000001 + gradswho2[s];
					gradswho2[s] = 0;
			}


			for(int s = 0; s < 320; s++)
			{

				//printf("{%f}", gradswxf_tot[s]);
				gradsbf_tot2[s] += 0.00000001 + gradsbf2[s];
				gradsbg_tot2[s] += 0.00000001 + gradsbg2[s];
				gradsbi_tot2[s] += 0.00000001 + gradsbi2[s];
				gradsbo_tot2[s] += 0.00000001 + gradsbo2[s];
				gradsbf2[s] = 0;
				gradsbg2[s] = 0;
				gradsbi2[s] = 0;
				gradsbo2[s] = 0;
			}
		
			for(int s = 0; s < 320; s++)
			{
				//printf("{%f}", gradswxf_tot[s]);
			}

		} //75

		


	} //backward
};


