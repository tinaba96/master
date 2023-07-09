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

	ap_fixed<16, 4, AP_RND, AP_SAT> *bf_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bg_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bi_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *bo_,

	
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxf_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxg_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxi_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_wxo_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whf_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whg_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_whi_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_who_,


	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bf_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bg_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bi_,
	ap_fixed<16, 4, AP_RND, AP_SAT> *h_bo_,

	int count

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

	#pragma HLS INTERFACE m_axi port=bf_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bg_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bi_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=bo_ offset=slave bundle=gmem

	#pragma HLS INTERFACE m_axi port=h_wxf_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_wxg_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_wxi_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_wxo_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_whf_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_whg_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_whi_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_who_ offset=slave bundle=gmem


	#pragma HLS INTERFACE m_axi port=h_bf_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_bg_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_bi_ offset=slave bundle=gmem
	#pragma HLS INTERFACE m_axi port=h_bo_ offset=slave bundle=gmem
	

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


	#pragma HLS INTERFACE s_axilite port=bf_ bundle=control
	#pragma HLS INTERFACE s_axilite port=bg_ bundle=control
	#pragma HLS INTERFACE s_axilite port=bi_ bundle=control
	#pragma HLS INTERFACE s_axilite port=bo_ bundle=control

	#pragma HLS INTERFACE s_axilite port=h_wxf_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxg_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxi_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_wxo_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whf_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whg_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_whi_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_who_ bundle=control

	#pragma HLS INTERFACE s_axilite port=h_bf_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bg_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bi_ bundle=control
	#pragma HLS INTERFACE s_axilite port=h_bo_ bundle=control

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

	ap_fixed<16, 4, AP_RND, AP_SAT> bf[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bg[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bi[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> bo[320];


	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxf[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxg[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxi[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_wxo[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whf[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whg[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_whi[320*320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_who[320*320];

	ap_fixed<16, 4, AP_RND, AP_SAT> h_bf[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bg[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bi[320];
	ap_fixed<16, 4, AP_RND, AP_SAT> h_bo[320];

	switch (model){
		case 1:{

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

			}


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

			//z.predict(bufferx, buffery, wxf_, wxg_, wxi_, wxo_, whf_, whg_, whi_, who_, wxf2_, wxg2_, wxi2_, wxo2_, whf2_, whg2_, whi2_, who2_, bf_, bg_, bi_, bo_, bf2_, bg2_, bi2_, bo2_); //forward
			//z.predict(bufferx, buffery, wxf, wxg, wxi, wxo, whf, whg, whi, who, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf, bg, bi, bo, bf2, bg2, bi2, bo2); //forward
			z.predictf(bufferx, buffery, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo); //forward

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

			//z.gradient(bufferd, wxf_, wxg_, wxi_, wxo_, whf_, whg_, whi_, who_, wxf2_, wxg2_, wxi2_, wxo2_, whf2_, whg2_, whi2_, who2_, bf_, bg_, bi_, bo_, bf2_, bg2_, bi2_, bo2_); //backward
			//z.gradient(bufferd, wxf, wxg, wxi, wxo, whf, whg, whi, who, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf, bg, bi, bo, bf2, bg2, bi2, bo2); //backward
			z.gradientf(bufferd, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo); //backward

			for(int i = 0; i<75*320; ++i)
			{
				#pragma HLS PIPELINE
				buffer_output[i] = bufferd[i];
			}

			if(count == 100)
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
				}

				for(int i = 0; i < 320; ++i)
				{
					z.gradsbf[i] = 0;
					z.gradsbg[i] = 0;
					z.gradsbi[i] = 0;
					z.gradsbo[i] = 0;

				}
			}

			if(count == 500)
			{
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					wxf_[i] = wxf[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					wxg_[i] = wxg[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					wxi_[i] = wxi[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					wxo_[i] = wxo[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					whf_[i] = whf[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					whg_[i] = whg[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					whi_[i] = whi[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					who_[i] = who[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
				
					h_wxf_[i] = h_wxf[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_wxg_[i] = h_wxg[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_wxi_[i] = h_wxi[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_wxo_[i] = h_wxo[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_whf_[i] = h_whf[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_whg_[i] = h_whg[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_whi_[i] = h_whi[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_who_[i] = h_who[i];
				}

				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					bf_[i] = bf[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					bg_[i] = bg[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					bi_[i] = bi[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					bo_[i] = bo[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE

				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					h_bf_[i] = h_bf[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					h_bg_[i] = h_bg[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					h_bi_[i] = h_bi[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					h_bo_[i] = h_bo[i];
				}
			}
			break;
		}



		case 3:{

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

			}


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
				#pragma HLS PIPELINE
				//buffery[75*320+i] = datax[75*320-i-1];
			}
			for(int i = 0; i<75*640; ++i)
			{
				#pragma HLS PIPELINE
				buffery[i] = 0;
			}

			z.predicts(bufferx, buffery, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo); //forward

			for(int i = 0; i<75*640; ++i)
			{
				#pragma HLS PIPELINE
				datay[i] = buffery[i];
			}
			break;
		}



		case 4:{
			// Backward process for LSTM
			ap_fixed<16, 4, AP_RND, AP_SAT> bufferd[640*75];
			for(int i = 0; i<75*640; ++i)
			{
				#pragma HLS PIPELINE
				bufferd[i] = dout[i];
			}

			z.gradients(bufferd, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo); //backward

			for(int i = 0; i<75*320; ++i)
			{
				#pragma HLS PIPELINE
				buffer_output[i] = bufferd[i];
			}

			if(count == 100)
			{

				opt.update(wxf, z.gradswxf2, h_wxf, 320*320);
				opt.update(wxg, z.gradswxg2, h_wxg, 320*320);
				opt.update(wxi, z.gradswxi2, h_wxi, 320*320);
				opt.update(wxo, z.gradswxo2, h_wxo, 320*320);


				opt.update(whf, z.gradswhf2, h_whf, 320*320);
				opt.update(whg, z.gradswhg2, h_whg, 320*320);
				opt.update(whi, z.gradswhi2, h_whi, 320*320);
				opt.update(who, z.gradswho2, h_who, 320*320);

				opt.updateb(bf, z.gradsbf2, h_bf, 320);
				opt.updateb(bg, z.gradsbg2, h_bg, 320);
				opt.updateb(bi, z.gradsbi2, h_bi, 320);
				opt.updateb(bo, z.gradsbo2, h_bo, 320);



				for(int i = 0; i < 320*320; ++i)
				{
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
					z.gradsbf2[i] = 0;
					z.gradsbg2[i] = 0;
					z.gradsbi2[i] = 0;
					z.gradsbo2[i] = 0;

				}
			}


			if(count == 500)
			{

				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					wxf_[i] = wxf[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					wxg_[i] = wxg[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					wxi_[i] = wxi[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					wxo_[i] = wxo[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					whf_[i] = whf[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					whg_[i] = whg[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					whi_[i] = whi[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					who_[i] = who[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
				
					h_wxf_[i] = h_wxf[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_wxg_[i] = h_wxg[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_wxi_[i] = h_wxi[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_wxo_[i] = h_wxo[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_whf_[i] = h_whf[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_whg_[i] = h_whg[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_whi_[i] = h_whi[i];
				}
				for(int i = 0; i<320*320; ++i)
				{
					#pragma HLS PIPELINE
					h_who_[i] = h_who[i];
				}

				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					bf_[i] = bf[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					bg_[i] = bg[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					bi_[i] = bi[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					bo_[i] = bo[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE

				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					h_bf_[i] = h_bf[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					h_bg_[i] = h_bg[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					h_bi_[i] = h_bi[i];
				}
				for(int i = 0; i<320; ++i)
				{
					#pragma HLS PIPELINE
					h_bo_[i] = h_bo[i];
				}
			}
			break;
		}

	}

}
} // extern"C"




