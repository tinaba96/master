#include <ap_fixed.h>
#include "ap_int.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "hls_math.h"


#pragma once

class rmsprop{
public:

	ap_fixed<3, 1, AP_RND, AP_SAT> lr = 0.01;
	ap_fixed<3, 1, AP_RND, AP_SAT> decayrate = 0.99;
	ap_fixed<3, 1, AP_RND, AP_SAT> delta = 1;
	//ap_fixed<10, 1, AP_RND, AP_SAT> delta = 0.000001;
	void update(ap_fixed<3, 1, AP_RND, AP_SAT>* params, ap_fixed<3, 1, AP_RND, AP_SAT>* grads, ap_fixed<3, 1, AP_RND, AP_SAT>* h, int size)
	{
		
		for(int i = 0; i < size; ++i)
		{
			
			ap_fixed<3, 1, AP_RND, AP_SAT> temp;
			ap_fixed<3, 1, AP_RND, AP_SAT> temp2;
			ap_fixed<3, 1, AP_RND, AP_SAT> temp3;
			temp = h[i];	
			h[i] = decayrate * temp;
			//h[i] *= decayrate;
			temp = h[i];
			temp2 = grads[i];
			h[i] =  temp + (1-decayrate)*temp2*temp2;
			//h[i] += (1-decayrate)*grads[i]*grads[i];

			//ap_fixed<3, 1, AP_RND, AP_SAT> temp;
			float ftemp;	
			ftemp = h[i];
			temp = sqrt(ftemp);
			temp3 = params[i];
			params[i] = temp3 - lr*temp2/(delta + temp);
			//params[i] = lr*grads[i]/(delta + sqrt(h[i]));

		}
	}

	void updateb(ap_fixed<3, 1, AP_RND, AP_SAT>* params, ap_fixed<3, 1, AP_RND, AP_SAT>* grads, ap_fixed<3, 1, AP_RND, AP_SAT>* h, int size)
	{
		
		for(int i = 0; i < size; ++i)
		{
			
			ap_fixed<3, 1, AP_RND, AP_SAT> temp;
			ap_fixed<3, 1, AP_RND, AP_SAT> temp2;
			ap_fixed<3, 1, AP_RND, AP_SAT> temp3;
			temp = h[i];	
			h[i] = decayrate * temp;
			//h[i] *= decayrate;
			temp = h[i];
			temp2 = grads[i];
			h[i] =  temp + (1-decayrate)*temp2*temp2;
			//h[i] += (1-decayrate)*grads[i]*grads[i];

			//ap_fixed<3, 1, AP_RND, AP_SAT> temp;
			float ftemp;	
			ftemp = h[i];
			temp = sqrt(ftemp);
			temp3 = params[i];
			params[i] = temp3 - lr*temp2/(delta + temp);
			//params[i] = lr*grads[i]/(delta + sqrt(h[i]));

		}
	}



};




