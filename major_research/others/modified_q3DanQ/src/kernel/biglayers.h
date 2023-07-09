#include <hls_math.h>

#pragma once



class sigmoid{
public:
	/*	
	sigmoid()
	{
		float* out 
	}
	*/
	

	//void forward(float* in, int insize)
	void forward(float* in, float* out)
	{
		for(int i = 0; i < 919; ++i) //insize
		{
			in[i] = in[i];
			out[i] = 1/(1+exp(-in[i]));
		}
	}

	void backward(float* dout, float* out)
	{
		float tmp[919];
		for(int o = 0; o < 919; ++o)
		{
			tmp[o] = dout[o] * (1 - out[o]) * out[o];
		}
		for(int o = 0; o < 919; ++o)
		{
			dout[o] = tmp[o];
		}
	}
};



class relu{
public:
	int mask[975*320];

	//void forward(float* in, float* out, int insize)
	void forward(float* in, float* out)
	{
		for(int i = 0; i < 320*975; ++i) //insize
		{
			if(in[i] < 0)
			{
				out[i] = 0;
			}
			if(out[i] == 0)
			{
				mask[i] = 1;
			}
		}

	}


	void backward(float* dout)
	{

		for(int o = 0; o < 320*975; ++o)
		{
			if(mask[o] == 1)
			{
				dout[o] = 0;
			}else{
				dout[o] = dout[o];
			}
		}
	}

};

class relu2{
public:
	int mask2[925];

	//void forward(float* in, float* out, int insize)
	void forward(float* in, float* out)
	{
		for(int i = 0; i < 925; ++i) //insize
		{
			if(in[i] < 0)
			{
				out[i] = 0;
			}
			if(out[i] == 0)
			{
				mask2[i] = 1;
			}
		}

	}


	void backward(float* dout)
	{

		for(int o = 0; o < 925; ++o)
		{
			if(mask2[o] == 1)
			{
				dout[o] = 0;
			}else{
				dout[o] = dout[o];
			}
		}
	}

};

class relu3{
public:
	int mask2[919];

	//void forward(float* in, float* out, int insize)
	void forward(float* in, float* out)
	{
		for(int i = 0; i < 919; ++i) //insize
		{
			if(in[i] < 0)
			{
				out[i] = 0;
			}
			if(out[i] == 0)
			{
				mask2[i] = 1;
			}
		}

	}


	void backward(float* dout, float* out)
	{
		for(int o = 0; o < 919; ++o)
		{
			if(mask2[o] == 1)
			{
				dout[o] = 0;
			}else{
				dout[o] = out[o];
			}
		}
	}

};

/*
class dropout{


	dropout(float ratio, bool mask){
		float ratio = ratio;
		bool mask = mask;
	}

	void forward(float* in, float* out; int insize; bool train_flg)
	{
		if(train_flg){
			for(int i = 0; i < insize; ++i)
			{
				num = (float)rand()/RAND_MAX;

				if(num > ratio){
					mask[i] = true;
				}else{
					mask[i] = false;
				}
				out[i] = in[i] * mask[i];
			}
		}else{
			for(int i = 0; i < insize; ++i)
			{

				out[i] = in[i] * (float(1) - ratio);
			}

		}
		//return out



	void backward(float* dout, int outsize)
	{
		for(int o = 0; o < outsize; ++o){

			dout[i] = dout[i] * mask[i];

		}
		//return dout

	}
	

}
}
*/

class fullc{
/*
private:
	float* w;
	float* b;

	fullc(float* w, float*b)
	{
		float* act[75*320];
	}
*/
public:
	float paramsw2[75*320];
	float paramsb2[1];
	float gradsw2[75*320];
	float gradsb2[1];
	float act[75*320];

	//void forward(float* in, float* out, int insize, int kernelsize)
	//void forward(float in, float out, float kernel, float b)
	void forward(float* in, float* out, float* kernel, float* b)
	{
		for(int i = 0; i < 75*320; ++i)
		{
			act[i] = in[i];
		}

		//kernel = 75*320*925
		for(int i = 0; i < 1; ++i) //outsize
		{	
			out[i] = 0;
			int start = 75*320*i;	
			for(int j = 0; j < 75*320; ++j) //insize
			{
				out[i] += in[j] * kernel[start+j];
			}
			out[i] += b[i];
		}
	}


