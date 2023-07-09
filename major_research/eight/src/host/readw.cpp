#include <fstream>
#include <iostream>
#include <string>


//void load_weights(float weights[]) // same
void load_weights(float *paramsw1, float *paramsb1, float *paramsw2, float *paramsb2, float *paramsw3, float *paramsb3, float *wxf, float *wxg, float *wxi, float *wxo, float *whf, float *whg, float *whi, float *who, float *wxf2, float *wxg2, float *wxi2, float *wxo2, float *whf2, float *whg2, float *whi2, float *who2, float *bf, float *bg, float *bi, float *bo, float *bf2, float *bg2, float *bi2, float *bo2, float *h1, float *h2, float *h3, float *h4, float *h5, float *h6, float *h_wxf, float *h_wxg, float *h_wxi, float *h_wxo, float *h_whf, float *h_whg, float *h_whi, float *h_who, float *h_wxf2, float *h_wxg2, float *h_wxi2, float *h_wxo2, float *h_whf2, float *h_whg2, float *h_whi2, float *h_who2, float *h_bf, float *h_bg, float *h_bi, float *h_bo, float *h_bf2, float *h_bg2, float *h_bi2, float *h_bo2)
{
	std::ifstream ifs("./weights.txt");
	std::string str;

	if(ifs.fail()) {
		std::cerr << "cannot open the file." << std::endl;

	}
	int count = 0;
	//float weights[26*320*4];
	std::string tmp;
	//std::string tmp[26*4*320];
	while(getline(ifs, str)) {
		count += 1;
		int ind = 0;
		int index = 0;



		//std::cout << str << std::endl;
		//return -1;
		//std::cout << "count : " << count << std::endl;
		for(int t = 0; t<str.length(); t++)
		{
			//tmp[ind] = "";
			tmp = "";
			//std::string buffer[10];
			char buffer[100];
			//std::cout << str[t] << ":";
			//std::cout << index << std::endl;
			buffer[index] = str[t];
			index += 1;
			if ( str[t] == ',')
			{
				for(int p = 0; p < index-1; p++)
				{
					tmp += buffer[p];	
				}

				index = 0;
				// int index = 0; //redefinition makes this code nothing
				//ind += 1;

				if (count == 1)
				{
					paramsw1[ind] = std::stod(tmp);
				}else if(count == 2)
				{
					paramsb1[ind] = std::stod(tmp);
				}else if(count == 3)
				{
					paramsw2[ind] = std::stod(tmp);
				}else if(count == 4)
				{
					paramsb2[ind] = std::stod(tmp);
				}else if(count == 5)
				{
					paramsw3[ind] = std::stod(tmp);
				}else if(count == 6)
				{
					paramsb3[ind] = std::stod(tmp);
				}else if(count == 7)
				{
					/*
					int c = 0;
					if(c==0)
					{
						wxf1[ind] = std::stod(tmp);
					}
					if(c==1)
					{
						wxf2[ind] = std::stod(tmp);
					}
					if(c==2)
					{
						wxf3[ind] = std::stod(tmp);
					}
					if(c==3)
					{
						wxf4[ind] = std::stod(tmp);
					}
					c += 1;
					*/
				}else if(count == 8)
				{
					wxg[ind] = std::stod(tmp);
				}else if(count == 9)
				{
					wxi[ind] = std::stod(tmp);
				}else if(count == 10)
				{
					wxo[ind] = std::stod(tmp);
				}else if(count == 11)
				{
					whf[ind] = std::stod(tmp);
				}else if(count == 12)
				{
					whg[ind] = std::stod(tmp);
				}else if(count == 13)
				{
					whi[ind] = std::stod(tmp);
				}else if(count == 14)
				{
					who[ind] = std::stod(tmp);
				}else if(count == 15)
				{
					wxf2[ind] = std::stod(tmp);
				}else if(count == 16)
				{
					wxg2[ind] = std::stod(tmp);
				}else if(count == 17)
				{
					wxi2[ind] = std::stod(tmp);
				}else if(count == 18)
				{
					wxo2[ind] = std::stod(tmp);
				}else if(count == 19)
				{
					whf2[ind] = std::stod(tmp);
				}else if(count == 20)
				{
					whg2[ind] = std::stod(tmp);
				}else if(count == 21)
				{
					whi2[ind] = std::stod(tmp);
				}else if(count == 22)
				{
					who2[ind] = std::stod(tmp);
				}else if(count == 23)
				{
					bf[ind] = std::stod(tmp);
				}else if(count == 24)
				{
					bg[ind] = std::stod(tmp);
				}else if(count == 25)
				{
					bi[ind] = std::stod(tmp);
				}else if(count == 26)
				{
					bo[ind] = std::stod(tmp);
				}else if(count == 27)
				{
					bf2[ind] = std::stod(tmp);
				}else if(count == 28)
				{
					bg2[ind] = std::stod(tmp);
				}else if(count == 29)
				{
					bi2[ind] = std::stod(tmp);
				}else if(count == 30)
				{
					bo2[ind] = std::stod(tmp);
				}else if(count == 31)
				{
					h1[ind] = std::stod(tmp);
				}else if(count == 32)
				{
					h2[ind] = std::stod(tmp);
				}else if(count == 33)
				{
					h3[ind] = std::stod(tmp);
				}else if(count == 34)
				{
					h4[ind] = std::stod(tmp);
				}else if(count == 35)
				{
					//std::cout << "check:" << tmp;
					h5[ind] = std::stod(tmp);
				}else if(count == 36)
				{
					h6[ind] = std::stod(tmp);
				}else if(count == 37)
				{
					h_wxf[ind] = std::stod(tmp);
				}else if(count == 38)
				{
					h_wxg[ind] = std::stod(tmp);
				}else if(count == 39)
				{
					h_wxi[ind] = std::stod(tmp);
				}else if(count == 40)
				{
					h_wxo[ind] = std::stod(tmp);
				}else if(count == 41)
				{
					h_whf[ind] = std::stod(tmp);
				}else if(count == 42)
				{
					h_whg[ind] = std::stod(tmp);
				}else if(count == 43)
				{
					h_whi[ind] = std::stod(tmp);
				}else if(count == 44)
				{
					h_who[ind] = std::stod(tmp);
				}else if(count == 45)
				{
					h_wxf2[ind] = std::stod(tmp);
				}else if(count == 46)
				{
					h_wxg2[ind] = std::stod(tmp);
				}else if(count == 47)
				{
					h_wxi2[ind] = std::stod(tmp);
				}else if(count == 48)
				{
					h_wxo2[ind] = std::stod(tmp);
				}else if(count == 49)
				{
					h_whf2[ind] = std::stod(tmp);
				}else if(count == 50)
				{
					h_whg2[ind] = std::stod(tmp);
				}else if(count == 51)
				{
					h_whi2[ind] = std::stod(tmp);
				}else if(count == 52)
				{
					h_who2[ind] = std::stod(tmp);
				}else if(count == 53)
				{
					h_bf[ind] = std::stod(tmp);
				}else if(count == 54)
				{
					h_bg[ind] = std::stod(tmp);
				}else if(count == 55)
				{
					h_bi[ind] = std::stod(tmp);
				}else if(count == 56)
				{
					h_bo[ind] = std::stod(tmp);
				}else if(count == 57)
				{
					h_bf2[ind] = std::stod(tmp);
				}else if(count == 58)
				{
					h_bg2[ind] = std::stod(tmp);
				}else if(count == 59)
				{
					h_bi2[ind] = std::stod(tmp);
				}else if(count == 60)
				{
					h_bo2[ind] = std::stod(tmp);
				}



				ind += 1;
			}	

			//std::cout << ind << std::endl;



		}
		
	}
			/*
			for(int i = 0; i < 26*4*320; i++)
			{
				weights[i] = std::stod(tmp[i]);
			}
			*/

}

