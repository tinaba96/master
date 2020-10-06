#include <iostream>
#include <string>
#include <fstream>
#include <sstream>

using namespace std;
	

class data
{
public:
	data()
	{
		int data[10][4000];
	}


void getx(int* data)
{
	using namespace std;
	ifstream stream("data/sampledatax.csv");
	string line = "";

	int i = 0;
	int row = 0;
	while (getline(stream, line))
	{
		string tmp = "";
		istringstream stream2(line);

		while (getline(stream2, tmp, ','))
		{
		      try { 
					int tmp2 = std::stoi(tmp);
					data[row][i] = (tmp2);
					//std::cout << data[i];
					i++;
		      }catch(...){
			      //printf("error\n");
			      break;
		      }

		}
		++row;
	}


}
void gett(int* data)
{
	using namespace std;
	ifstream stream("data/sampledata.csv");
	string line = "";

	int i = 0;
	int row = 0;
	while (getline(stream, line))
	{
		string tmp = "";
		istringstream stream2(line);

		while (getline(stream2, tmp, ','))
		{
		      try { 
					int tmp2 = std::stoi(tmp);
					data[row][i] = (tmp2);
					i++;
		      }catch(...){
			      //printf("error\n");
			      break;
		      }

		}
		++row;
	}

}

};


