#include <math.h>
#include <stdio.h>





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
		//std::cout << 1/(1+exp(-90)) ;
		for(int i = 0; i < 919; ++i) //insize
		{
			in[i] = in[i];
			out[i] = 1/(1+exp(-in[i]));
			//std::cout << out[i] << " " << std::endl;
		}
		//std::cout << "check" << std::endl;
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
			//std::cout << dout[o];
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
			out[i] = std::max(float(0), in[i]);
			if(out[i] == 0)
			{
				mask[i] = 1;
			}
		}
		for(int i = 0; i < 320*5; ++i)
		{
			//std::cout << out[i];
			//std::cout << mask[i];
		}

	}


	void backward(float* dout)
	{
		/*
		for(int i = 0; i < 975*320; ++i)
		{
			std::cout << mask[i];
		}
		*/

		for(int o = 0; o < 320*975; ++o)
		{
			//std::cout << mask[o];
			if(mask[o] == 1)
			{
				dout[o] = 0;
			}else{
				dout[o] = dout[o];
			}
			//std::cout << dout[o];
			//float dx[o] = dout[o] * ( out[o] > float(0) ? float(1) : float(0));
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
			out[i] = std::max(float(0), in[i]);
			//std::cout << out[i] << std::endl;
			if(out[i] == 0)
			{
				mask2[i] = 1;
			}
			//std::cout << mask2[i];
		}
		for(int i = 0; i < 5; ++i)
		{
			//std::cout << out[i];
			//std::cout << mask[i];
		}

	}


	void backward(float* dout)
	{
		/*
		for(int i = 0; i < 975*320; ++i)
		{
			std::cout << mask[i];
		}
		*/
		for(int o = 0; o < 925; ++o)
		{
			//std::cout << mask[o];
			if(mask2[o] == 1)
			{
				dout[o] = 0;
			}else{
				dout[o] = dout[o];
			}
			//std::cout << dout[o];
			//float dx[o] = dout[o] * ( out[o] > float(0) ? float(1) : float(0));
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
			out[i] = std::max(float(0), in[i]);
			//std::cout << out[i] << std::endl;
			if(out[i] == 0)
			{
				mask2[i] = 1;
			}
			//std::cout << mask2[i];
		}
		for(int i = 0; i < 5; ++i)
		{
			//std::cout << out[i];
			//std::cout << mask[i];
		}

	}


	void backward(float* dout, float* out)
	{
		/*
		for(int i = 0; i < 975*320; ++i)
		{
			std::cout << mask[i];
		}
		*/

		for(int o = 0; o < 919; ++o)
		{
			//std::cout << mask[o];
			if(mask2[o] == 1)
			{
				dout[o] = 0;
			}else{
				dout[o] = out[o];
			}
			//std::cout << dout[o];
			//float dx[o] = dout[o] * ( out[o] > float(0) ? float(1) : float(0));
		}
	}

};



class dropout{

public:
	/*
	dropout(float ratio, bool mask){
		float ratio = ratio;
		bool mask = mask;
	}
	*/

	float mask[640*75];


	void forward(float* in, float* out, int insize, float ratio, bool train_flg = true)
	{
		float num;
		if(train_flg){
			for(int i = 0; i < insize; ++i)
			{
				num = (float)rand()/RAND_MAX;


				if(num > ratio){
					mask[i] = 1;
					//std::cout << num << std::endl;
				}else{
					mask[i] = 0;
				}
				out[i] = (0.00000001 + in[i]) * mask[i];
			}
		}else{
			for(int i = 0; i < insize; ++i)
			{

				out[i] = in[i] * (1.0 - ratio);
			}

		}
		//return out

	}//forward