	void backward(float* dout, float* paramsw2, float* gradsw2, float* gradsb2)
	{

		//dout = 75*320
		//paramsw2 = 75*320
	
		float tmp[75*320];
		for (int j = 0; j < 1; ++j)
		{
			int begin = j*75*320;
			for(int i = 0; i < 75*320; ++i)
			{
				tmp[i] += dout[j] * paramsw2[begin+i];
				gradsw2[begin+i] += act[i] * dout[j];
			}
			gradsb2[j] += dout[j];
		}
		for(int i = 0; i < 75*320; ++i)
		{
			dout[i] = tmp[i];
		}
	}
};





/*


class fullc{

private:
	float* w;
	float* b;

	fullc(float* w, float*b)
	{
		float* act[75*320];
	}

public:
	float paramsw2[75*320*925];
	float paramsb2[925];
	float gradsw2[75*320*925];
	float gradsb2[925];
	float act[75*320];

	//void forward(float* in, float* out, int insize, int kernelsize)
	//void forward(float in, float out, float kernel, float b)
	void forward(float* in, float* out, float* kernel, float* b)
	{
		for(int i = 0; i < 75*320; ++i)
		{
			act[i] = in[i];
		}

		//kernel = 75*320*925
		for(int i = 0; i < 925; ++i) //outsize
		{	
			out[i] = 0;
			int start = 75*320*i;	
			for(int j = 0; j < 75*320; ++j) //insize
			{
				out[i] += in[j] * kernel[start+j];
			}
			out[i] += b[i];
		}
	}


	void backward(float* dout, float* paramsw2, float* gradsw2, float* gradsb2)
	{

		//dout = 75*320
		//paramsw2 = 75*320
	
		float tmp[75*320];
		for (int j = 0; j < 925; ++j)
		{
			int begin = j*75*320;
			for(int i = 0; i < 75*320; ++i)
			{
				tmp[i] += dout[j] * paramsw2[begin+i];
				gradsw2[begin+i] += act[i] * dout[j];
			}
			gradsb2[j] += dout[j];
		}
		for(int i = 0; i < 75*320; ++i)
		{
			dout[i] = tmp[i];
		}
	}
};


*/





class fullc2{
/*
private:
	float* w;
	float* b;

	fullc(float* w, float*b)
	{
		float* act[75*320];
	}
*/
public:
	float paramsw3[925*919];
	float paramsb3[919];
	float gradsw3[925*919];
	float gradsb3[919];
	float act2[925];

	//void forward(float* in, float* out, int insize, int kernelsize)
	//void forward(float in, float out, float kernel, float b)
	void forward(float* in, float* out, float* kernel, float* b)
	{
		for(int i = 0; i < 925; ++i)
		{
			act2[i] = in[i];
		}

		//kernel = 75*320*919
		for(int i = 0; i < 919; ++i) //outsize
		{	
			out[i] = 0;
			int start = 925*i;	
			for(int j = 0; j < 925; ++j) //insize
			{
				out[i] += in[j] * kernel[start+j];
			}
			out[i] += b[i];
		}
	}


	void backward(float* dout, float* paramsw3, float* gradsw3, float* gradsb3)
	{
		//dout = 925 
	
		float tmp[925];


		for (int j = 0; j < 919; ++j)
		{
			int begin = j*925;
			for(int i = 0; i < 925; ++i)
			{
				tmp[i] += dout[j] * paramsw3[begin+i];
				gradsw3[begin+i] += act2[i] * dout[j];
			}
			gradsb3[j] += dout[j];
		}
		for(int i = 0; i < 925; ++i)
		{
			dout[i] = tmp[i];
		}
	}
};

class  conv1d{
public:
	float paramsw1[26*4*320];
	float paramsb1[975*320];
	float gradsw1[26*4*320];
	float gradsb1[975*320];

	float actc[4000];

