#include <iostream>
#include <iomanip>
#include <random> 
#include <string>
#include <cstring>
#include <fstream>
#include <sstream>
#include <istream>
#include <algorithm>
#include <vector>
#include <stdio.h>
#include <stdlib.h>
#include <chrono>
#include <unistd.h>

#include "layers.h"
#include "loss.h"
#include "optimizer.h"
#include "lstm.h"
#include "main.hpp"
#include "readw.cpp"

//#include "../../libs/xcl2/xcl2.hpp"


//conv -> relu -> maxpooling -> dropout -> LSTM -> dropout -> affine -> relu -> affine -> sigmoid
using namespace std;

class cnn 
{
public: 
	float paramsw1[26*4*320];
	float gradsw1[26*4*320];
	float paramsb1[975*320];
	float gradsb1[975*320];
	float paramsw2[75*640*925];
	float paramsb2[925];
	float gradsb2[925];
	float gradsw2[75*925*640];
	float paramsw3[925*919];
	float paramsb3[919];
	float gradsb3[919];
	float gradsw3[925*919];


	// ------------------------------------------
	// sending weights and h parameters to kernel
	// ------------------------------------------
	//for LSTM
	float wxf[320*320];
	float wxg[320*320]; 
	float wxi[320*320];  
	float wxo[320*320];
	/*
	float gradswxf[320*320];
	float gradswxg[320*320]; 
	float gradswxi[320*320];  
	float gradswxo[320*320];
	*/
	float wxf2[320*320];
	float wxg2[320*320]; 
	float wxi2[320*320];  
	float wxo2[320*320];
	/*
	float gradswxf2[320*320];
	float gradswxg2[320*320]; 
	float gradswxi2[320*320];  
	float gradswxo2[320*320];
	*/

	float whf[320*320];
	float whg[320*320]; 
	float whi[320*320];  
	float who[320*320];
	/*
	float gradswhf[320*320];
	float gradswhg[320*320]; 
	float gradswhi[320*320];  
	float gradswho[320*320];
	*/
	float whf2[320*320];
	float whg2[320*320]; 
	float whi2[320*320];  
	float who2[320*320];
	/*
	float gradswhf2[320*320];
	float gradswhg2[320*320]; 
	float gradswhi2[320*320];  
	float gradswho2[320*320];
	*/

	float bf[320];
	float bg[320]; 
	float bi[320];  
	float bo[320];
	/*
	float gradsbf[320];
	float gradsbg[320]; 
	float gradsbi[320];  
	float gradsbo[320];
	*/
	float bf2[320];
	float bg2[320]; 
	float bi2[320];  
	float bo2[320];
	/*
	float gradsbf2[320];
	float gradsbg2[320]; 
	float gradsbi2[320];  
	float gradsbo2[320];
	*/


	float h_wxf[320*320];
	float h_wxg[320*320];
	float h_wxi[320*320];
	float h_wxo[320*320];
	float h_whf[320*320];
	float h_whg[320*320];
	float h_whi[320*320];
	float h_who[320*320];
	float h_bf[320];
	float h_bg[320];
	float h_bi[320];
	float h_bo[320];
	float h_wxf2[320*320];
	float h_wxg2[320*320];
	float h_wxi2[320*320];
	float h_wxo2[320*320];
	float h_whf2[320*320];
	float h_whg2[320*320];
	float h_whi2[320*320];
	float h_who2[320*320];
	float h_bf2[320];
	float h_bg2[320];
	float h_bi2[320];
	float h_bo2[320];

	// ------------------------------------------
	// END
	// ------------------------------------------


	float h1[26*4*320];
	float h2[975*320];
	//float *h3 = new float[75*320*925];
	float h3[75*640*925];
	float h4[925];
	float h5[925*919];
	float h6[919];


	conv1d a = conv1d();
	relu b = relu();
	mpool c = mpool();
	dropout d;
	TimeBiLSTM e;
	dropout f;
	fullc g = fullc();
	relu2 h = relu2();
	fullc2 i = fullc2();
	sigmoid j = sigmoid();
	//relu3 g = relu3();
	