	void backward(float* dout, int outsize)
	{
		for(int o = 0; o < outsize; ++o)
		{

			dout[o] = (0.0000001 + dout[o]) * mask[o];

		}
		//return dout
	}

};




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
	//float paramsw2[75*640*925];
	//float paramsb2[925];
	//float gradsw2[75*640*925];
	//float gradsb2[925];
	float act[75*640];

	//void forward(float* in, float* out, int insize, int kernelsize)
	//void forward(float in, float out, float kernel, float b)
	void forward(float* in, float* out, float* kernel, float* b)
	{
		for(int i = 0; i < 1000; ++i)
		{
			//std::cout << in[i];
		}
		for(int i = 0; i < 75*640; ++i)
		{
			act[i] = in[i];
		}
		for(int i = 0; i < 75*320; ++i)
		{
			//std::cout << act[i];
		}

		//kernel = 75*320*925

		for(int i = 0; i < 925; ++i) //outsize
		{	
			out[i] = 0;
			int start = 75*640*i;	
			for(int j = 0; j < 75*640; ++j) //insize
			{
				out[i] += (0.00000001 + in[j]) * kernel[start+j];
			}
			out[i] += b[i];
			//std::cout << out[i];
		}

		/*
		for(int i = 0; i < 75*640; ++i) //outsize
		{	
			out[i] = 0;
			int start = 75*640*i;	
			for(int j = 0; j < 925; ++j) //insize
			{
				out[i] += (0.00000001 + in[j]) * kernel[start+j];
			}
			out[i] += b[i];
			//std::cout << out[i];
		}
		*/




	}


	void backward(float* dout, float* paramsw2, float* gradsw2, float* gradsb2)
	{

		//dout = 75*320
		//paramsw2 = 75*320
	
		float tmp[75*640];
		for (int j = 0; j < 75*640; ++j)
		{
			tmp[j] = 0;  //initializing was very important. otherwise, so many nan (-nan) was happening.
		}

			
		for (int j = 0; j < 925; ++j)
		{

			//std::cout << act[j];
			int begin = j*75*640;
			for(int i = 0; i < 75*640; ++i)
			{
				tmp[i] += (0.0000001 + dout[j]) * paramsw2[begin+i];
				gradsw2[begin+i] += act[i] * (0.00000001 + dout[j]);
			}
			gradsb2[j] += dout[j];

		}
		for(int i = 0; i < 75*640; ++i)
		{
			//std::cout << tmp[i];
			dout[i] = tmp[i];
		}
		for(int i = 0; i < 919; ++i)
		{
			//std::cout << dout[i];
		}
	}
};




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
	//float paramsw3[925*919];
	//float paramsb3[919];
	//float gradsw3[925*919];
	//float gradsb3[919];
	float act2[925];

	//void forward(float* in, float* out, int insize, int kernelsize)
	//void forward(float in, float out, float kernel, float b)
	void forward(float* in, float* out, float* kernel, float* b)
	{
		for(int i = 0; i < 925*919; ++i)
		{
			//std::cout << kernel[i];
		}
		for(int i = 0; i < 1000; ++i)
		{
			//std::cout << in[i];
		}
		for(int i = 0; i < 925; ++i)
		{
			act2[i] = in[i];
		}
		for(int i = 0; i < 925; ++i)
		{
			//std::cout << act2[i];
		}

		//kernel = 75*320*919
		for(int i = 0; i < 919; ++i) //outsize
		{	
			out[i] = 0;
			int start = 925*i;	
			for(int j = 0; j < 925; ++j) //insize
			{
				//std::cout << kernel[start+j] << std::endl;
				out[i] += in[j] * kernel[start+j];
				//out[i] += (0.0000000001 + in[j]) * kernel[start+j];
			}
			//std::cout << out[i] << std::endl;
			out[i] += b[i];
		}
	}


	void backward(float* dout, float* paramsw3, float* gradsw3, float* gradsb3)
	{
		for(int i = 0; i < 925; ++i)
		{
			//std::cout << act[i];
		}

		//dout = 925 
	
		float tmp[925];
		for (int j = 0; j < 925; ++j)
		{
			tmp[j] = 0;  //initializing was very important. otherwise, so many nan (-nan) was happening.
		}


		for (int j = 0; j < 919; ++j)
		{
			int begin = j*925;
			for(int i = 0; i < 925; ++i)
			{
				//tmp[i] += (0.000001 + dout[j]) * paramsw3[begin+i];
				tmp[i] += dout[j] * paramsw3[begin+i];
				//tmp[i] += dout[j] * paramsw3[919*i+j];
				//std::cout << paramsw3[begin+i];
				
				//gradsw3[begin+i] += act2[i] * (0.0000001 + dout[j]);
				gradsw3[begin+i] += act2[i] * dout[j];

			}
			gradsb3[j] += dout[j];
		}
		for(int i = 0; i < 925; ++i)
		{
			dout[i] = tmp[i];
			//std::cout << dout[i];
			//std::cout << gradsw2[i];
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
	
		for(int i = 0; i < 26*4*320; ++i)
		{
			//std::cout << kernel[i];
			//std::cout << in[i];
		}
		//std::cout << std::endl;


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
	 					out[st+i] += (0.00000001 + in[t+4*(k+i)]) * kernel[stk+startk+k];
						//std::cout << out[st+i];
					}
				}
				out[st+i] += b[i];
			}
		}
		for(int i = 0; i < 320*5; ++i)
		{
			//std::cout << out[i];
		}
	}

	void backward(float* dout, float* paramsw1, float* gradsw1, float* gradsb1)
	{
		for(int i = 0; i < 320*975; ++i)
		{
			//std::cout << dout[i];
			//std::cout << actc[i];
		}

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
						//std::cout << beg << ":";
						gradsw1[beginslide+sstart+t] += actc[beg] * dout[begin+i];
						//std::cout << gradsw1[i];
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
						gradsw1[begin+sstart+s] += (0.000000001 + actc[4*(c+s)+t]) * dout[begind+i];
					}
					//std::cout << begin+sstart+s << " ";


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

		
		for (int j = 0; j < 1000; ++j) //insize
		{

			int st = j*4;
			//float dout[1025]
			//kernelsize = 26*4*320
			for(int t = 0; t < 320; ++t)//320 
			{
				int start = t*26*4;
				for(int k = 0, i = 0; k < 26; i++, k++) //kernelsize
				{
					int startk = 4*k;
					int startkp = 4*(26-k);
					for(int c = 0; c < 4; ++c)
					{
						//dout[st+c] += tmpc[start+startk+c] * paramsw1[start+startkp+c];
					}
				}
			}
		}

		for(int i = 0; i < 1000; ++i)
		{
			//std::cout << dout[i];
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
			//std::cout << max[i];
			if(max[i] == 1)
			{
				cnt += 1;
			}
				

		}
		//std::cout << cnt << std::endl;
	}

	void backward(float* dout)
	{
		/*
		for(int i = 0; i < 975*320; ++i)
		{
			std::cout << max[i];
		}
		*/
		for(int i = 0; i < 975*320; ++i) 
		{
			//std::cout << max[i];
			if(max[i] != -1)
			{
				dout[i] = dout[i];
			}else{
				dout[i] = 0;
			}
			//std::cout << dout[i];
		}

	}
};



