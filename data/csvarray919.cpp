

#include <iostream>
#include <string>
#include <fstream>

int main() {
	  using namespace std;
	    ifstream stream("sampledata919.csv");
      string line;
      double data[919];
		  const string delim = ",";

	    int row = 0;
      int col;
      while ( getline(stream, line) ) {
  	    col = 0;
 //delim‚ğ‹æØ‚è•¶š‚Æ‚µ‚ÄØ‚è•ª‚¯Aint‚É•ÏŠ·‚µ‚Ädata[][]‚ÉŠi”[‚·‚é
     for ( string::size_type spos, epos = 0;
      (spos = line.find_first_not_of(delim, epos)) != string::npos;) {
      string token = line.substr(spos,(epos = line.find_first_of(delim, spos))-spos);
       data[col++] = stoi(token);
      }
  }

     for ( col = 0; col < 919; ++col ) {
       cout << data[col] << " ";
     }
       cout << endl;
}



