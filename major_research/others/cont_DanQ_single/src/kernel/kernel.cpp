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

	/*
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxf,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxg,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxi,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxo,
	ap_fixed<16, 4, AP_RND, AP_SAT> *whf,
	ap_fixed<16, 4, AP_RND, AP_SAT> *whg,
	ap_fixed<16, 4, AP_RND, AP_SAT> *whi,
	ap_fixed<16, 4, AP_RND, AP_SAT> *who,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxf2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxg2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxi2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *wxo2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *whf2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *whg2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *whi2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *who2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bf,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bg,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bi,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bo,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bf2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bg2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bi2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bo2,
	
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxf,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxg,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxi,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxo,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whf,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whg,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whi,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_who,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxf2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxg2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxi2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxo2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whf2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whg2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whi2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_who2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bf,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bg,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bi,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bo,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bf2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bg2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bi2,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bo2
	*/

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


	)

	{	

	#pragma HLS INTERFACE m_axi port=datax offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=datay offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=dout offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=buffer_output offset=slave bundle=gmem
	//#pragma HLS INTERFACE m_axi port=model offset=slave bundle=gem //maybe, it doesn't work with this.
	#pragma HLS INTERFACE m_axi port=wxf offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxg offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxi offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxo offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=whf offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=whg offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=whi offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=who offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxf2 offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxg2 offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxi2 offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=wxo2 offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=whf2 offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=whg2 offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=whi2 offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=who2 offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bf offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bg offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bi offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bo offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bf2 offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bg2 offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bi2 offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bo2 offset=slave bundle=gmem

	#pragma HLS INTERFACE m_axi port=h_wxf offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_wxg offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_wxi offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_wxo offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_whf offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_whg offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_whi offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_who offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_wxf2 offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_wxg2 offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_wxi2 offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_wxo2 offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_whf2 offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_whg2 offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_whi2 offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_who2 offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_bf offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_bg offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_bi offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_bo offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_bf2 offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_bg2 offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_bi2 offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=h_bo2 offset=slave bundle=gmemm




	#pragma HLS INTERFACE s_axilite port=datax bundle=control
	#pragma HLS INTERFACE s_axilite port=datay bundle=control
	#pragma HLS INTERFACE s_axilite port=dout bundle=control
	#pragma HLS INTERFACE s_axilite port=buffer_output bundle=control
	#pragma HLS INTERFACE s_axilite port=model bundle=control

	#pragma HLS INTERFACE s_axilite port=wxf bundle=control
	#pragma HLS INTERFACE s_axilite port=wxg bundle=control
	#pragma HLS INTERFACE s_axilite port=wxi bundle=control
	#pragma HLS INTERFACE s_axilite port=wxo bundle=control
	#pragma HLS INTERFACE s_axilite port=whf bundle=control
	#pragma HLS INTERFACE s_axilite port=whg bundle=control
	#pragma HLS INTERFACE s_axilite port=whi bundle=control
	#pragma HLS INTERFACE s_axilite port=who bundle=control
	#pragma HLS INTERFACE s_axilite port=wxf2 bundle=control
	#pragma HLS INTERFACE s_axilite port=wxg2 bundle=control
	#pragma HLS INTERFACE s_axilite port=wxi2 bundle=control
	#pragma HLS INTERFACE s_axilite port=wxo2 bundle=control
	#pragma HLS INTERFACE s_axilite port=whf2 bundle=control
	#pragma HLS INTERFACE s_axilite port=whg2 bundle=control
	#pragma HLS INTERFACE s_axilite port=whi2 bundle=control
	#pragma HLS INTERFACE s_axilite port=who2 bundle=control
	#pragma HLS INTERFACE s_axilite port=bf bundle=control
	#pragma HLS INTERFACE s_axilite port=bg bundle=control
	#pragma HLS INTERFACE s_axilite port=bi bundle=control
	#pragma HLS INTERFACE s_axilite port=bo bundle=control
	#pragma HLS INTERFACE s_axilite port=bf2 bundle=control
	#pragma HLS INTERFACE s_axilite port=bg2 bundle=control
	#pragma HLS INTERFACE s_axilite port=bi2 bundle=control
	#pragma HLS INTERFACE s_axilite port=bo2 bundle=control

	#pragma HLS INTERFACE s_axilite port=h_wxf bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxg bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxi bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxo bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whf bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whg bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whi bundle=control
	#pragma HLS INTERFACE s_axilite port=h_who bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxf2 bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxg2 bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxi2 bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxo2 bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whf2 bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whg2 bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whi2 bundle=control
	#pragma HLS INTERFACE s_axilite port=h_who2 bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bf bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bg bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bi bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bo bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bf2 bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bg2 bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bi2 bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bo2 bundle=control

	#pragma HLS INTERFACE s_axilite port=return bundle=control
			
	

	#ifndef __SYNTHESIS__
	    //printf("checking in kernel");
	#endif

	
	cnn z = cnn();
	rmsprop opt;




	ap_fixed<16, 4, AP_RND, AP_SAT> wxf_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxg_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxi_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxo_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whf_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whg_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whi_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> who_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxf2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxg2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxi2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> wxo2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whf2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whg2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> whi2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> who2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bf_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bg_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bi_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bo_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bf2_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bg2_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bi2_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bo2_[320];

	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxf_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxg_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxi_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxo_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whf_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whg_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whi_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_who_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxf2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxg2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxi2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxo2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whf2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whg2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whi2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_who2_[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bf_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bg_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bi_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bo_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bf2_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bg2_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bi2_[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bo2_[320];

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












	switch (model){
		case 1:{
			// Forward process for LSTM
			ap_fixed<16, 4,AP_RND, AP_SAT> bufferx[75*320];
			ap_fixed<16, 4,AP_RND, AP_SAT> buffery[75*640];
			for(int i = 0; i<75*320; ++i)
			{
				bufferx[i] = datax[i];
				//buffery[i] = datax[i];
			}
			for(int i = 0; i<75*320; ++i)
			{
				//buffery[75*320+i] = datax[75*320-i-1];
			}
			for(int i = 0; i<75*640; ++i)
			{
				buffery[i] = 0;
			}

			z.predict(bufferx, buffery, wxf_, wxg_, wxi_, wxo_, whf_, whg_, whi_, who_, wxf2_, wxg2_, wxi2_, wxo2_, whf2_, whg2_, whi2_, who2_, bf_, bg_, bi_, bo_, bf2_, bg2_, bi2_, bo2_); //forward
			for(int i = 0; i<75*640; ++i)
			{
				datay[i] = buffery[i];
			}
			break;
		}

		case 2:{
			// Backward process for LSTM
			ap_fixed<16, 4, AP_RND, AP_SAT> bufferd[640*75];
			for(int i = 0; i<75*640; ++i)
			{
				bufferd[i] = dout[i];
			}

			z.gradient(bufferd, wxf_, wxg_, wxi_, wxo_, whf_, whg_, whi_, who_, wxf2_, wxg2_, wxi2_, wxo2_, whf2_, whg2_, whi2_, who2_, bf_, bg_, bi_, bo_, bf2_, bg2_, bi2_, bo2_); //backward

			for(int i = 0; i<75*320; ++i)
			{
				buffer_output[i] = bufferd[i];
			}


			opt.update(wxf_, z.gradswxf, h_wxf_, 320*320);
			opt.update(wxg_, z.gradswxg, h_wxg_, 320*320);
			opt.update(wxi_, z.gradswxi, h_wxi_, 320*320);
			opt.update(wxo_, z.gradswxo, h_wxo_, 320*320);


			opt.update(whf_, z.gradswhf, h_whf_, 320*320);
			opt.update(whg_, z.gradswhg, h_whg_, 320*320);
			opt.update(whi_, z.gradswhi, h_whi_, 320*320);
			opt.update(who_, z.gradswho, h_who_, 320*320);

			opt.updateb(bf_, z.gradsbf, h_bf_, 320);
			opt.updateb(bg_, z.gradsbg, h_bg_, 320);
			opt.updateb(bi_, z.gradsbi, h_bi_, 320);
			opt.updateb(bo_, z.gradsbo, h_bo_, 320);


			opt.update(wxf2_, z.gradswxf2, h_wxf2_, 320*320);
			opt.update(wxg2_, z.gradswxg2, h_wxg2_, 320*320);
			opt.update(wxi2_, z.gradswxi2, h_wxi2_, 320*320);
			opt.update(wxo2_, z.gradswxo2, h_wxo2_, 320*320);

			opt.update(whf2_, z.gradswhf2, h_whf2_, 320*320);
			opt.update(whg2_, z.gradswhg2, h_whg2_, 320*320);
			opt.update(whi2_, z.gradswhi2, h_whi2_, 320*320);
			opt.update(who2_, z.gradswho2, h_who2_, 320*320);

			opt.updateb(bf2_, z.gradsbf2, h_bf2_, 320);
			opt.updateb(bg2_, z.gradsbg2, h_bg2_, 320);
			opt.updateb(bi2_, z.gradsbi2, h_bi2_, 320);
			opt.updateb(bo2_, z.gradsbo2, h_bo2_, 320);



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


			break;
		}


		for(int i = 0; i<320*320; ++i)
		{
			wxf[i] = wxf_[i];
			wxg[i] = wxg_[i];
			wxi[i] = wxi_[i];
			wxo[i] = wxo_[i];
			whf[i] = whf_[i];
			whg[i] = whg_[i];
			whi[i] = whi_[i];
			who[i] = who_[i];
			wxf2[i] = wxf2_[i];
			wxg2[i] = wxg2_[i];
			wxi2[i] = wxi2_[i];
			wxo2[i] = wxo2_[i];
			whf2[i] = whf2_[i];
			whg2[i] = whg2_[i];
			whi2[i] = whi2_[i];
			who2[i] = who2_[i];

			h_wxf[i] = wxf_[i];
			h_wxg[i] = wxg_[i];
			h_wxi[i] = wxi_[i];
			h_wxo[i] = wxo_[i];
			h_whf[i] = whf_[i];
			h_whg[i] = whg_[i];
			h_whi[i] = whi_[i];
			h_who[i] = who_[i];
			h_wxf2[i] = wxf2_[i];
			h_wxg2[i] = wxg2_[i];
			h_wxi2[i] = wxi2_[i];
			h_wxo2[i] = wxo2_[i];
			h_whf2[i] = whf2_[i];
			h_whg2[i] = whg2_[i];
			h_whi2[i] = whi2_[i];
			h_who2[i] = who2_[i];

		}





		for(int i = 0; i<320; ++i)
		{
			bf[i] = bf_[i];
			bg[i] = bg_[i];
			bi[i] = bi_[i];
			bo[i] = bo_[i];
			bf2[i] = bf2_[i];
			bg2[i] = bg2_[i];
			bi2[i] = bi2_[i];
			bo2[i] = bo2_[i];

			h_bf[i] = h_bf_[i];
			h_bg[i] = h_bg_[i];
			h_bi[i] = h_bi_[i];
			h_bo[i] = h_bo_[i];
			h_bf2[i] = h_bf2_[i];
			h_bg2[i] = h_bg2_[i];
			h_bi2[i] = h_bi2_[i];
			h_bo2[i] = h_bo2_[i];
		}









	}
}
} // extern"C"




