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
	int model
	)

	{	

	#pragma HLS INTERFACE m_axi port=datax offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=datay offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=dout offset=slave bundle=gmemm
	#pragma HLS INTERFACE m_axi port=buffer_output offset=slave bundle=gmemm
	//#pragma HLS INTERFACE m_axi port=model offset=slave bundle=gem //maybe, it doesn't work with this.
	#pragma HLS INTERFACE s_axilite port=datax bundle=control
	#pragma HLS INTERFACE s_axilite port=datay bundle=control
	#pragma HLS INTERFACE s_axilite port=dout bundle=control
	#pragma HLS INTERFACE s_axilite port=buffer_output bundle=control
	#pragma HLS INTERFACE s_axilite port=model bundle=control
	#pragma HLS INTERFACE s_axilite port=return bundle=control
			
	

	#ifndef __SYNTHESIS__
	    //printf("checking in kernel");
	#endif

	
	cnn z = cnn();
	rmsprop opt;



	switch (model){
		case 1:{
			// Forward process for LSTM
			ap_fixed<3, 1,AP_RND, AP_SAT> bufferx[75*320];
			ap_fixed<3, 1,AP_RND, AP_SAT> buffery[75*640];
			for(int i = 0; i<75*320; ++i)
			{
				bufferx[i] = datax[i];
				//buffery[i] = datax[i];
			}
			for(int i = 0; i<75*320; ++i)
			{
				buffery[75*320+i] = datax[75*320-i-1];
			}
			for(int i = 0; i<75*640; ++i)
			{
				buffery[i] = 0;
			}

			z.predict(bufferx, buffery); //forward
			for(int i = 0; i<75*640; ++i)
			{
				datay[i] = buffery[i];
			}
			break;
		}

		case 2:{
			// Backward process for LSTM
			ap_fixed<3, 1, AP_RND, AP_SAT> bufferd[640*75];
			for(int i = 0; i<75*640; ++i)
			{
				bufferd[i] = dout[i];
			}

			z.gradient(bufferd); //backward

			for(int i = 0; i<75*320; ++i)
			{
				buffer_output[i] = bufferd[i];
			}


			opt.update(z.wxf, z.gradswxf, z.h_wxf, 320*320);
			opt.update(z.wxg, z.gradswxg, z.h_wxg, 320*320);
			opt.update(z.wxi, z.gradswxi, z.h_wxi, 320*320);
			opt.update(z.wxo, z.gradswxo, z.h_wxo, 320*320);


			opt.update(z.whf, z.gradswhf, z.h_whf, 320*320);
			opt.update(z.whg, z.gradswhg, z.h_whg, 320*320);
			opt.update(z.whi, z.gradswhi, z.h_whi, 320*320);
			opt.update(z.who, z.gradswho, z.h_who, 320*320);

			opt.updateb(z.bf, z.gradsbf, z.h_bf, 320);
			opt.updateb(z.bg, z.gradsbg, z.h_bg, 320);
			opt.updateb(z.bi, z.gradsbi, z.h_bi, 320);
			opt.updateb(z.bo, z.gradsbo, z.h_bo, 320);


			opt.update(z.wxf2, z.gradswxf2, z.h_wxf2, 320*320);
			opt.update(z.wxg2, z.gradswxg2, z.h_wxg2, 320*320);
			opt.update(z.wxi2, z.gradswxi2, z.h_wxi2, 320*320);
			opt.update(z.wxo2, z.gradswxo2, z.h_wxo2, 320*320);

			opt.update(z.whf2, z.gradswhf2, z.h_whf2, 320*320);
			opt.update(z.whg2, z.gradswhg2, z.h_whg2, 320*320);
			opt.update(z.whi2, z.gradswhi2, z.h_whi2, 320*320);
			opt.update(z.who2, z.gradswho2, z.h_who2, 320*320);

			opt.updateb(z.bf2, z.gradsbf2, z.h_bf2, 320);
			opt.updateb(z.bg2, z.gradsbg2, z.h_bg2, 320);
			opt.updateb(z.bi2, z.gradsbi2, z.h_bi2, 320);
			opt.updateb(z.bo2, z.gradsbo2, z.h_bo2, 320);



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
	}
}
} // extern"C"