	//void forward(float* in, float* out, int datasize, float* kernel, int kernelsize)
	void forward(float* in, float* out, float* kernel, float* b)
	{
		for(int i = 0; i < 4000; ++i)
		{
			actc[i] = in[i];	
		}
		//kernelsize = 26*4*320
		//datasize = 4000
	
		for(int nk = 0; nk < 320; ++nk)
		{
			int st = nk*975;
			int stk = nk*26*4;

			for(int i = 0; i < 975; ++i) // batch-kernelsize
			{
				out[st+i] = 0;
				for(int t =0; t < 4; ++t) // datasize/batch
				{
					int startk = t*26;
					for(int j = i, k = 0; k < 26; j++, k++) //kernelsize
					{
	 					out[st+i] += in[t+4*(k+i)] * kernel[stk+startk+k];
					}
				}
				out[st+i] += b[i];
			}
		}
	}

	void backward(float* dout, float* paramsw1, float* gradsw1, float* gradsb1)
	{
		//gradsw1 = 26*4*320
		//dout:出力勾配マップ 975*320
		/*
		for(int j = 0; j < 320; ++j)
		{
			int begin = j*975;
			int beginslide = j*26*4;
			for(int slide = 0; slide < 26; ++slide)
			{
				int sstart = 4*slide;
				for(int t = 0; t < 4; ++t)
				{
					for(int i = 0, c = 0; i < 975; ++i, ++c) //kernelsize
					{
						int beg = 4*(c+slide)+t;
						gradsw1[beginslide+sstart+t] += actc[beg] * dout[begin+i];
					}
				}
			}
		}
		*/
		

		for(int j = 0; j < 320; ++j)
		{
			int begin = j*26*4;
			int begind = j*975;

			for(int t = 0; t < 4; ++t)
			{
				int sstart = 26*t;
				for(int s = 0; s < 26; ++s)
				{
					for(int i = 0, c = 0; i < 975; ++i, ++c) //kernelsize
					{
						gradsw1[begin+sstart+s] += actc[4*(c+s)+t] * dout[begind+i];
					}
				}

			}
		

		}






		for(int j = 0; j < 320; ++j)
		{
			int start = j*975;
			for(int o = 0; o < 975; ++o)
			{
				gradsb1[start+o] += dout[start+o];
			}
		}


		//padding
		/*
		float tmpc[50+26*4*320];
		for(int i = 0; i < 25; ++i)
		{
			tmpc[i] = {0};
		}
		for(int i = 0; i < 26*4*320; ++i)
		{
			tmpc[25+i] = dout[i];
		}
		for(int i = 0; i < 25; ++i)
		{
			tmpc[25+26*4*320+i] = {0};
		}
		*/

		
		for (int j = 0; j < 1000; ++j) //insize
		{

			//int st = j*4;
			//float dout[1025]
			//kernelsize = 26*4*320
			for(int t = 0; t < 320; ++t)//320 
			{
				//int start = t*26*4;
				for(int k = 0, i = 0; k < 26; i++, k++) //kernelsize
				{
					//int startk = 4*k;
					//int startkp = 4*(26-k);
					for(int c = 0; c < 4; ++c)
					{
						//dout[st+c] += tmpc[start+startk+c] * paramsw1[start+startkp+c];
					}
				}
			}
		}

		
	}	

};




class mpool{

public:
	int max[975*320];

	//void forward(float* in, float* out, int kernelsize,) //kernelsize = 13
	void forward(float* in, float* out) //kernelsize = 13
	{
		int cnt = 0;
		for(int i = 0; i < 975*320; ++i)
		{
			max[i] = -1;
		}
		//975->75 
		for(int j = 0; j < 320; ++j)
		{
			int start = 75*13*j;
			int starto = 75*j;

			for(int i = 0; i < 75; ++i) //sizeof(in)/kernelsize
			{
				int begin = 13*i;
				//out[i] = 0;
				int tmp = 0;
				int num = 0;
				for(int k = 0; k < 13; ++k) // krnelsize
				{
					if(in[start+begin+k] > tmp)
					{
						tmp = in[start+begin+k];
						num = start+begin+k;
					}	
				}
				out[starto+i] = tmp;
				max[num] = 1;
			}
		}
		for(int i = 0; i < 975*320; ++i)
		{
			if(max[i] == 1)
			{
				cnt += 1;
			}
				

		}
	}

	void backward(float* dout)
	{
		for(int i = 0; i < 975*320; ++i) 
		{
			if(max[i] != -1)
			{
				dout[i] = dout[i];
			}else{
				dout[i] = 0;
			}
		}

	}
};


class lstm{
public:


	void forward()
	{

	}




	void backward()
	{

	}

};

