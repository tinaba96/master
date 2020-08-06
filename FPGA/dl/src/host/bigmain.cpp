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
//#include "loss.h"
//#include "optimizer.h"


//conv -> relu -> maxpooling -> affine -> relu -> affine -> sigmoid
using namespace std;

int main(int argc, char** argv)
{
	std::cout << "checking in host #1" << std::endl;

	if(argc != 2) {
		std::cout << "Usage:" << argv[0] << "<XCLBIN File>" << std::endl;
			return EXIT_FAILURE;
		}
		

	std::string binaryFile = argv[1];
	//int DATA_SIZE = 975*320;	
	size_t size_bytes_in = sizeof(int) * (4000);
	size_t size_bytes_t = sizeof(int) * (919);
	cl_int err;
	unsigned fileBufSize;


	//allocate memory in host
	std::vector<int, aligned_allocator<int>> source_in(4000);
	std::vector<int, aligned_allocator<int>> source_t(919);
	std::vector<float, aligned_allocator<float>> source_hw_results(1);
	//float source_hw_results;


	for(int i = 0; i < 4000; ++i)
	{
		source_in[i] = 1;
	}

	for(int i = 0; i < 919; ++i)
	{
		source_t[i] = 1;
	}
	//source_hw_results = 0;





	/*
	std::vector<cl::Device> devices = get_devices("");
	devices.resize(1);
	cl::Device device = devices[0];
	*/

	auto devices = xcl::get_xil_devices();
	auto device = devices[0];
	



	std::cout << "checking in host #2" << std::endl;
	//OPENCL HOST CODE AREA START
	

	OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));
	OCL_CHECK(err, cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE, &err));


	char* fileBuf = read_binary_file(binaryFile, fileBufSize);
	cl::Program::Binaries bins{{fileBuf, fileBufSize}};
	OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));
	OCL_CHECK(err, cl::Kernel kerneldl(program, "kerneldl", &err));
	



	std::cout << "checking in host #3" << std::endl;
	//setup buffers and run kernel
	
	OCL_CHECK(err, cl::Buffer buffer_in(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_in, source_in.data(), &err));
	OCL_CHECK(err, cl::Buffer buffer_t(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes_t, source_t.data(), &err));

	OCL_CHECK(err, cl::Buffer buffer_output(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, sizeof(float), source_hw_results.data(), &err));
	//OCL_CHECK(err, cl::Buffer buffer_output(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, 1, 0, &err));


	std::cout << "checking in host #4" << std::endl;
	//int size = DATA_SIZE;
	OCL_CHECK(err, err = kerneldl.setArg(0, buffer_in));
	OCL_CHECK(err, err = kerneldl.setArg(1, buffer_t));
	OCL_CHECK(err, err = kerneldl.setArg(2, buffer_output));


	OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_in, buffer_t}, 0 ));
	std::cout << "checking in host #5" << std::endl;
	OCL_CHECK(err, err = q.enqueueTask(kerneldl));
	std::cout << "checking in host #6" << std::endl;
	OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_output}, CL_MIGRATE_MEM_OBJECT_HOST));
	std::cout << "checking in host #7" << std::endl;
	q.finish();

	//END OPENCL HOST CODE AREA	

	std::cout << "checking in host #8" << std::endl;
	delete[] fileBuf;
	//std::cout << "loss : " << buffer_output << std::endl;
	std::cout << "loss : " << *source_hw_results.data() << std::endl;

}

