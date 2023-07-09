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
	size_t size_bytes = sizeof(int) * (4096);
	cl_int err;
	unsigned fileBufSize;


	//allocate memory in host
	std::vector<int, aligned_allocator<int>> source_in(4000);
	std::vector<int, aligned_allocator<int>> source_t(919);
	std::vector<float, aligned_allocator<float>> source_hw_results(1);

	/*
	std::vector<cl::Device> devices = get_devices("");
	devices.resize(1);
	cl::Device device = devices[0];
	*/

	auto devices = xcl::get_xil_devices();
	auto device = devices[0];
	

	int epochs = 10;
	//float lossval = 0;
	for(int ep = 0; ep < epochs; ++ep)
	{
		

		float x[4000];
		//std::cout << sizeof(x) << std::endl;
		//float y[975*320];
		float t[919];
		//std::cout << sizeof(x) << std::endl;
		//std::cout << *x << std::endl;


		//ifstream stream("data/sampledatax.csv");
		ifstream stream("data/sampledatax.csv");
		string line = "";
		//ifstream stream3("data/sampledata.csv");
		ifstream stream3("data/sampledata.csv");
		string linet = "";

		std::cout << "checking in host #2" << std::endl;

		//while (getline(stream, line) || getline(stream3, linet))
		for(int k = 0; k < 10; ++k)
		{

			std::cout << "checking in host #3" << std::endl;

			int i = 0;
			string tmp = "";
			istringstream stream2(line);

			while (getline(stream2, tmp, ','))
			{
			      try { 
						float tmp2 = std::stoi(tmp);
						x[i] = (tmp2);
						//std::cout << x[i];
						i++;
			      }catch(...){
				      //printf("error\n");
				      break;
			      }

			}



			int ti = 0;

			string tmpt = "";
			istringstream stream4(linet);

			while (getline(stream4, tmpt, ','))
			{
			      try { 
						float tmpt2 = std::stoi(tmpt);
						t[ti] = (tmpt2);
						//std::cout << y[ti];
						ti++;
			      }catch(...){
				      printf("error\n");
				      break;
			      }
			}


			/*
			memset(h1, 0, sizeof h1);
			memset(h2, 0, sizeof h2);
			memset(h3, 0, sizeof h3);
			memset(h4, 0, sizeof h4);
			memset(h5, 0, sizeof h5);
			memset(h6, 0, sizeof h6);
			*/
				
			//float *l = &n;
			// * solved the error (no matching function for call to ...) 

			//float paramsw1[26*4*320];
			//float gradsw1[26*4*320];
			//float gradsb1[320];
			
			//data da = data();
			//da.getx(tmpx);
			//da.gett(tmpt);
			


			//OPENCL HOST CODE AREA START
			

			OCL_CHECK(err, cl::Context context(device, NULL, NULL, NULL, &err));
			OCL_CHECK(err, cl::CommandQueue q(context, device, CL_QUEUE_PROFILING_ENABLE, &err));


			char* fileBuf = read_binary_file(binaryFile, fileBufSize);
			cl::Program::Binaries bins{{fileBuf, fileBufSize}};
			OCL_CHECK(err, cl::Program program(context, devices, bins, NULL, &err));
			OCL_CHECK(err, cl::Kernel kerneldl(program, "kerneldl", &err));
			



			//setup buffers and run kernel
			
			OCL_CHECK(err, cl::Buffer buffer_in(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes, source_in.data(), &err));
			OCL_CHECK(err, cl::Buffer buffer_t(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, size_bytes, source_t.data(), &err));

			OCL_CHECK(err, cl::Buffer buffer_output(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, size_bytes, source_hw_results.data(), &err));

			std::cout << "checking in host #4" << std::endl;

			//int size = DATA_SIZE;
			OCL_CHECK(err, err = kerneldl.setArg(0, buffer_in));
			OCL_CHECK(err, err = kerneldl.setArg(1, buffer_t));
			OCL_CHECK(err, err = kerneldl.setArg(2, buffer_output));

			std::cout << "checking in host #5" << std::endl;

			OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_in, buffer_t}, 0 ));
			OCL_CHECK(err, err = q.enqueueTask(kerneldl));
			OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_output}, CL_MIGRATE_MEM_OBJECT_HOST));
			q.finish();

			std::cout << "checking in host #6" << std::endl;

			//END OPENCL HOST CODE AREA	

			/*
			//compare with sw and hw
			bool match = true;
			for (int i = 0; i < DATA_SIZE; i++){
				if(source_hw_results[i] != source_sw_results[i]){
					std::cout << "error: Result mismatch" << std::endl;
					std::cout << "i = " << i << " CPU result = " << source_sw_results[i] << " Device result = " << source_hw_results[i] << std::endl;
					match = false;
					break;
				}
			}


			//release allocated resource
			
			delete[] fileBuf;

			std::cout << "TEST " << (match ? "PASSED" : "FAILED") << std::endl;
			return (match ? EXIT_SUCCESS : EXIT_FAILURE):

			
			*/
			


		}
	}
}