	cnn()
	{
		//weight initialization
		std::random_device rnd;
		std::mt19937 mt(rnd());
		std::uniform_int_distribution<> rand(-10000, 10000);
		//std::uniform_int_distribution<> rand(-100, 100);
		for(int i = 0; i < 26*4*320; ++i)
		{
			//std::cout << rand(mt)/100.0000 << endl;
			//paramsw1[i] = {0.9};
			paramsw1[i] = rand(mt)/1000.00;
			gradsw1[i] = 0;
			//std::cout << paramsw1[i];
		}
		for(int i = 0; i < 975*320; ++i)
		{
			//std::cout << rand(mt)/100000.0000 << endl;
			//paramsw1[i] = {0.9};
			paramsb1[i] = rand(mt)/1000.00;
			gradsb1[i] = 0;
			//gradsb1[i] = 0;
			//std::cout << paramsw1[i];
		}
		for(int i = 0; i < 925*75*320; ++i)
		{
			//std::cout << rand(mt)/100000.0000 << endl;
			//paramsw1[i] = {0.9};
			paramsw2[i] = rand(mt)/1000.00;
			gradsw2[i] = 0;
			//std::cout << paramsw1[i];
		}	

		for(int i = 0; i < 925; ++i)
		{
			//std::cout << rand(mt)/100000.0000 << endl;
			//paramsw1[i] = {0.9};
			paramsb2[i] = rand(mt)/1000.00;
			gradsb2[i] = 0;
			//gradsb2[i] = 0;
			//std::cout << paramsw1[i];
		}

		for(int i = 0; i < 925*919; ++i)
		{
			//std::cout << rand(mt)/100000.0000 << endl;
			//paramsw1[i] = {0.9};
			paramsw3[i] = rand(mt)/1000.00;
			gradsw3[i] = 0;
			//std::cout << paramsw3[i];
		}	
		
		for(int i = 0; i < 919; ++i)
		{
			//std::cout << rand(mt)/100.0000 << endl;
			//paramsw1[i] = {0.9};
			paramsb3[i] = rand(mt)/1000.00;
			gradsb3[i] = 0;
			//gradsb3[i] = 0;
			//std::cout << paramsb3[i];
		}

		for(int i = 0; i < 320*320; ++i)
		{
			wxf[i] = rand(mt)/1000.00;
			wxg[i] = rand(mt)/1000.00;
			wxi[i] = rand(mt)/1000.00;
			wxo[i] = rand(mt)/1000.00;
			whf[i] = rand(mt)/1000.00;
			whg[i] = rand(mt)/1000.00;
			whi[i] = rand(mt)/1000.00;
			who[i] = rand(mt)/1000.00;

			wxf2[i] = rand(mt)/1000.00;
			wxg2[i] = rand(mt)/1000.00;
			wxi2[i] = rand(mt)/1000.00;
			wxo2[i] = rand(mt)/1000.00;
			whf2[i] = rand(mt)/1000.00;
			whg2[i] = rand(mt)/1000.00;
			whi2[i] = rand(mt)/1000.00;
			who2[i] = rand(mt)/1000.00;

			h_wxf[i] = 0;
			h_wxg[i] = 0;
			h_wxi[i] = 0;
			h_wxo[i] = 0;
			h_wxf2[i] = 0;
			h_wxg2[i] = 0;
			h_wxi2[i] = 0;
			h_wxo2[i] = 0;

			h_whf[i] = 0;
			h_whg[i] = 0;
			h_whi[i] = 0;
			h_who[i] = 0;
			h_whf2[i] = 0;
			h_whg2[i] = 0;
			h_whi2[i] = 0;
			h_who2[i] = 0;


		}


		for(int i = 0; i < 320; ++i)
		{
			bf[i] = rand(mt)/1000.00;
			bg[i] = rand(mt)/1000.00;
			bi[i] = rand(mt)/1000.00;
			bo[i] = rand(mt)/1000.00;

			bf2[i] = rand(mt)/1000.00;
			bg2[i] = rand(mt)/1000.00;
			bi2[i] = rand(mt)/1000.00;
			bo2[i] = rand(mt)/1000.00;

			h_bf[i] = 0;
			h_bg[i] = 0;
			h_bi[i] = 0;
			h_bo[i] = 0;
			h_bf2[i] = 0;
			h_bg2[i] = 0;
			h_bi2[i] = 0;
			h_bo2[i] = 0;
		}


		/*
		for(int i = 0; i < 320*320; ++i)
		{
			wxf[i] = rand(mt)/1000.00;
			wxg[i] = rand(mt)/1000.00;
			wxi[i] = rand(mt)/1000.00;
			wxo[i] = rand(mt)/1000.00;
			whf[i] = rand(mt)/1000.00;
			whg[i] = rand(mt)/1000.00;
			whi[i] = rand(mt)/1000.00;
			who[i] = rand(mt)/1000.00;
			wxf2[i] = rand(mt)/1000.00;
			wxg2[i] = rand(mt)/1000.00;
			wxi2[i] = rand(mt)/1000.00;
			wxo2[i] = rand(mt)/1000.00;
			whf2[i] = rand(mt)/1000.00;
			whg2[i] = rand(mt)/1000.00;
			whi2[i] = rand(mt)/1000.00;
			who2[i] = rand(mt)/1000.00;
		}


		for(int i = 0; i < 320; ++i)
		{
			bf[i] = rand(mt)/1000.00;
			bg[i] = rand(mt)/1000.00;
			bi[i] = rand(mt)/1000.00;
			bo[i] = rand(mt)/1000.00;
			bf2[i] = rand(mt)/1000.00;
			bg2[i] = rand(mt)/1000.00;
			bi2[i] = rand(mt)/1000.00;
			bo2[i] = rand(mt)/1000.00;

			bf[i] = 0;
			bg[i] = 0;
			bi[i] = 0;
			bo[i] = 0;
			bf2[i] = 0;
			bg2[i] = 0;
			bi2[i] = 0;
			bo2[i] = 0;

		}
		*/






		//float paramsw1[26*4*320];  //with this, loss will be -36 and paramsw1 in void predict will be all 0

		//float paramsw1[26*4*320];  //with this, loss will be -36 and paramsw1 in void predict will be all 0


		/*
		float paramsb1[975*320];
		for(int i = 0; i < 975*320; ++i)
		{
			paramsb1[i] = {1};
		}

		float paramsw2[13*320];
		for(int i = 0; i < 13*320; ++i)
		{
			paramsw2[i] = {0.9};
		}
		float paramsb2[75*320];
		for(int i = 0; i < 75*320; ++i)
		{
			paramsb2[i] = {1};
		}
		float paramsw3[75*320];
		for(int i = 0; i < 75*320; ++i)
		{
			paramsw3[i] = {0.9};
		}
		float paramsb3[919];
		for(int i = 0; i < 919; ++i)
		{
			paramsb3[i] = {1};
		}

		float dout[919];
		for(int i = 0; i < 919; ++i)
		{
			dout[i] = {1};
		}
		*/

		

	}

	void predict1(float *x, float *y)
	{
		
		//std::cout << sizeof(x) << std::endl;
		//float ay[975*320];

		a.forward(x, y, paramsw1, paramsb1); //convolutional
		//std::cout << sizeof(x) << std::endl;
					
		for(int i = 0; i < 919; i++)
		{
			//std::cout << y[i];
		}
		//float bx[975*320];
		//*bx = *ay;	
			
		//float by[975*320];

		b.forward(y, x); //relu

		//float cx[975*320];
		//*cx = *by; 

		//float cy[75*320];
		
		
		c.forward(x,y); //MaxPooling
		
		//float dx[75*320];
		//*dx = *cy;

		//d.forward(y, x); //LSTM
	

		d.forward(y, x, 75*320, 0.2, true); // dropout

		//d.forward(y, x, float* h_prev, float* c_prev, float* h_next, float* c_next, float* lstmwf, float* lstmwg, float* lstmwi, float* lstmwo, float* bf, float* bg, float* bi, float* bo)
		for(int i = 0; i < 75*320; ++i)
		{
			//x[i] += 0.000001;
		}
		
		//relatevly high frequency of zero in input(x)
		//e.forward(x, y, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf2, bg2, bi2, bo2); //BiLSTM
		
	}
	void predict2(float *x, float *y)
	{
		for(int i = 0; i < 75*640; ++i)
		{
			if(isnan(y[i]) || isinf(y[i]))
			{
				//printf("forward_error"); 
			}
		}

		f.forward(x, y, 75*640, 0.5, true); // dropout

		//float dy[919];
		g.forward(y, x, paramsw2, paramsb2); //full-connected

		/*
		for(int i = 0; i < 925; ++i)
		{
			if(isnan(y[i]) || isinf(y[i]))
			{
				printf("forward_error"); 
			}
		}
		*/
		h.forward(x, y); // relu2


		i.forward(y, x, paramsw3, paramsb3); //full-connected2
		//float ex[919];
		//*ex = *dy;
		/*
		for(int i = 0; i < 919; ++i)
		{
			if(isnan(y[i]) || isinf(y[i]))
			{
				printf("forward_error"); 
			}
		}
		*/


		j.forward(x, y);


	}


