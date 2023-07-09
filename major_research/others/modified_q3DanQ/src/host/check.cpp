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



int main(int argc, char** argv)
{
	FILE *fp;
	FILE *fp2;

	fp = fopen("data/sampledatax.csv", "r");
	fp2 = fopen("data/sampledata.csv", "r");
	for(int t = 0; t<10; ++t) //whole data
	{
		char buf[8000];
		char buf2[919*2];


		int src_datax[4000];
		int datat[919];

		fgets(buf, 8000, fp);
		fgets(buf2, 919*2, fp2);

		for(int i = 0; i<1800; ++i)
		{
			//std::cout << buf2[915*2] << std::endl;
		}


		for(int i = 0; i<4000; ++i) //1 batch
		{
			char tmp = buf[2*i];
			//src_datax[i] = std::stoi(&tmp);
			src_datax[i] = tmp - 48;
			std::cout << src_datax[i] << std::endl;
		}
		

		for(int i = 0; i<919; ++i) //1 batch
		{
			char tmp2 = buf2[2*i];
			datat[i] = tmp2-48;
			//std::cout << buf2[2*i] << " : " << datat[i] << std::endl;
		}
		for(int i = 0; i<4000; ++i) //1 batch
		{
			//std::cout << src_datax[i];
		}
			
			//std::cout << std::endl;
	
	}
}

