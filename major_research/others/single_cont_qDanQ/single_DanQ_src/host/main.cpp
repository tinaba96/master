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
#include <time.h>

#include "layers.h"
#include "loss.h"
#include "optimizer.h"
#include "lstm.h"
#include "main.hpp"

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



	/*
	//for LSTM
	float wxf[320*320];
	float wxg[320*320]; 
	float wxi[320*320];  
	float wxo[320*320];
	float gradswxf[320*320];
	float gradswxg[320*320]; 
	float gradswxi[320*320];  
	float gradswxo[320*320];
	float wxf2[320*320];
	float wxg2[320*320]; 
	float wxi2[320*320];  
	float wxo2[320*320];
	float gradswxf2[320*320];
	float gradswxg2[320*320]; 
	float gradswxi2[320*320];  
	float gradswxo2[320*320];

	float whf[320*320];
	float whg[320*320]; 
	float whi[320*320];  
	float who[320*320];
	float gradswhf[320*320];
	float gradswhg[320*320]; 
	float gradswhi[320*320];  
	float gradswho[320*320];
	float whf2[320*320];
	float whg2[320*320]; 
	float whi2[320*320];  
	float who2[320*320];
	float gradswhf2[320*320];
	float gradswhg2[320*320]; 
	float gradswhi2[320*320];  
	float gradswho2[320*320];

	float bf[320];
	float bg[320]; 
	float bi[320];  
	float bo[320];
	float gradsbf[320];
	float gradsbg[320]; 
	float gradsbi[320];  
	float gradsbo[320];
	float bf2[320];
	float bg2[320]; 
	float bi2[320];  
	float bo2[320];
	float gradsbf2[320];
	float gradsbg2[320]; 
	float gradsbi2[320];  
	float gradsbo2[320];


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
	*/

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

	std::ofstream outputfile("output.txt");
	std::ofstream lossfile("loss.txt");

	//int DATA_SIZE = 975*320;	
	size_t size_bytes_datax = sizeof(float) * (75*640);
	size_t size_bytes_doutk = sizeof(float) * (75*640);
	size_t size_bytes_dout = sizeof(float) * (75*640);
	size_t size_bytes_datay = sizeof(float) * (75*640);
	size_t size_bytes_buffer_output = sizeof(float) * (75*320);
	cl_int err;
	unsigned fileBufSize;


	using namespace std;
	int epochs = 10; 
	float lossval = 0; cnn *z = new cnn(); float loss_avg = 0;
	bcross_entropy loss = bcross_entropy();
	for(int ep = 0; ep < epochs; ++ep)
	{
		//allocate memory in host
		std::vector<float, aligned_allocator<float>> src_datay(75*640);
		std::vector<float, aligned_allocator<float>> src_doutk(75*640);
		std::vector<float, aligned_allocator<float>> src_dout(75*640);
		//std::vector<int, aligned_allocator<int>> src_mode(1);
		std::vector<float, aligned_allocator<float>> src_buffer_output(75*320);


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
			std::cout << "managed to get the data" << std::endl;
			int i = 0;
			count += 1;
			string tmp = "";
			istringstream stream2(line);

			std::vector<float, aligned_allocator<float>> src_datax(75*640);

			while (getline(stream2, tmp, ','))
			{
			      try { 
						float tmp2 = std::stoi(tmp);
						src_datax[i] = (tmp2);
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
			for(int i = 0; i < 75*640; ++i)
			{
				src_datay[i] = {0};
			}
			//datay = 0;


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


			//-------------------
			//forward in kernel
			//-------------------
			

			clock_t start = clock();

			//setting the device as FORWARD_MODE
			OCL_CHECK(err, err = kerneldl.setArg(4, 1));

			//command queue for FORWARD_MODE
			OCL_CHECK(err, cl::CommandQueue q_forward(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

			//transfer activation data from system memmory over PCIe to the FPGA on-board DDR memory
			OCL_CHECK(err, err = q_forward.enqueueMigrateMemObjects({datax}, 0 ));


			//boot the kernel
			OCL_CHECK(err, err = q_forward.enqueueTask(kerneldl));


			//receive the data from kernel
			OCL_CHECK(err, err = q_forward.enqueueMigrateMemObjects({datay}, CL_MIGRATE_MEM_OBJECT_HOST));

			
			//std::cout << "checking in host #3" << std::endl;
			//finish the all the command in the queue (q_forward)
			q_forward.finish();



			clock_t end = clock();

			const double time = static_cast<double>(end - start) / CLOCKS_PER_SEC * 1000.0;
			//outputfile << "time(forward) : " << time << "[ms]" << std::endl;


			float bufferx[75*640];
			float buffery[75*640];
			for(int i = 0; i < 75*640; ++i)
			{
				//std::cout << src_datay[i] <<":";
				bufferx[i] = src_datay[i];
			}




			//forward in host
			z->predict2(bufferx, buffery); //forward



			//float dout[919];
			float dout2[640*75];
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

			//boot the kernel
			OCL_CHECK(err, err = q_backward.enqueueTask(kerneldl));

			std::cout << "checking in host #5" << std::endl;
			OCL_CHECK(err, err = q_backward.enqueueMigrateMemObjects({buffer_output}, CL_MIGRATE_MEM_OBJECT_HOST));

			//finish the all the command in the queue (q_forward)
			q_backward.finish();
			std::cout << "checking in host #6" << std::endl;

			clock_t end2 = clock();

			const double time2 = static_cast<double>(end2 - start2) / CLOCKS_PER_SEC * 1000.0;
			//outputfile << "time(backward) : " << time2 << "[ms]" << std::endl;
			//outputfile << "time(forward) + time(backward) : " << time+time2 << "[ms]" << std::endl;

			float buffer_outputx[975*320];
			for(int i = 0; i < 75*320; ++i)
			{
				buffer_outputx[i] = src_buffer_output[i];
			}
			//backward in host
			z->gradient2(buffer_outputx, y); //backward



			std::cout << "checking in host #7" << std::endl;


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


		} //while
		outputfile << "epoch: " << ep+1 << " --------->    loss_avg : " << loss_avg/5 << std::endl;
		std::cout  << "epoch: " << ep+1 << " --------->    loss_avg : " << loss_avg/5 << std::endl;
		lossfile << ep+1 <<" " << loss_avg/5 << std::endl;
                loss_avg = 0;
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