	void gradient1(float* dout, float* y)
	{
		//backward
		j.backward(dout, y); //sigmoid

		i.backward(dout, paramsw3, gradsw3, gradsb3); //full_connected2

		h.backward(dout); //relu2

		g.backward(dout, paramsw2, gradsw2, gradsb2); //full_connected
		f.backward(dout, 75*640); //dropout


			
		//e.backward(dout, wxf, wxg, wxi, wxo, whf, whg, whi, who, gradswxf, gradswxg, gradswxi, gradswxo, gradswhf, gradswhg, gradswhi, gradswho, gradsbf, gradsbg, gradsbi, gradsbo, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, gradswxf2, gradswxg2, gradswxi2, gradswxo2, gradswhf2, gradswhg2, gradswhi2, gradswho2, gradsbf2, gradsbg2, gradsbi2, gradsbo2); // BiLSTM

	}
	void gradient2(float* dout, float* y)
	{
		
		for(int i = 0; i < 50; i++)
		{
			//dout[i] /= 100;
			//std::cout << " before ";
			//std::cout << dout[i] << " : ";
		}
		

		d.backward(dout, 75*320); //dropout
		for(int i = 0; i < 50; i++)
		{
			if(isnan(dout[i]) || isinf(dout[i]))
			{
				//printf("backward_error"); 
			}
			//std::cout << std::endl << " after ";
			//std::cout << dout[i] << " : ";
			//std::cout << gradswxf_tot[i] << " : ";
			//std::cout << wxf[i] << " : ";
		}
		

		c.backward(dout); //maxpooling

		b.backward(dout); //relu

		//std::cout << endl;
		a.backward(dout, paramsw1, gradsw1, gradsb1); //convolution

	}
};



