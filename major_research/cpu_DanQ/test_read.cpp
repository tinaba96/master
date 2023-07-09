#include <fstream>
#include <iostream>
#include <string>

#include "readw.cpp"

int main()
{
	float paramsw1[26*4*320];
	for(int o = 0; o < 26*4*320; o++)
	{
		paramsw1[o]= 0;
	}
	load_weights(paramsw1);
	std::cout << paramsw1[33279] << std::endl;
	return 0;	
}



