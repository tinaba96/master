#include <ap_fixed.h>
//#include <ap_fixed.h>
//#include "hls_math.h"
//#include <stdio.h>
//#include <cmath>
//#include <algorithm>

#include "loss.h"
#include "optimizer.h"
#include "cnn.h"



//#define BUFFER_SIZE 1024




extern "C"{
void kerneldl(
	const float *datax,
	float *datay,
	const float *dout,
	float *buffer_output,
	int model,

	ap_fixed<16, 4, AP_RND, AP_SAT> *wxf_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxg_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxi_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxo_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *whf_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *whg_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *whi_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *who_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxf2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxg2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxi2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxo2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *whf2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *whg2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *whi2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *who2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bf_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bg_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bi_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bo_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bf2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bg2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bi2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bo2_,
	
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxf_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxg_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxi_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxo_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whf_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whg_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whi_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_who_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxf2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxg2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxi2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxo2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whf2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whg2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whi2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_who2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bf_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bg_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bi_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bo_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bf2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bg2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bi2_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bo2_,

	int count

	/*
	float *wxf,
	float *wxg,
	float *wxi,
	float *wxo,
	float *whf,
	float *whg,
	float *whi,
	float *who,
	float *wxf2,
	float *wxg2,
	float *wxi2,
	float *wxo2,
	float *whf2,
	float *whg2,
	float *whi2,
	float *who2,
	float *bf,
	float *bg,
	float *bi,
	float *bo,
	float *bf2,
	float *bg2,
	float *bi2,
	float *bo2,


	float *h_wxf,
	float *h_wxg,
	float *h_wxi,
	float *h_wxo,
	float *h_whf,
	float *h_whg,
	float *h_whi,
	float *h_who,
	float *h_wxf2,
	float *h_wxg2,
	float *h_wxi2,
	float *h_wxo2,
	float *h_whf2,
	float *h_whg2,
	float *h_whi2,
	float *h_who2,
	float *h_bf,
	float *h_bg,
	float *h_bi,
	float *h_bo,
	float *h_bf2,
	float *h_bg2,
	float *h_bi2,
	float *h_bo2
	*/


	)

	{	

	#pragma HLS INTERFACE m_axi port=datax offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=datay offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=dout offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=buffer_output offset=slave bundle=gmem
	//#pragma HLS INTERFACE m_axi port=model offset=slave bundle=gem //maybe, it doesn't work with this.
	
	#pragma HLS INTERFACE m_axi port=wxf_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxg_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxi_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxo_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=whf_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=whg_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=whi_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=who_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxf2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxg2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxi2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxo2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=whf2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=whg2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=whi2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=who2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bf_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bg_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bi_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bo_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bf2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bg2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bi2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bo2_ offset=slave bundle=gmem

	#pragma HLS INTERFACE m_axi port=h_wxf_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_wxg_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_wxi_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_wxo_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_whf_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_whg_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_whi_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_who_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_wxf2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_wxg2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_wxi2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_wxo2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_whf2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_whg2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_whi2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_who2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_bf_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_bg_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_bi_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_bo_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_bf2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_bg2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_bi2_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_bo2_ offset=slave bundle=gmem




	#pragma HLS INTERFACE s_axilite port=datax bundle=control
	#pragma HLS INTERFACE s_axilite port=datay bundle=control
	#pragma HLS INTERFACE s_axilite port=dout bundle=control
	#pragma HLS INTERFACE s_axilite port=buffer_output bundle=control
	#pragma HLS INTERFACE s_axilite port=model bundle=control

	#pragma HLS INTERFACE s_axilite port=wxf_ bundle=control
	#pragma HLS INTERFACE s_axilite port=wxg_ bundle=control
	#pragma HLS INTERFACE s_axilite port=wxi_ bundle=control
	#pragma HLS INTERFACE s_axilite port=wxo_ bundle=control
	#pragma HLS INTERFACE s_axilite port=whf_ bundle=control
	#pragma HLS INTERFACE s_axilite port=whg_ bundle=control
	#pragma HLS INTERFACE s_axilite port=whi_ bundle=control
	#pragma HLS INTERFACE s_axilite port=who_ bundle=control
	#pragma HLS INTERFACE s_axilite port=wxf2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=wxg2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=wxi2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=wxo2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=whf2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=whg2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=whi2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=who2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=bf_ bundle=control
	#pragma HLS INTERFACE s_axilite port=bg_ bundle=control
	#pragma HLS INTERFACE s_axilite port=bi_ bundle=control
	#pragma HLS INTERFACE s_axilite port=bo_ bundle=control
	#pragma HLS INTERFACE s_axilite port=bf2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=bg2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=bi2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=bo2_ bundle=control

	#pragma HLS INTERFACE s_axilite port=h_wxf_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxg_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxi_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxo_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whf_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whg_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whi_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_who_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxf2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxg2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxi2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxo2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whf2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whg2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whi2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_who2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bf_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bg_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bi_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bo_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bf2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bg2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bi2_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bo2_ bundle=control

	#pragma HLS INTERFACE s_axilite port=count bundle=control

	#pragma HLS INTERFACE s_axilite port=return bundle=control
			
	

	#ifndef __SYNTHESIS__
	    //printf("checking in kernel");
	#endif

	
	cnn z = cnn();
	rmsprop opt;



	ap_fixed<16, 4, AP_RND, AP_SAT> wxf[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxg[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxi[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxo[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whf[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whg[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whi[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> who[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxf2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxg2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxi2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxo2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whf2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whg2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whi2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> who2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bf[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bg[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bi[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bo[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bf2[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bg2[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bi2[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bo2[320];

	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxf[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxg[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxi[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxo[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whf[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whg[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whi[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_who[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxf2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxg2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxi2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxo2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whf2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whg2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whi2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_who2[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bf[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bg[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bi[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bo[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bf2[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bg2[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bi2[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bo2[320];





	if(count == 1)
	{
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			wxf[i] = wxf_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			wxg[i] = wxg_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			wxi[i] = wxi_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			wxo[i] = wxo_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			whf[i] = whf_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			whg[i] = whg_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			whi[i] = whi_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			who[i] = who_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			wxf2[i] = wxf2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			wxg2[i] = wxg2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			wxi2[i] = wxi2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			wxo2[i] = wxo2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			whf2[i] = whf2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			whg2[i] = whg2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			whi2[i] = whi2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			who2[i] = who2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 

			h_wxf[i] = h_wxf_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_wxg[i] = h_wxg_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_wxi[i] = h_wxi_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_wxo[i] = h_wxo_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_whf[i] = h_whf_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_whg[i] = h_whg_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_whi[i] = h_whi_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_who[i] = h_who_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_wxf2[i] = h_wxf2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_wxg2[i] = h_wxg2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_wxi2[i] = h_wxi2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_wxo2[i] = h_wxo2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_whf2[i] = h_whf2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_whg2[i] = h_whg2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_whi2[i] = h_whi2_[i];
		}
		for(int i = 0; i<320*320; ++i)
		{
			#pragma HLS PIPELINE 
			h_who2[i] = h_who2_[i];

		}





		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			bf[i] = bf_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			bg[i] = bg_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			bi[i] = bi_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			bo[i] = bo_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			bf2[i] = bf2_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			bg2[i] = bg2_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			bi2[i] = bi2_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			bo2[i] = bo2_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 

			h_bf[i] = h_bf_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			h_bg[i] = h_bg_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			h_bi[i] = h_bi_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			h_bo[i] = h_bo_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			h_bf2[i] = h_bf2_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			h_bg2[i] = h_bg2_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			h_bi2[i] = h_bi2_[i];
		}	
		for(int i = 0; i<320; ++i)
		{
			#pragma HLS PIPELINE 
			h_bo2[i] = h_bo2_[i];
		}

	}








	switch (model){
		case 1:{
			// Forward process for LSTM
			ap_fixed<16, 4, AP_RND, AP_SAT> bufferx[75*320];
			ap_fixed<16, 4, AP_RND, AP_SAT> buffery[75*640];
			for(int i = 0; i<75*320; ++i)
			{
				#pragma HLS PIPELINE 
				bufferx[i] = datax[i];
				//buffery[i] = datax[i];
			}
			for(int i = 0; i<75*320; ++i)
			{
				//buffery[75*320+i] = datax[75*320-i-1];
			}
			for(int i = 0; i<75*640; ++i)
			{
				#pragma HLS PIPELINE 
				buffery[i] = 0;
			}

			z.predict(bufferx, buffery, wxf, wxg, wxi, wxo, whf, whg, whi, who, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf, bg, bi, bo, bf2, bg2, bi2, bo2); //forward

			for(int i = 0; i<75*640; ++i)
			{
				#pragma HLS PIPELINE 
				datay[i] = buffery[i];
				//datay[i] = 3;
			}
			break;
		}

		case 2:{
			// Backward process for LSTM
			ap_fixed<16, 4, AP_RND, AP_SAT> bufferd[640*75];
			for(int i = 0; i<75*640; ++i)
			{
				#pragma HLS PIPELINE 
				bufferd[i] = dout[i];
			}

			z.gradient(bufferd, wxf, wxg, wxi, wxo, whf, whg, whi, who, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf, bg, bi, bo, bf2, bg2, bi2, bo2); //backward

			for(int i = 0; i<75*320; ++i)
			{
				#pragma HLS PIPELINE 
				buffer_output[i] = bufferd[i];
			}

			if(count==100)
			{
				opt.update(wxf, z.gradswxf, h_wxf, 320*320);
				opt.update(wxg, z.gradswxg, h_wxg, 320*320);
				opt.update(wxi, z.gradswxi, h_wxi, 320*320);
				opt.update(wxo, z.gradswxo, h_wxo, 320*320);


				opt.update(whf, z.gradswhf, h_whf, 320*320);
				opt.update(whg, z.gradswhg, h_whg, 320*320);
				opt.update(whi, z.gradswhi, h_whi, 320*320);
				opt.update(who, z.gradswho, h_who, 320*320);

				opt.updateb(bf, z.gradsbf, h_bf, 320);
				opt.updateb(bg, z.gradsbg, h_bg, 320);
				opt.updateb(bi, z.gradsbi, h_bi, 320);
				opt.updateb(bo, z.gradsbo, h_bo, 320);


				opt.update(wxf2, z.gradswxf2, h_wxf2, 320*320);
				opt.update(wxg2, z.gradswxg2, h_wxg2, 320*320);
				opt.update(wxi2, z.gradswxi2, h_wxi2, 320*320);
				opt.update(wxo2, z.gradswxo2, h_wxo2, 320*320);

				opt.update(whf2, z.gradswhf2, h_whf2, 320*320);
				opt.update(whg2, z.gradswhg2, h_whg2, 320*320);
				opt.update(whi2, z.gradswhi2, h_whi2, 320*320);
				opt.update(who2, z.gradswho2, h_who2, 320*320);

				opt.updateb(bf2, z.gradsbf2, h_bf2, 320);
				opt.updateb(bg2, z.gradsbg2, h_bg2, 320);
				opt.updateb(bi2, z.gradsbi2, h_bi2, 320);
				opt.updateb(bo2, z.gradsbo2, h_bo2, 320);



				for(int i = 0; i < 320*320; ++i)
				{
					z.gradswxf[i] = 0;
					z.gradswxg[i] = 0;
					z.gradswxi[i] = 0;
					z.gradswxo[i] = 0;
					z.gradswhf[i] = 0;
					z.gradswhg[i] = 0;
					z.gradswhi[i] = 0;
					z.gradswho[i] = 0;
					z.gradswxf2[i] = 0;
					z.gradswxg2[i] = 0;
					z.gradswxi2[i] = 0;
					z.gradswxo2[i] = 0;
					z.gradswhf2[i] = 0;
					z.gradswhg2[i] = 0;
					z.gradswhi2[i] = 0;
					z.gradswho2[i] = 0;
				}

				for(int i = 0; i < 320; ++i)
				{
					z.gradsbf[i] = 0;
					z.gradsbg[i] = 0;
					z.gradsbi[i] = 0;
					z.gradsbo[i] = 0;
					z.gradsbf2[i] = 0;
					z.gradsbg2[i] = 0;
					z.gradsbi2[i] = 0;
					z.gradsbo2[i] = 0;

				}
			}


			break;
		}



	}



	if(count == 500) 
	{
		for(int i = 0; i<320*320; ++i)
		{
			wxf_[i] = wxf[i];
			wxg_[i] = wxg[i];
			wxi_[i] = wxi[i];
			wxo_[i] = wxo[i];
			whf_[i] = whf[i];
			whg_[i] = whg[i];
			whi_[i] = whi[i];
			who_[i] = who[i];
			wxf2_[i] = wxf2[i];
			wxg2_[i] = wxg2[i];
			wxi2_[i] = wxi2[i];
			wxo2_[i] = wxo2[i];
			whf2_[i] = whf2[i];
			whg2_[i] = whg2[i];
			whi2_[i] = whi2[i];
			who2_[i] = who2[i];

			h_wxf_[i] = wxf[i];
			h_wxg_[i] = wxg[i];
			h_wxi_[i] = wxi[i];
			h_wxo_[i] = wxo[i];
			h_whf_[i] = whf[i];
			h_whg_[i] = whg[i];
			h_whi_[i] = whi[i];
			h_who_[i] = who[i];
			h_wxf2_[i] = wxf2[i];
			h_wxg2_[i] = wxg2[i];
			h_wxi2_[i] = wxi2[i];
			h_wxo2_[i] = wxo2[i];
			h_whf2_[i] = whf2[i];
			h_whg2_[i] = whg2[i];
			h_whi2_[i] = whi2[i];
			h_who2_[i] = who2[i];

		}





		for(int i = 0; i<320; ++i)
		{
			bf_[i] = bf[i];
			bg_[i] = bg[i];
			bi_[i] = bi[i];
			bo_[i] = bo[i];
			bf2_[i] = bf2[i];
			bg2_[i] = bg2[i];
			bi2_[i] = bi2[i];
			bo2_[i] = bo2[i];

			h_bf_[i] = h_bf[i];
			h_bg_[i] = h_bg[i];
			h_bi_[i] = h_bi[i];
			h_bo_[i] = h_bo[i];
			h_bf2_[i] = h_bf2[i];
			h_bg2_[i] = h_bg2[i];
			h_bi2_[i] = h_bi2[i];
			h_bo2_[i] = h_bo2[i];
		}

	}









}
} // extern"C"