int main(int argc, char **argv)
{

	chrono::system_clock::time_point start, end, start_forward, end_forward, start_backward, end_backward;

	std::ofstream outputfile("output.txt");
	std::ofstream lossfile("loss.txt");

	//int DATA_SIZE = 975*320;	
	size_t size_bytes_datax = sizeof(float) * (75*320);
	size_t size_bytes_doutk = sizeof(float) * (75*640);
	size_t size_bytes_dout = sizeof(float) * (975*320);
	size_t size_bytes_datay = sizeof(float) * (975*640);
	size_t size_bytes_buffer_output = sizeof(float) * (975*320);
	cl_int err;
	unsigned fileBufSize;

	// ------------------------------------------
	// sending weights and h parameters to kernel
	// ------------------------------------------

	size_t size_bytes_wxf = sizeof(float) * (320*320);
	size_t size_bytes_wxg = sizeof(float) * (320*320);
	size_t size_bytes_wxi = sizeof(float) * (320*320);
	size_t size_bytes_wxo = sizeof(float) * (320*320);
	size_t size_bytes_whf = sizeof(float) * (320*320);
	size_t size_bytes_whg = sizeof(float) * (320*320);
	size_t size_bytes_whi = sizeof(float) * (320*320);
	size_t size_bytes_who = sizeof(float) * (320*320);
	size_t size_bytes_wxf2 = sizeof(float) * (320*320);
	size_t size_bytes_wxg2 = sizeof(float) * (320*320);
	size_t size_bytes_wxi2 = sizeof(float) * (320*320);
	size_t size_bytes_wxo2 = sizeof(float) * (320*320);
	size_t size_bytes_whf2 = sizeof(float) * (320*320);
	size_t size_bytes_whg2 = sizeof(float) * (320*320);
	size_t size_bytes_whi2 = sizeof(float) * (320*320);
	size_t size_bytes_who2 = sizeof(float) * (320*320);
	size_t size_bytes_bf = sizeof(float) * (320);
	size_t size_bytes_bg = sizeof(float) * (320);
	size_t size_bytes_bi = sizeof(float) * (320);
	size_t size_bytes_bo = sizeof(float) * (320);
	size_t size_bytes_bf2 = sizeof(float) * (320);
	size_t size_bytes_bg2 = sizeof(float) * (320);
	size_t size_bytes_bi2 = sizeof(float) * (320);
	size_t size_bytes_bo2 = sizeof(float) * (320);

	size_t size_bytes_h_wxf = sizeof(float) * (320*320);
	size_t size_bytes_h_wxg = sizeof(float) * (320*320);
	size_t size_bytes_h_wxi = sizeof(float) * (320*320);
	size_t size_bytes_h_wxo = sizeof(float) * (320*320);
	size_t size_bytes_h_whf = sizeof(float) * (320*320);
	size_t size_bytes_h_whg = sizeof(float) * (320*320);
	size_t size_bytes_h_whi = sizeof(float) * (320*320);
	size_t size_bytes_h_who = sizeof(float) * (320*320);
	size_t size_bytes_h_wxf2 = sizeof(float) * (320*320);
	size_t size_bytes_h_wxg2 = sizeof(float) * (320*320);
	size_t size_bytes_h_wxi2 = sizeof(float) * (320*320);
	size_t size_bytes_h_wxo2 = sizeof(float) * (320*320);
	size_t size_bytes_h_whf2 = sizeof(float) * (320*320);
	size_t size_bytes_h_whg2 = sizeof(float) * (320*320);
	size_t size_bytes_h_whi2 = sizeof(float) * (320*320);
	size_t size_bytes_h_who2 = sizeof(float) * (320*320);
	size_t size_bytes_h_bf = sizeof(float) * (320);
	size_t size_bytes_h_bg = sizeof(float) * (320);
	size_t size_bytes_h_bi = sizeof(float) * (320);
	size_t size_bytes_h_bo = sizeof(float) * (320);
	size_t size_bytes_h_bf2 = sizeof(float) * (320);
	size_t size_bytes_h_bg2 = sizeof(float) * (320);
	size_t size_bytes_h_bi2 = sizeof(float) * (320);
	size_t size_bytes_h_bo2 = sizeof(float) * (320);


	std::vector<float, aligned_allocator<float>> src_wxf(320*320);
	std::vector<float, aligned_allocator<float>> src_wxg(320*320);
	std::vector<float, aligned_allocator<float>> src_wxi(320*320);
	std::vector<float, aligned_allocator<float>> src_wxo(320*320);
	std::vector<float, aligned_allocator<float>> src_whf(320*320);
	std::vector<float, aligned_allocator<float>> src_whg(320*320);
	std::vector<float, aligned_allocator<float>> src_whi(320*320);
	std::vector<float, aligned_allocator<float>> src_who(320*320);
	std::vector<float, aligned_allocator<float>> src_wxf2(320*320);
	std::vector<float, aligned_allocator<float>> src_wxg2(320*320);
	std::vector<float, aligned_allocator<float>> src_wxi2(320*320);
	std::vector<float, aligned_allocator<float>> src_wxo2(320*320);
	std::vector<float, aligned_allocator<float>> src_whf2(320*320);
	std::vector<float, aligned_allocator<float>> src_whg2(320*320);
	std::vector<float, aligned_allocator<float>> src_whi2(320*320);
	std::vector<float, aligned_allocator<float>> src_who2(320*320);
	std::vector<float, aligned_allocator<float>> src_bf(320*320);
	std::vector<float, aligned_allocator<float>> src_bg(320*320);
	std::vector<float, aligned_allocator<float>> src_bi(320*320);
	std::vector<float, aligned_allocator<float>> src_bo(320*320);
	std::vector<float, aligned_allocator<float>> src_bf2(320*320);
	std::vector<float, aligned_allocator<float>> src_bg2(320*320);
	std::vector<float, aligned_allocator<float>> src_bi2(320*320);
	std::vector<float, aligned_allocator<float>> src_bo2(320*320);

	std::vector<float, aligned_allocator<float>> src_h_wxf(320*320);
	std::vector<float, aligned_allocator<float>> src_h_wxg(320*320);
	std::vector<float, aligned_allocator<float>> src_h_wxi(320*320);
	std::vector<float, aligned_allocator<float>> src_h_wxo(320*320);
	std::vector<float, aligned_allocator<float>> src_h_whf(320*320);
	std::vector<float, aligned_allocator<float>> src_h_whg(320*320);
	std::vector<float, aligned_allocator<float>> src_h_whi(320*320);
	std::vector<float, aligned_allocator<float>> src_h_who(320*320);
	std::vector<float, aligned_allocator<float>> src_h_wxf2(320*320);
	std::vector<float, aligned_allocator<float>> src_h_wxg2(320*320);
	std::vector<float, aligned_allocator<float>> src_h_wxi2(320*320);
	std::vector<float, aligned_allocator<float>> src_h_wxo2(320*320);
	std::vector<float, aligned_allocator<float>> src_h_whf2(320*320);
	std::vector<float, aligned_allocator<float>> src_h_whg2(320*320);
	std::vector<float, aligned_allocator<float>> src_h_whi2(320*320);
	std::vector<float, aligned_allocator<float>> src_h_who2(320*320);
	std::vector<float, aligned_allocator<float>> src_h_bf(320);
	std::vector<float, aligned_allocator<float>> src_h_bg(320);
	std::vector<float, aligned_allocator<float>> src_h_bi(320);
	std::vector<float, aligned_allocator<float>> src_h_bo(320);
	std::vector<float, aligned_allocator<float>> src_h_bf2(320);
	std::vector<float, aligned_allocator<float>> src_h_bg2(320);
	std::vector<float, aligned_allocator<float>> src_h_bi2(320);
	std::vector<float, aligned_allocator<float>> src_h_bo2(320);

	// ------------------------------------------
	// END 
	// ------------------------------------------



	//allocate memory in host
	std::vector<float, aligned_allocator<float>> src_datax(75*320);
	std::vector<float, aligned_allocator<float>> src_datay(975*640);
	std::vector<float, aligned_allocator<float>> src_doutk(75*640);
	std::vector<float, aligned_allocator<float>> src_dout(975*320);
	//std::vector<int, aligned_allocator<int>> src_mode(1);
	std::vector<float, aligned_allocator<float>> src_buffer_output(975*320);


	std::vector<cl::Device> devices = get_devices("Xilinx");
	devices.resize(1);
	cl::Device device = devices[0];
	
	//auto devices = xcl::get_xil_devices();
	//auto device = devices[0];
	
	std::string binaryFile = argv[1];
		
	//OPENCL HOST CODE AREA START
	OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));

	char* fileBuf = read_binary_file(binaryFile, fileBufSize);
	cl::Program::Binaries bins{{fileBuf, fileBufSize}};
	OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));
	OCL_CHECK(err, cl::Kernel kerneldl(program, "kerneldl", &err));

	


	using namespace std;
	int epochs = 20; 
	float lossval = 0; cnn *z = new cnn(); float loss_avg = 0;
	bcross_entropy loss = bcross_entropy();


	std::ifstream ifs("./weights.txt");
	if(ifs.fail()) {
		std::cerr << "No Weights to Use" << std::endl;
	}else{
		std::cerr << "Weights are Used" << std::endl;
		
		load_weights(z->paramsw1, z->paramsb1, z->paramsw2, z->paramsb2, z->paramsw3, z->paramsb3, z->wxf, z->wxg, z->wxi, z->wxo, z->whf, z->whg, z->whi, z->who, z->wxf2, z->wxg2, z->wxi2, z->wxo2, z->whf2, z->whg2, z->whi2, z->who2, z->bf, z->bg, z->bi, z->bo, z->bf2, z->bg2, z->bi2, z->bo2, z->h1, z->h2, z->h3, z->h4, z->h5, z->h6, z->h_wxf, z->h_wxg, z->h_wxi, z->h_wxo, z->h_whf, z->h_whg, z->h_whi, z->h_who, z->h_wxf2, z->h_wxg2, z->h_wxi2, z->h_wxo2, z->h_whf2, z->h_whg2, z->h_whi2, z->h_who2, z->h_bf, z->h_bg, z->h_bi, z->h_bo, z->h_bf2, z->h_bg2, z->h_bi2, z->h_bo2);

	}

	for(int i = 0; i < 320*320; ++i)
	{
		src_wxf[i] = z->wxf[i];
		src_wxg[i] = z->wxg[i];
		src_wxi[i] = z->wxi[i];
		src_wxo[i] = z->wxo[i];
		src_whf[i] = z->whf[i];
		src_whg[i] = z->whg[i];
		src_whi[i] = z->whi[i];
		src_who[i] = z->who[i];
		src_wxf2[i] = z->wxf2[i];
		src_wxg2[i] = z->wxg2[i];
		src_wxi2[i] = z->wxi2[i];
		src_wxo2[i] = z->wxo2[i];
		src_whf2[i] = z->whf2[i];
		src_whg2[i] = z->whg2[i];
		src_whi2[i] = z->whi2[i];
		src_who2[i] = z->who2[i];

		src_h_wxf[i] = z->h_wxf[i];
		src_h_wxg[i] = z->h_wxg[i];
		src_h_wxi[i] = z->h_wxi[i];
		src_h_wxo[i] = z->h_wxo[i];
		src_h_whf[i] = z->h_whf[i];
		src_h_whg[i] = z->h_whg[i];
		src_h_whi[i] = z->h_whi[i];
		src_h_who[i] = z->h_who[i];
		src_h_wxf2[i] = z->h_wxf2[i];
		src_h_wxg2[i] = z->h_wxg2[i];
		src_h_wxi2[i] = z->h_wxi2[i];
		src_h_wxo2[i] = z->h_wxo2[i];
		src_h_whf2[i] = z->h_whf2[i];
		src_h_whg2[i] = z->h_whg2[i];
		src_h_whi2[i] = z->h_whi2[i];
		src_h_who2[i] = z->h_who2[i];
	}



	for(int i = 0; i < 320; ++i)
	{
		src_bf[i] = z->bf[i];
		src_bg[i] = z->bg[i];
		src_bi[i] = z->bi[i];
		src_bo[i] = z->bo[i];
		src_bf2[i] = z->bf2[i];
		src_bg2[i] = z->bg2[i];
		src_bi2[i] = z->bi2[i];
		src_bo2[i] = z->bo2[i];



		src_h_bf[i] = z->h_bf[i];
		src_h_bg[i] = z->h_bg[i];
		src_h_bi[i] = z->h_bi[i];
		src_h_bo[i] = z->h_bo[i];
		src_h_bf2[i] = z->h_bf2[i];
		src_h_bg2[i] = z->h_bg2[i];
		src_h_bi2[i] = z->h_bi2[i];
		src_h_bo2[i] = z->h_bo2[i];
	}











	for(int ep=0; ep < epochs; ++ep)
	{


		std::cout << "stopping the training is available ---> started" << std::endl;	
		sleep(10);
		std::cout << "stopping the training is available ---> ended" << std::endl;	

		start = chrono::system_clock::now();
		std::ofstream weightsfile("weights.txt");




		std::cout << "Starting epochs : " << ep+1 << std::endl;
		//float x[4000];
		float x[975*320];
		//std::cout << sizeof(x) << std::endl;
		float y[975*320];
		float datat[919];
		//std::cout << sizeof(x) << std::endl;
		//std::cout << *x << std::endl;
		int count = 0;
		float n = 0;
		float *l;
		l = &n;


		std::ifstream stream("../data/actual_in500.csv");
		//std::ifstream stream("../../data/actual_in100.csv");
		//std::ifstream stream("../data/sampledatax.csv");
		//std::ifstream stream("data/actual_in.csv");
		string line = "";
		std::ifstream stream3("../data/actual_out500.csv");
		//std::ifstream stream3("../../data/actual_out100.csv");
		//std::ifstream stream3("../data/sampledata.csv");
		//std::ifstream stream3("data/actual_out.csv");
		string linet = "";


		while (getline(stream, line) && getline(stream3, linet))
		{
			int i = 0;
			count += 1;
			string tmp = "";
			istringstream stream2(line);


			while (getline(stream2, tmp, ','))
			{
			      try { 
						float tmp2 = std::stoi(tmp);
						//src_datax[i] = (tmp2);
						x[i] = (tmp2);
						//std::cout << x[i];
						i++;
			      }catch(...){
				      //printf("error\n");
				      break;
			      }

			}



			int ti = 0;
		//while (getline(stream3, line))
		//{
		

			string tmpt = "";
			istringstream stream4(linet);

			while (getline(stream4, tmpt, ','))
			{
			      try { 
						float tmpt2 = std::stoi(tmpt);
						datat[ti] = (tmpt2);
						//std::cout << y[ti];
						ti++;
			      }catch(...){
				      printf("error\n");
				      break;
			      }
			}


			//forward in host
			z->predict1(x, y); //forward
			



			if(argc != 2) {
				std::cout << "Usage:" << argv[0] << "<XCLBIN File>" << std::endl;
					return EXIT_FAILURE;
				}
				

			for(int i = 0; i < 75*320; ++i)
			{
				src_datax[i] = x[i];
				//std::cout << src_datax[i] <<":";
			}
			std::cout << "original data " << std::endl;
			for(int i = 0; i < 75*640; ++i)
			{
				src_datay[i] = {0};
			}
			//datay = 0;

			// ------------------------------------------
			// sending weights and h parameters to kernel
			// ------------------------------------------

			OCL_CHECK(err, cl::Buffer wxf(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxf, src_wxf.data(), &err));
			OCL_CHECK(err, cl::Buffer wxg(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxg, src_wxg.data(), &err));
			OCL_CHECK(err, cl::Buffer wxi(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxi, src_wxi.data(), &err));
			OCL_CHECK(err, cl::Buffer wxo(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxo, src_wxo.data(), &err));
			OCL_CHECK(err, cl::Buffer whf(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whf, src_whf.data(), &err));
			OCL_CHECK(err, cl::Buffer whg(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whg, src_whg.data(), &err));
			OCL_CHECK(err, cl::Buffer whi(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whi, src_whi.data(), &err));
			OCL_CHECK(err, cl::Buffer who(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_who, src_who.data(), &err));

			OCL_CHECK(err, cl::Buffer wxf2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxf2, src_wxf2.data(), &err));
			OCL_CHECK(err, cl::Buffer wxg2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxg2, src_wxg2.data(), &err));
			OCL_CHECK(err, cl::Buffer wxi2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxi2, src_wxi2.data(), &err));
			OCL_CHECK(err, cl::Buffer wxo2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_wxo2, src_wxo2.data(), &err));
			OCL_CHECK(err, cl::Buffer whf2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whf2, src_whf2.data(), &err));
			OCL_CHECK(err, cl::Buffer whg2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whg2, src_whg2.data(), &err));
			OCL_CHECK(err, cl::Buffer whi2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_whi2, src_whi2.data(), &err));
			OCL_CHECK(err, cl::Buffer who2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_who2, src_who2.data(), &err));

			OCL_CHECK(err, cl::Buffer bf(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bf, src_bf.data(), &err));
			OCL_CHECK(err, cl::Buffer bg(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bg, src_bg.data(), &err));
			OCL_CHECK(err, cl::Buffer bi(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bi, src_bi.data(), &err));
			OCL_CHECK(err, cl::Buffer bo(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bo, src_bo.data(), &err));

			OCL_CHECK(err, cl::Buffer bf2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bf2, src_bf2.data(), &err));
			OCL_CHECK(err, cl::Buffer bg2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bg2, src_bg2.data(), &err));
			OCL_CHECK(err, cl::Buffer bi2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bi2, src_bi2.data(), &err));
			OCL_CHECK(err, cl::Buffer bo2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_bo2, src_bo2.data(), &err));

			OCL_CHECK(err, cl::Buffer h_wxf(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxf, src_h_wxf.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxg(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxg, src_h_wxg.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxi(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxi, src_h_wxi.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxo(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxo, src_h_wxo.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whf(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whf, src_h_whf.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whg(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whg, src_h_whg.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whi(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whi, src_h_whi.data(), &err));
			OCL_CHECK(err, cl::Buffer h_who(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_who, src_h_who.data(), &err));

			OCL_CHECK(err, cl::Buffer h_wxf2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxf2, src_h_wxf2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxg2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxg2, src_h_wxg2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxi2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxi2, src_h_wxi2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_wxo2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_wxo2, src_h_wxo2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whf2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whf2, src_h_whf2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whg2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whg2, src_h_whg2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_whi2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_whi2, src_h_whi2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_who2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_who2, src_h_who2.data(), &err));

			OCL_CHECK(err, cl::Buffer h_bf(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bf, src_h_bf.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bg(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bg, src_h_bg.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bi(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bi, src_h_bi.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bo(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bo, src_h_bo.data(), &err));

			OCL_CHECK(err, cl::Buffer h_bf2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bf2, src_h_bf2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bg2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bg2, src_h_bg2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bi2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bi2, src_h_bi2.data(), &err));
			OCL_CHECK(err, cl::Buffer h_bo2(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE, size_bytes_h_bo2, src_h_bo2.data(), &err));

			// ------------------------------------------
			// END
			// ------------------------------------------


			//setup buffers and run kernel
			OCL_CHECK(err, cl::Buffer datax(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_datax, src_datax.data(), &err));
			OCL_CHECK(err, cl::Buffer datay(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, size_bytes_datay, src_datay.data(), &err));
			OCL_CHECK(err, cl::Buffer doutk(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_doutk, src_doutk.data(), &err));
			//OCL_CHECK(err, cl::Buffer mode(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 1, src_mode.data(), &err));
			OCL_CHECK(err, cl::Buffer buffer_output(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, size_bytes_buffer_output, src_buffer_output.data(), &err));


			// set the kernel arguments
			OCL_CHECK(err, err = kerneldl.setArg(0, datax));
			OCL_CHECK(err, err = kerneldl.setArg(1, datay));
			OCL_CHECK(err, err = kerneldl.setArg(2, doutk));
			OCL_CHECK(err, err = kerneldl.setArg(3, buffer_output));
			// ------------------------------------------
			// sending weights and h parameters to kernel
			// ------------------------------------------


			OCL_CHECK(err, err = kerneldl.setArg(5, wxf));
			OCL_CHECK(err, err = kerneldl.setArg(6, wxg));
			OCL_CHECK(err, err = kerneldl.setArg(7, wxi));
			OCL_CHECK(err, err = kerneldl.setArg(8, wxo));
			OCL_CHECK(err, err = kerneldl.setArg(9, whf));
			OCL_CHECK(err, err = kerneldl.setArg(10, whg));
			OCL_CHECK(err, err = kerneldl.setArg(11, whi));
			OCL_CHECK(err, err = kerneldl.setArg(12, who));


			OCL_CHECK(err, err = kerneldl.setArg(13, wxf2));
			OCL_CHECK(err, err = kerneldl.setArg(14, wxg2));
			OCL_CHECK(err, err = kerneldl.setArg(15, wxi2));
			OCL_CHECK(err, err = kerneldl.setArg(16, wxo2));
			OCL_CHECK(err, err = kerneldl.setArg(17, whf2));
			OCL_CHECK(err, err = kerneldl.setArg(18, whg2));
			OCL_CHECK(err, err = kerneldl.setArg(19, whi2));
			OCL_CHECK(err, err = kerneldl.setArg(20, who2));

			OCL_CHECK(err, err = kerneldl.setArg(21, bf));
			OCL_CHECK(err, err = kerneldl.setArg(22, bg));
			OCL_CHECK(err, err = kerneldl.setArg(23, bi));
			OCL_CHECK(err, err = kerneldl.setArg(24, bo));
			OCL_CHECK(err, err = kerneldl.setArg(25, bf2));
			OCL_CHECK(err, err = kerneldl.setArg(26, bg2));
			OCL_CHECK(err, err = kerneldl.setArg(27, bi2));
			OCL_CHECK(err, err = kerneldl.setArg(28, bo2));

			OCL_CHECK(err, err = kerneldl.setArg(29, h_wxf));
			OCL_CHECK(err, err = kerneldl.setArg(30, h_wxg));
			OCL_CHECK(err, err = kerneldl.setArg(31, h_wxi));
			OCL_CHECK(err, err = kerneldl.setArg(32, h_wxo));
			OCL_CHECK(err, err = kerneldl.setArg(33, h_whf));
			OCL_CHECK(err, err = kerneldl.setArg(34, h_whg));
			OCL_CHECK(err, err = kerneldl.setArg(35, h_whi));
			OCL_CHECK(err, err = kerneldl.setArg(36, h_who));


			OCL_CHECK(err, err = kerneldl.setArg(37, h_wxf2));
			OCL_CHECK(err, err = kerneldl.setArg(38, h_wxg2));
			OCL_CHECK(err, err = kerneldl.setArg(39, h_wxi2));
			OCL_CHECK(err, err = kerneldl.setArg(40, h_wxo2));
			OCL_CHECK(err, err = kerneldl.setArg(41, h_whf2));
			OCL_CHECK(err, err = kerneldl.setArg(42, h_whg2));
			OCL_CHECK(err, err = kerneldl.setArg(43, h_whi2));
			OCL_CHECK(err, err = kerneldl.setArg(44, h_who2));

			OCL_CHECK(err, err = kerneldl.setArg(45, h_bf));
			OCL_CHECK(err, err = kerneldl.setArg(46, h_bg));
			OCL_CHECK(err, err = kerneldl.setArg(47, h_bi));
			OCL_CHECK(err, err = kerneldl.setArg(48, h_bo));
			OCL_CHECK(err, err = kerneldl.setArg(49, h_bf2));
			OCL_CHECK(err, err = kerneldl.setArg(50, h_bg2));
			OCL_CHECK(err, err = kerneldl.setArg(51, h_bi2));
			OCL_CHECK(err, err = kerneldl.setArg(52, h_bo2));
			// ------------------------------------------
			// END
			// ------------------------------------------


			OCL_CHECK(err, err = kerneldl.setArg(53, count));

			//-------------------
			//forward in kernel
			//-------------------
			


			//setting the device as FORWARD_MODE
			OCL_CHECK(err, err = kerneldl.setArg(4, 1));

			//command queue for FORWARD_MODE
			OCL_CHECK(err, cl::CommandQueue q_forward(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

			// send parameters to kernel only the first time
			if(count==1)
			{
				//transfer activation data from system memmory over PCIe to the FPGA on-board DDR memory
				//OCL_CHECK(err, err = q_forward.enqueueMigrateMemObjects({datax}, 0 ));
				OCL_CHECK(err, err = q_forward.enqueueMigrateMemObjects({datax, wxf, wxg, wxi, wxo, whf, whg, whi, who, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, who2, bf, bg, bi, bo, bf2, bg2, bi2, bo2, h_wxf, h_wxg, h_wxi, h_wxo, h_whf, h_whg, h_whi, h_who, h_wxf2, h_wxg2, h_wxi2, h_wxo2, h_whf2, h_whg2, h_whi2, h_who2, h_bf, h_bg, h_bi, h_bo, h_bf2, h_bg2, h_bi2, h_bo2}, 0 ));
			}else{
				OCL_CHECK(err, err = q_forward.enqueueMigrateMemObjects({datax}, 0 ));
			}



			//boot the kernel
			OCL_CHECK(err, err = q_forward.enqueueTask(kerneldl));


			//receive the data from kernel
			OCL_CHECK(err, err = q_forward.enqueueMigrateMemObjects({datay}, CL_MIGRATE_MEM_OBJECT_HOST));
			

			start_forward = chrono::system_clock::now();

			//finish the all the command in the queue (q_forward)
			q_forward.finish();


			end_forward = chrono::system_clock::now();

			double timef = static_cast<double>(chrono::duration_cast<chrono::microseconds>(end_forward - start_forward).count() /1000.0);
			outputfile << "time(forward) : " << timef << "[ms]" << std::endl;


			float bufferx[75*640];
			float buffery[75*640];
			for(int i = 0; i < 75*640; ++i)
			{
				bufferx[i] = src_datay[i];
			}
			for(int i = 0; i < 640; ++i)
			{
				//std::cout << src_datay[i] <<":";
			}




			//forward in host
			z->predict2(bufferx, buffery); //forward



			//float dout[919];
			float dout2[640*975];
			for(int i = 0; i < 919; ++i)
			{
				dout2[i] = {1};
				//std::cout << t[i] << " : ";
				//std::cout << y[i];
			}
		

			//cnn z = cnn();
			//cnn z; //with this pattern, loss will be -nan
			

			//z->loss(x, t, l);
			*l = 0;
			loss.forward(buffery, datat, l);

			//std::cout << "l : " << *l << endl;
			lossval += *l;


			loss.backward(dout2, datat);

			//backward in host
			z->gradient1(dout2, buffery); //backward


			for(int i =0; i<640*75; ++i)
			{
				src_dout[i] = dout2[i];
				//std::cout << src_dout[i] << std::endl;
			}

			OCL_CHECK(err, cl::Buffer dout(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_dout, src_dout.data(), &err));

			// set the kernel arguments
			//OCL_CHECK(err, err = kerneldl.setArg(1, datay));
			OCL_CHECK(err, err = kerneldl.setArg(2, dout));



			//-------------------
			//backward in kernel
			//-------------------
			
			clock_t start2 = clock();

			//setting the device as BACKWARD_MODE
			OCL_CHECK(err, err = kerneldl.setArg(4, 2));


			//command queue for BACKWARD_MODE
			OCL_CHECK(err, cl::CommandQueue q_backward(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

			//transfer activation data from system memmory over PCIe to the FPGA on-board DDR memory
			OCL_CHECK(err, err = q_backward.enqueueMigrateMemObjects({dout}, 0 ));

			//std::cout << "checking in host #3" << std::endl;
			//boot the kernel
			OCL_CHECK(err, err = q_backward.enqueueTask(kerneldl));



			if(count==500)
			{
				//std::cout << "checking in host #5" << std::endl;
				OCL_CHECK(err, err = q_backward.enqueueMigrateMemObjects({buffer_output, wxf, wxg, wxi, wxo, whf, whg, whi, who, bf, bg, bi, bo, wxf2, wxg2, wxi2, wxo2, whf2, whg2, whi2, bf2, bg2, bi2, bo2, who2, h_wxf, h_wxg, h_wxi, h_wxo, h_whf, h_whg, h_whi, h_who, h_bf, h_bg, h_bi, h_bo, h_wxf2, h_wxg2, h_wxi2, h_wxo2, h_whf2, h_whg2, h_whi2, h_who2, h_bf2, h_bg2, h_bi2, h_bo2}, CL_MIGRATE_MEM_OBJECT_HOST));
			}else{
				OCL_CHECK(err, err = q_backward.enqueueMigrateMemObjects({buffer_output}, CL_MIGRATE_MEM_OBJECT_HOST));
			}


			


			start_backward = chrono::system_clock::now();
			//finish the all the command in the queue (q_forward)
			q_backward.finish();
			//std::cout << "checking in host #6" << std::endl;
			end_backward = chrono::system_clock::now();


			clock_t end2 = clock();

			double time2 = static_cast<double>(chrono::duration_cast<chrono::microseconds>(end_backward - start_backward).count() /1000.0);
			outputfile << "time(backward) : " << time2 << "[ms]" << std::endl;
			outputfile << "time(forward) + time(backward) : " << timef+time2 << "[ms]" << std::endl;

			float buffer_outputx[975*320];
			for(int i = 0; i < 975*320; ++i)
			{
				buffer_outputx[i] = src_buffer_output[i];
			}
			//backward in host
			z->gradient2(buffer_outputx, y); //backward





			if(count%100==0)
			{
				outputfile << "loss : " << lossval/100 << std::endl;
				std::cout << "loss : " << lossval/100 << std::endl;
				loss_avg += lossval/100;
				lossval = 0;

				rmsprop opt;
				for(int i = 0; i < 320; ++i)
				{
					//std::cout << z->gradsw3[925*75+i];
					//std::cout << z->wxf[320*10+i];
					//std::cout << ": " << z->gradsw1[26*4+i];
				}

				opt.update(z->paramsw1, z->gradsw1, z->h1, 26*4*320);

				for(int i = 0; i < 33280; ++i)
				{
					if(isnan(z->gradsw1[i]) || isinf(z->gradsw1[i]))
					{
						//printf("gradsw1_error"); 
					}
					z->gradsw1[i] = 0;
				}
				opt.update(z->paramsb1, z->gradsb1, z->h2, 975*320);

				//std::cout << "checkcheck" << endl;
				for(int i = 0; i < 320; ++i)
				{
					//std::cout << z->paramsw1[i];
					//std::cout << z->d->gradsw2[i];
				}


				for(int i = 0; i < 975*320; ++i)
				{
					z->gradsb1[i] = 0;
				}

				
				//opt.update(z->lstmwf, z->gradswxf

				opt.update(z->paramsw2, z->gradsw2, z->h3, 75*640*925);
				opt.update(z->paramsb2, z->gradsb2, z->h4, 925);
				for(int i = 0; i < 75*925*640; ++i)
				{
					if(isnan(z->gradsw2[i]) || isinf(z->gradsw2[i]))
					{
						//printf("gradsw2_error"); 
					}
					z->gradsw2[i] = 0;
				}

				for(int i = 0; i < 925; ++i)
				{
					z->gradsb2[i] = 0;
				}

				//std::cout << "checkcheck" << std::endl;
				opt.update(z->paramsw3, z->gradsw3, z->h5, 925*919);
				opt.update(z->paramsb3, z->gradsb3, z->h6, 919);
				for(int i = 0; i < 919*925; ++i)
				{
					/*
					if(isnan(z->gradsw3[i]) || isinf(z->gradsw3[i]))
					{
						printf("gradsw1_error"); 
					}
					//std::cout << z->paramsw3[i];
					//std::cout << z->gradsw3[i];
					z->gradsw3[i] = 0;
					*/
				}
				for(int i = 0; i < 919; ++i)
				{
					z->gradsb3[i] = 0;
				}


				/*
				opt.update(z->wxf, z->gradswxf, z->h_wxf, 320*320);
				opt.update(z->wxg, z->gradswxg, z->h_wxg, 320*320);
				opt.update(z->wxi, z->gradswxi, z->h_wxi, 320*320);
				opt.update(z->wxo, z->gradswxo, z->h_wxo, 320*320);


				opt.update(z->whf, z->gradswhf, z->h_whf, 320*320);
				opt.update(z->whg, z->gradswhg, z->h_whg, 320*320);
				opt.update(z->whi, z->gradswhi, z->h_whi, 320*320);
				opt.update(z->who, z->gradswho, z->h_who, 320*320);

				opt.update(z->bf, z->gradsbf, z->h_bf, 320);
				opt.update(z->bg, z->gradsbg, z->h_bg, 320);
				opt.update(z->bi, z->gradsbi, z->h_bi, 320);
				opt.update(z->bo, z->gradsbo, z->h_bo, 320);


				opt.update(z->wxf2, z->gradswxf2, z->h_wxf2, 320*320);
				opt.update(z->wxg2, z->gradswxg2, z->h_wxg2, 320*320);
				opt.update(z->wxi2, z->gradswxi2, z->h_wxi2, 320*320);
				opt.update(z->wxo2, z->gradswxo2, z->h_wxo2, 320*320);

				opt.update(z->whf2, z->gradswhf2, z->h_whf2, 320*320);
				opt.update(z->whg2, z->gradswhg2, z->h_whg2, 320*320);
				opt.update(z->whi2, z->gradswhi2, z->h_whi2, 320*320);
				opt.update(z->who2, z->gradswho2, z->h_who2, 320*320);

				opt.update(z->bf2, z->gradsbf2, z->h_bf2, 320);
				opt.update(z->bg2, z->gradsbg2, z->h_bg2, 320);
				opt.update(z->bi2, z->gradsbi2, z->h_bi2, 320);
				opt.update(z->bo2, z->gradsbo2, z->h_bo2, 320);


				//std::cout << "checkcheck" << std::endl;

				for(int i = 0; i < 320*320; ++i)
				{
					
					z->gradswxf[i] = 0;
					z->gradswxg[i] = 0;
					z->gradswxi[i] = 0;
					z->gradswxo[i] = 0;
					z->gradswhf[i] = 0;
					z->gradswhg[i] = 0;
					z->gradswhi[i] = 0;
					z->gradswho[i] = 0;
					z->gradswxf2[i] = 0;
					z->gradswxg2[i] = 0;
					z->gradswxi2[i] = 0;
					z->gradswxo2[i] = 0;
					z->gradswhf2[i] = 0;
					z->gradswhg2[i] = 0;
					z->gradswhi2[i] = 0;
					z->gradswho2[i] = 0;
				}


				for(int i = 0; i < 320; ++i)
				{
					//std::cout << ": " << z->whg2[320*319+i];
					//std::cout << ": " << z->paramsw1[26*4+i];
					z->gradsbf[i] = 0;
					z->gradsbg[i] = 0;
					z->gradsbi[i] = 0;
					z->gradsbo[i] = 0;
					z->gradsbf2[i] = 0;
					z->gradsbg2[i] = 0;
					z->gradsbi2[i] = 0;
					z->gradsbo2[i] = 0;

				}
				*/


			}// if 100
			
			if(count == 420)
			{
				std::cout << "now is " << count << endl;
			}
			if(count == 450)
			{
				std::cout << "now is " << count << endl;
			}
			if(count == 470)
			{
				std::cout << "now is " << count << endl;
			}
			if(count == 490)
			{
				std::cout << "now is " << count << endl;
			}


		} //while
		outputfile << "epoch: " << ep+1 << " --------->    loss_avg : " << loss_avg/5 << std::endl;
		std::cout  << "epoch: " << ep+1 << " --------->    loss_avg : " << loss_avg/5 << std::endl;
		lossfile << ep+1 <<" " << loss_avg/5 << std::endl;
                loss_avg = 0;



		//saving waights and h
		std::cout  << "saving the parameters" << std::endl;




		for(int i = 0; i < 26*4*320; ++i) //1
		{
			weightsfile << z->paramsw1[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 975*320; ++i)
		{
			weightsfile << z->paramsb1[i] << ",";
		}
		weightsfile << std::endl;

		for(int i = 0; i < 75*640*925; ++i)
		{
			weightsfile << z->paramsw2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <925; ++i)
		{
			weightsfile << z->paramsb2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <925*919; ++i) //5
		{
			weightsfile << z->paramsw3[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <919; ++i)
		{
			weightsfile << z->paramsb3[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->wxf[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->wxg[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->wxi[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i) //10
		{
			weightsfile << z->wxo[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->whf[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->whg[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->whi[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->who[i] << ",";
		}
		weightsfile << std::endl;

		for(int i = 0; i <320*320; ++i) //15
		{
			weightsfile << z->wxf2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->wxg2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->wxi2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->wxo2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->whf2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->whg2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->whi2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->who2[i] << ",";
		}
		weightsfile << std::endl;

		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bf[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bg[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i) //25
		{
			weightsfile << z->bi[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bo[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bf2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bg2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bi2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->bo2[i] << ",";
		}
		weightsfile << std::endl;




		for(int i = 0; i < 26*4*320; ++i) //31
		{
			weightsfile << z->h1[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 975*320; ++i)
		{
			weightsfile << z->h2[i] << ",";
		}
		weightsfile << std::endl;

		for(int i = 0; i < 75*640*925; ++i)
		{
			weightsfile << z->h3[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <925; ++i)
		{
			weightsfile << z->h4[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <925*919; ++i) //35
		{
			weightsfile << z->h5[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <919; ++i)
		{
			weightsfile << z->h6[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxf[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxg[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxi[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i) //40
		{
			weightsfile << z->h_wxo[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_whf[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_whg[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_whi[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_who[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxf2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxg2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxi2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_wxo2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_whf2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i) //50
		{
			weightsfile << z->h_whg2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_whi2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i <320*320; ++i)
		{
			weightsfile << z->h_who2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->h_bf[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->h_bg[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i) //55
		{
			weightsfile << z->h_bi[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->h_bo[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->h_bf2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->h_bg2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i)
		{
			weightsfile << z->h_bi2[i] << ",";
		}
		weightsfile << std::endl;
		for(int i = 0; i < 320; ++i) //60
		{
			weightsfile << z->h_bo2[i] << ",";
		}
		weightsfile << std::endl;


		weightsfile.close();


		end = chrono::system_clock::now();


		double time = static_cast<double>(chrono::duration_cast<chrono::microseconds>(end - start).count() /1000.0);


		outputfile << "Time of Epochs " << ep+1 << " is --> " << time << "[ms]" << std::endl;
		std::cout << "Time of Epochs " << ep+1 << " is --> " << time << "[ms]" << std::endl;

		double time_4_kernel = static_cast<double>(chrono::duration_cast<chrono::microseconds>(end_forward - start_forward + end_backward - start_backward).count() /1000.0);

		outputfile << "Time for kernels for Epoch  " << ep+1 << " is --> " << time_4_kernel << "[ms]" << std::endl;
		std::cout << "Time for kernels for Epoch  " << ep+1 << " is --> " << time_4_kernel << "[ms]" << std::endl;



	} //epochs


	//cnn::predict(float) x[4000], (float) y[975*320]);
	//predict(x, y);
	
	/*	
	for(int i = 0; i < 975*320; ++i)
	{
		std::cout << y[i];
	}
	*/	
	


	outputfile.close();
	lossfile.close();
	return 0;

} //main



