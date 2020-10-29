#include <iostream>
#include <iomanip>
#include <random> 
#include <string>
#include <cstring>
#include <fstream>
#include <sstream>

#include "../../libs/xcl2/xcl2.hpp"


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
	//float paramsb1[975*320];
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

	fullc d = fullc();
	relu2 e = relu2();
	fullc2 f = fullc2();
	sigmoid g = sigmoid();
	
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
	//int epochs = 10;
	//float lossval = 0;
	cnn *z = new cnn();
	bcross_entropy loss = bcross_entropy();

	std::cout << "checking in host #1" << std::endl;

	if(argc != 2) {
		std::cout << "Usage:" << argv[0] << "<XCLBIN File>" << std::endl;
			return EXIT_FAILURE;
		}
		

	std::string binaryFile = argv[1];
	//int DATA_SIZE = 975*320;	
	size_t size_bytes_datax = sizeof(float) * (4000);
	size_t size_bytes_doutk = sizeof(float) * (75*320);
	size_t size_bytes_dout = sizeof(float) * (75*320);
	size_t size_bytes_datay = sizeof(float) * (75*320);
	cl_int err;
	unsigned fileBufSize;


	//allocate memory in host
	std::vector<float, aligned_allocator<float>> src_datax(4000);
	std::vector<float, aligned_allocator<float>> src_datay(75*320);
	std::vector<float, aligned_allocator<float>> src_doutk(75*320);
	std::vector<float, aligned_allocator<float>> src_dout(75*320);
	//std::vector<int, aligned_allocator<int>> src_mode(1);

	//src_mode[0] = 1;
	//setup the data
	for(int i = 0; i < 4000; ++i)
	{
		//src_datax[i] = {1};
		//std::cout << src_datax[i];
	}
	for(int i = 0; i < 75*320; ++i)
	{
		src_datay[i] = {0};
	}
	float datat[4000];
	for(int i = 0; i < 919; ++i)
	{
		datat[i] = 1;
	}
	//datay = 0;


	/*
	std::vector<cl::Device> devices = get_devices("Xilinx");
	devices.resize(1);
	cl::Device device = devices[0];
	*/

	auto devices = xcl::get_xil_devices();
	auto device = devices[0];
	

	//OPENCL HOST CODE AREA START
	OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));
	OCL_CHECK(err, cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE, &err));

	char* fileBuf = read_binary_file(binaryFile, fileBufSize);
	cl::Program::Binaries bins{{fileBuf, fileBufSize}};
	OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));
	OCL_CHECK(err, cl::Kernel kerneldl(program, "kerneldl", &err));
	

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
	OCL_CHECK(err, err = kerneldl.setArg(3, 1));

	OCL_CHECK(err, err = q.enqueueMigrateMemObjects({datax}, 0));
	OCL_CHECK(err, err = q.enqueueTask(kerneldl));
	//OCL_CHECK(err, err = q.enqueueMigrateMemObjects({
	q.finish();
	for(int i = 0; i < 4000; ++i)
	{
		//std::cout << src_datax[i];
	}
	
	delete[] fileBuf;

}
