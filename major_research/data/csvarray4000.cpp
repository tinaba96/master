

#include <iostream>
#include <string>
#include <fstream>

int main() {
	  using namespace std;
	    ifstream stream("sampledatax4000.csv");
	    string line;
	    double data[4000];
		  const string delim = ",";

		    int row = 0;
	      int col;
        while ( getline(stream, line) ) {
  		    col = 0;
 //delim����؂蕶���Ƃ��Đ؂蕪���Aint�ɕϊ�����data[][]�Ɋi�[����
     for ( string::size_type spos, epos = 0;
      (spos = line.find_first_not_of(delim, epos)) != string::npos;) {
       string token = line.substr(spos,(epos = line.find_first_of(delim, spos))-spos);
      data[col++] = stoi(token);
     }
  }

     for ( col = 0; col < 4000; ++col ) {
       cout << data[col] << " ";
     }
       cout << endl;
 }



