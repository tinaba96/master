#include <fstream>
#include <iostream>
#include <string>


//void load_weights(float weights[]) // same
void load_weights(float *weights)
{

	std::ifstream ifs("./weights.txt");
	std::string str;

	if(ifs.fail()) {
		std::cerr << "Failed to open file." << std::endl;
	}
	int count;
	//float weights[26*320*4];
	std::string tmp;
	//std::string tmp[26*4*320];
	int index = 0;
	int ind = 0;
	while(getline(ifs, str)) {
		//std::cout << str << std::endl;
		//return -1;
		for(int t = 0; t<str.length(); t++)
		{
			//tmp[ind] = "";
			tmp = "";
			//std::string buffer[10];
			char buffer[100];

			//std::cout << index << std::endl;
			buffer[index] = str[t];
			index += 1;
			if ( str[t] == ',')
			{
				for(int p = 0; p < index-1; p++)
				{
					tmp += buffer[p];	
					//std::cout << tmp << std::endl;
				}
				index = 0;
				// int index = 0; //redefinition makes this code nothing
				//ind += 1;
				weights[ind] = std::stof(tmp);
				ind += 1;
			}	

			//std::cout << ind << std::endl;



		}
		
	}
			/*
			for(int i = 0; i < 26*4*320; i++)
			{
				weights[i] = std::stof(tmp[i]);
			}
			*/

}

