#include <math.h>
#include <stdio.h>





class sigmoid{
public:
	/*
	sigmoid(float* in)
	{
		float* in 
		float* out 
	}
	*/
	
	//void forward(float* in, int insize)
	void forward(float* in, float* out)
	{
		for(int i = 0; i < 919; ++i) //insize
		{

		out[i] = 1/(exp(-in[i]));

		}
		//return out;
	}


	/*
	void backward(float* dout, float* out, int outsize)
	{
		for(int o = 0; o < outsize; ++o)
		{
			float dx[i] = dout[i] * (float(1) - out[o]) * out[o];

		}
		//return dx;
	}
	*/
};



class relu{
public:
	//void forward(float* in, float* out, int insize)
	void forward(float* in, float* out)
	{
		for(int i = 0; i < 320*975; ++i) //insize
		{
			out[i] = std::max(float(0), in[i]);
		}
	}

	/*
	void backward(float* dout, float* out, int outsize)
	{
		for(int o = 0; o < outsize; ++o)
		{
			float dx[o] = dout[o] * ( out[o] > float(0) ? float(1) : float(0));
		}
	}
	*/
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


public:
	fullc(float* w, float*b)
	{
		float* w = w;
		float* b = b;
		float* dw = 0;
		float* db = 0;
	}
*/
public:

	//void forward(float* in, float* out, int insize, int kernelsize)
	//void forward(float in, float out, float kernel, float b)
	void forward(float* in, float* out, float* kernel, float* b)
	{
	
		for(int i = 0; i < 919; ++i) //outsize
		{	
			for(int j = 0; j < 75*320; ++j) //insize
			{

				out[i] += in[j] * kernel[j] + b[i];
			}
		}
		//return out

	}

	/*
	void backward(float dout, int kernelsize)
	{

		for (int j = 0; j < insize; ++j)
		{
			for(int i = 0; i < kernelsize; ++i)
			{
				float dx += dout[i] * kernel[i];
				dw[j] += in[j] * dout[i];
				db[i] += dout[i];
				
			}
		}
		//return dx


	}
	*/


};



class  conv1d{
/*
private:
	float* w;
	float* b;


public:
	conv1d(float* w, float*b)
	{
		float* w = w;
		float* b = b;
		float* dw = 0;
		float* db = 0;
*/
public:

	//void forward(float* in, float* out, int datasize, float* kernel, int kernelsize)
	void forward(float* in, float* out, float* kernel, float* b)
	{
		//kernelsize = 26*4*320
		//datasize = 4000
		int batch = 1000;
		int batchk = 26;


		for(int nk = 0; nk < 320; ++nk)
		{

			for(int i = 0; i < 975; ++i) // batch-kernelsize
			{
				out[i] = 0;

				
				for(int t =0; t < 4; ++t) // datasize/batch
				{
					int start = t*batch;
					int startk = t*batchk;
					int k;
					int j;
					for(j = i, k = 0; k < 26; ++j, ++k) //kernelsize
					{
						out[nk+i] += in[start+j] * kernel[startk+k] + b[i];
					}
				}
			}
		}
		//return out;
	}

	/*
	void backward(float dout, int outsize, int kernelsize)
	{
		for (int j = 0; j < insize; ++j) //-1000
		{

			int padding = 50;
			dout = float(25) + dout + float(25);
			int batch = 320;
			int st = j*1000;


			//float dout[1025]
			//kernelsize = 26*4*320
			for(int t = 0; t < 320; ++t)//320 
			{
				int start = t*bacth
				int startk = t*kernelsize;
				for(int k = 0 int i = 0; k < kernelsize; ++i, ++k) //26
				{
					for(int c = 0; c < 4, ++c)
					{
						int start = t*bacth;
						int startk = t*kernelsize;
						float dx[j+c] += dout[start+i+c] * kernel[26*4*320-startk+k+c];
					}
				}
			}
		}

		//dout = 975*320
		//in = 4000
		for(int j = 0; j < 4000; ++j)
		{
			for(int i = 0; i < kernelsize; ++i)
			{
				dw[j] += in[j] * dout[i];
			}
		}
		for(int o = 0; o < 975*320; ++o)
		{
				db[i] += dout[i];
		}
	}	
	*/
		//return dx;

	

};




class mpool{
public:
	//void forward(float* in, float* out, int kernelsize,) //kernelsize = 13
	void forward(float* in, float* out, float* kernel) //kernelsize = 13
	{
		int max[75] = {-1};
		//975->75 
		for(int i = 1; i < 75; ++i) //sizeof(in)/kernelsize
		{
			int start = 13*i;
			out[i] = 0;
			for(int k = 0; k < 13; ++k) // krnelsize
			{
				if(in[start+k] > out[i])
				{
					out[i] = in[start+k];
					max[i] = start+k;
				}
			}
		}
		//return out;
	}

	/*
	void backward(float dout, int insize)
	{
		for(int i = 0; i < insize; ++i) //975
		{
			if(max[i] != -1)
			{
				dout[i] = dout[i];
			}else{
				dout[i] = 0:
			}
		}
		//return out

	}
	*/
};



