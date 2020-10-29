#include <iostream>
#include <iomanip>
#include <random> 
#include <string>
#include <cstring>
#include <fstream>
#include <sstream>
#include <istream>
#include <chrono>
#include <stdio.h>
#include <stdlib.h>


//#include "../../libs/xcl2/xcl2.hpp"


//#include "../kernel/kernel.cpp"
#include "main.hpp"
//#include "get_data.h"
#include "loss.h"
#include "optimizer.h"
#include "layers.h"


//conv -> relu -> maxpooling -> affine -> relu -> affine -> sigmoid
using namespace std;

class cnn 
{
public: 
	//float paramsw1[26*4*320];
	//float gradsw1[26*4*320];
	
	//float gradsb1[975*320];
	float paramsw2[75*320*925];
	float paramsb2[925];
	float gradsb2[925];
	float gradsw2[75*925*320];
	float paramsw3[925*919];
	float paramsb3[919];
	float gradsb3[919];
	float gradsw3[925*919];
	//float h1[26*4*320];
	//float h2[975*320];
	//float *h3 = new float[75*320*925];
	float h3[75*320*925];
	float h4[925];
	float h5[925*919];
	float h6[919];

	fullc d;
	relu2 e;
	fullc2 f;
	sigmoid g;
	
	cnn()
	{
		//weight initialization
		std::random_device rnd;
		std::mt19937 mt(rnd());
		std::uniform_int_distribution<> rand(-1000, 1000);
		for(int i = 0; i < 26*4*320; ++i)
		{
			//paramsw1[i] = rand(mt)/1000.00;
			//gradsw1[i] = 0;
		}
		for(int i = 0; i < 975*320; ++i)
		{
			//paramsb1[i] = rand(mt)/1000.00;
			//gradsb1[i] = 0;
		}
		for(int i = 0; i < 925*75*320; ++i)
		{
			paramsw2[i] = rand(mt)/1000.00;
			gradsw2[i] = 0;
		}	
		for(int i = 0; i < 925; ++i)
		{
			paramsb2[i] = rand(mt)/1000.00;
			gradsb2[i] = 0;
		}
		for(int i = 0; i < 925*919; ++i)
		{
			paramsw3[i] = rand(mt)/1000.00;
			gradsw3[i] = 0;
		}	
		for(int i = 0; i < 919; ++i)
		{
			paramsb3[i] = rand(mt)/1000.00;
			gradsb3[i] = 0;
		}

	}

	void predict(float *x, float *y, float* paramsw2, float* paramsb2, float* paramsw3, float* paramsb3)
	{
		//a.forward(x, y, paramsw1, paramsb1);
		//b.forward(y, x);
		//c.forward(x, y);
		d.forward(x, y, paramsw2, paramsb2);
		e.forward(y, x); // relu2
		f.forward(x, y, paramsw3, paramsb3); //full-connected
		g.forward(y, x);
	}

	void gradient(float* dout, float* paramsw3, float* gradsw3, float* gradsb3, float* paramsw2, float* gradsw2, float* gradsb2)
	{
		g.backward(dout); //sigmoid
		f.backward(dout, paramsw3, gradsw3, gradsb3); //full_connected2
		e.backward(dout); //relu2
		d.backward(dout, paramsw2, gradsw2, gradsb2); //full_connected
		//c.backward(dout); //maxpooling
		//b.backward(dout); //relu
		//a.backward(dout, gradsw1, gradsb1); //convolution
	}
};



