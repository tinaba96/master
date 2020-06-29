
class sigmoid{
public:
	sigmoid(float* in)
	{
		float* in 
		float* out 
	}
	
	float forward(float* in, int insize)
	{
		for(int i = 0; i < insize; ++i)
		{

		out[i] = 1/(exp(-in[i]));

		}
		return out;
	}


	float backward(float* dout, float* out, int outsize)
	{
		for(int o = 0; o < outsize; ++o)
		{
			float dx[i] = dout[i] * (float(1) - out[o]) * out[o];

		}
		return dx;
	}
}



class relu{
	float forward(float* in, float* out, int insize)
	{
		for(int i = 0; i < insize; ++i)
		{
			out[i] = std::max(float(0), in[i]);
		}
	}

	float backward(float* dout, float* out, int outsize)
	{
		for(int o = 0; o < outsize; ++o)
		{
			float dx[o] = dout[o] * ( out[o] > float(0) ? float(1) : float(0));
		}
	}
}


class dropout{


	dropout(float ratio, bool mask){
		float ratio = ratio
		bool mask = mask
	}

	float forward(float* in, float* out; int insize; bool train_flg)
	{
		if(train_flg){
			for(int i = 0; i < insize; ++i)
			{
				num = (float)rand()/RAND_MAX;

				if(num > ratio){
					mask[i] = true
				}else{
					mask[i] = false
				}
				out[i] = in[i] * mask[i]
			}
		}else{
			for(int i = 0; i < insize; ++i)
			{

				out[i] = in[i] * (float(1) - ratio)
			}

		}
		return out


	float backward(float* dout, int outsize)
	{
		for(int o = 0; o < outsize; ++o){

			dout[i] = dout[i] * mask[i]

		}
		return dout

	}

}




class fullc{
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


	float forward(float* in, float* out, int insize, int kernelsize)
	{
	
		for(int i = 0; i < kernelsize; ++i)
		{	
			for(int j = 0; j < insize; ++j)
			{

				out[i] += in[j] * kernel[j] + b;
			}
		}
		return out

	}

	float backward(float dout, int kernelsize)
	{

		for (int j = 0; j < insize; ++j)
		{
			for(int i = 0; i < kernelsize; ++i)
			{
				float dx += dout[i] * kernel[i]
				dw[j] = in[j] * dout[i]
				db[i] = dout[i]
				
			}
		}
		return dx


	}

}



class  conv1d{
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


	float forward(float* in, float* out, int datasize, float* kernel, int kernelsize)
	{
		//kernelsize = 26*4*320
		//datasize = 4000
		int batch = 1000;
		int batchk = 26;


		for(int nk = 0; nk < 320; ++nk)
		{

			for(int i = 0; i < batch-kernelsize; ++i) //-975
			{
				out[i] = 0;

				
				for(int t =0; t < datasize/batch; ++t) //-4
				{
					int start = t*batch
					int startk = t*batchk
					for(int j = i, int k = 0; k < kernelsize; ++j, ++k)
					{
						out[nk+i] += in[start+j] * kernel[startk+k] + b[i]
					}
				}
			}
		}
		return out;
	}

	float backward(float dout, int outsize, int kernelsize)
	{
		for (int j = 0; j < insize; ++j) //-4000
		{
			int start = t*batch
			int startk = t*batchk
			for(int k = 0 int i = 0; k < kernelsize; ++i, ++k)
			{
				float dx[j] += dout[start+i] * kernel[start+k];
				dw[j] = in[j] * dout[i];
				db[i] = dout[i];
			}
		}	

		return dx;

	}

}




class pooling{
	float forward(float* in, float* out, int kernelsize,) //kernelsize = 13
	{
		//975->75 
		for(int i = 0; sizeof(in)/kenelsize; ++i) //75
		{
			int start = 13*i;
			int max[75] = -1;
			out[i] = 0;
			for(int k = 0; k < kenelsize; ++k) //-13
			{
				if(in[start+k] > out[i])
				{
					out[i] = in[start+k]
					max[i] = start+k
				}
			}
		}
		return out;
	}

	float backward(float dout, int insize)
	{
		for(int i = 0; i < insize; ++i) //975
		{
			if(max[i] != -1)
			{
				dout[i] = dout[i]
			}else{
				dout[i] = 0	
			}
		}
		return out

	}