int main(int argc, char** argv)
{

	std::chrono::system_clock::time_point start, end;
	double time;

	start = std::chrono::system_clock::now();


	int epochs = 1;
	float lossval = 0;
	cnn *z = new cnn();
	bcross_entropy loss = bcross_entropy();


	//int DATA_SIZE = 975*320;	
	size_t size_bytes_datax = sizeof(float) * (4000);
	size_t size_bytes_doutk = sizeof(float) * (75*320);
	size_t size_bytes_dout = sizeof(float) * (975*320);
	size_t size_bytes_datay = sizeof(float) * (75*320);
	cl_int err;
	unsigned fileBufSize;

	for(int ep = 0; ep<epochs; ++ep)
	{

	//allocate memory in host
	std::vector<float, aligned_allocator<float>> src_datay(75*320);
	std::vector<float, aligned_allocator<float>> src_doutk(75*320);
	std::vector<float, aligned_allocator<float>> src_dout(975*320);
	//std::vector<int, aligned_allocator<int>> src_mode(1);


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

	

	FILE *fp;
	FILE *fp2;

	//fp = fopen("src/host/data/sampledatax4000.csv", "r");
	//fp2 = fopen("src/host/data/sampledata919.csv", "r");
	fp = fopen("data/sampledatax4000.csv", "r");
	fp2 = fopen("data/sampledata919.csv", "r");

	for(int t = 0; t<1; ++t) //whole data
	{
		char buf[8000];
		char buf2[919*2];


		//int src_datax[4000];
		std::vector<float, aligned_allocator<float>> src_datax(4000);
		int datat[919];
		fgets(buf, 8000, fp);
		fgets(buf2, 919*2, fp2);
		if(fp == NULL){
			//printf("no\n");
		}else{
			//printf("yes");
		}

		for(int i = 0; i<1800; ++i)
		{
			//std::cout << buf2[915*2] << std::endl;
		}


		for(int i = 0; i<4000; ++i) //1 batch
		{
			char tmp = buf[2*i];
			src_datax[i] = tmp-48;
			//src_datax[i] = 1;
			//std::cout << src_datax[i] << std::endl;
		}
		

		for(int i = 0; i<919; ++i) //1 batch
		{
			char tmp2 = buf2[2*i];
			datat[i] = tmp2-48;
			//datat[i] = 0;
			//std::cout << buf2[2*i] << " : " << datat[i] << std::endl;
		}
		for(int i = 0; i<4000; ++i) //1 batch
		{
			//std::cout << src_datax[i];
		}
			
			//std::cout << std::endl;
	



		//std::cout << "checking in host #1" << std::endl;

		if(argc != 2) {
			std::cout << "Usage:" << argv[0] << "<XCLBIN File>" << std::endl;
				return EXIT_FAILURE;
			}
			

		for(int i = 0; i < 75*320; ++i)
		{
			src_datay[i] = {0};
		}
		//datay = 0;


		//setup buffers and run kernel
		OCL_CHECK(err, cl::Buffer datax(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_datax, src_datax.data(), &err));
		OCL_CHECK(err, cl::Buffer doutk(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_doutk, src_doutk.data(), &err));
		OCL_CHECK(err, cl::Buffer datay(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, size_bytes_datay, src_datay.data(), &err));
		//OCL_CHECK(err, cl::Buffer mode(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 1, src_mode.data(), &err));
		//OCL_CHECK(err, cl::Buffer buffer_output(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, 1, 0, &err));


		// set the kernel arguments
		OCL_CHECK(err, err = kerneldl.setArg(0, datax));
		OCL_CHECK(err, err = kerneldl.setArg(1, datay));
		OCL_CHECK(err, err = kerneldl.setArg(2, doutk));


		//-------------------
		//forward in kernel
		//-------------------
		

		//setting the device as FORWARD_MODE
		OCL_CHECK(err, err = kerneldl.setArg(3, 1));

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

		for(int i = 0; i < 100; ++i){
			//std::cout << src_datay[i] << std::endl;
		}
		
		float bufferx[75*320];
		float buffery[75*320];
		for(int i =0; i<320*75; ++i)
		{
			bufferx[i] = src_datay[i];
		}


		//cnn z = cnn();
		//cnn z; //with this pattern, loss will be -nan
		

		//forward in host
		z->predict(bufferx, buffery, z->paramsw2, z->paramsb2, z->paramsw3, z->paramsb3); //forward



		//z->loss(x, t, l);
		float n = 0;
		float *l;
		l = &n;
		*l = 0;

		loss.forward(bufferx, datat, l);
		std::cout << "l : " << *l << endl;

		lossval += *l;
		
		float dout2[320*975];
		for(int i = 0; i < 919; ++i)
		{
			dout2[i] = {1};
			//std::cout << dout2[i] << std::endl;
		}


		loss.backward(dout2, datat);

		z->gradient(dout2, z->paramsw3, z->gradsw3, z->gradsb3, z->paramsw2, z->gradsw2, z->gradsb2); //backward

		for(int i =0; i<320*75; ++i)
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
		

		//setting the device as BACKWARD_MODE
		OCL_CHECK(err, err = kerneldl.setArg(3, 2));


		//command queue for BACKWARD_MODE
		OCL_CHECK(err, cl::CommandQueue q_backward(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

		//transfer activation data from system memmory over PCIe to the FPGA on-board DDR memory
		OCL_CHECK(err, err = q_backward.enqueueMigrateMemObjects({dout}, 0 ));

		//boot the kernel
		OCL_CHECK(err, err = q_backward.enqueueTask(kerneldl));

		std::cout << "checking in host #5" << std::endl;
		//OCL_CHECK(err, err = q_backward.enqueueMigrateMemObjects({buffer_output}, CL_MIGRATE_MEM_OBJECT_HOST));

		//finish the all the command in the queue (q_forward)
		q_backward.finish();
		std::cout << "checking in host #6" << std::endl;


	}//10roop

		std::cout << "loss : " << lossval/10 << endl;
		lossval = 0;

		rmsprop opt;
		//opt.update(z->paramsw1, z->gradsw1, z->h1, 26*4*320);

		for(int i = 0; i < 33280; ++i)
		{
			//gradsw1[i] = 0;
		}
		//opt.update(z->paramsb1, z->gradsb1, z->h2, 975*320);
		for(int i = 0; i < 975*320; ++i)
		{
			//gradsb1[i] = 0;
		}

		opt.update(z->paramsw2, z->gradsw2, z->h3, 75*320*925);
		opt.update(z->paramsb2, z->gradsb2, z->h4, 925);
		//std::cout << "checking in host #7" << std::endl;
		for(int i = 0; i < 75*925*320; ++i)
		{
			z->gradsw2[i] = 0;
		}
		for(int i = 0; i < 925; ++i)
		{
			z->gradsb2[i] = 0;
		}

		//std::cout << "checking in host #8" << std::endl;
		opt.update(z->paramsw3, z->gradsw3, z->h5, 925*919);
		opt.update(z->paramsb3, z->gradsb3, z->h6, 919);
		for(int i = 0; i < 919*925; ++i)
		{
			z->gradsw3[i] = 0;
		}
		for(int i = 0; i < 919; ++i)
		{
			z->gradsb3[i] = 0;
		}
		//std::cout << "checking in host #9" << std::endl;


		//END OPENCL HOST CODE AREA	

		//std::cout << "checking in host #10" << std::endl;

		delete[] fileBuf;
	} //whole epochs
	//fclose(fp);
	//fclose(fp2);
	
	end = std::chrono::system_clock::now();
	time = static_cast<double>(std::chrono::duration_cast<std::chrono::microseconds>(end-start).count()/1000000.0);
	printf("time : %12.6f[s]\n", time);

	return 0;
}

