#include <string>
#include <vector>
#include <iostream>
#include <cstdio>
#include <string.h>

using namespace std;

class mycsv {
private:
    FILE* fp;
    int bufsize;
    char* line;
    char comma;
    void init() {
        fp = NULL;
        line = new char[bufsize];
        comma = ',';
    }
public:
    // set comma charcter
    void setcomma(char c) {
        comma = c;
    }
    // open csv file
    bool open(string filename) {
        if (fp != NULL) fclose(fp);
        fp = fopen(filename.c_str(), "r");
        if (fp == NULL) return false;
        return true;
    }
    // close csv file
    void close() {
        if (fp != NULL) fclose(fp);
        fp = NULL;
    }
    vector<string> loadnextline() {
        memset(line, bufsize, sizeof(char) * bufsize);
        fgets(line, bufsize, fp);

        size_t len = strlen(line);
        line[len - 1] = comma;
        line[len] = '\0';

        vector<string> cells;
        string l;

        for (int i = 0; i < len; i++) {
            if (line[i] == '\r') continue;
            if (line[i] == comma) {
                cells.push_back(l);
                l.clear();
                continue;
            }
            l.push_back(line[i]);
        }
        return cells;
    }
    bool eof() {
        if (fp == NULL) return true;
        return feof(fp);
    }
    vector<vector<string>> loadall() {
        vector<vector<string>> ans;
        while (!eof())
        {
            ans.push_back(loadnextline());
        }
        return ans;
    }
    mycsv(string filename, int linemax = 40960) {
        bufsize = linemax;
        init();
        open(filename);
    }
    mycsv(int linemax) {
        bufsize = linemax;
        init();
    }
    ~mycsv() {
        delete[] line;
        if (fp == NULL) return;
        fclose(fp);
        fp = NULL;
    }
};

int main() {
    mycsv csv("sampledatax.csv");
    for (int a = 0; a < 1; a++){
    //while(!csv.eof()){
        vector<string> cells = csv.loadnextline();
	      //printf("%d",cells.size());
        //for (int i = 0; i < cells.size(); i++) {
        //    cout << cells[i] << "";
        //}
        //cout << endl;
    cout << cells;
    //printf("%d",cells[0]);
	
	/*
        cout << sizeof(cells)/sizeof(cells[0]);
        cout << sizeof(cells.size());
	printf("sizeof(arr) / sizeof(int) : %d\n",
			        sizeof(cells) / sizeof(int));
	*/

	//printf("%d\n", sizeof(cells) / sizeof(cells[0]));
	//printf("%d\n", sizeof(cells[0]) / sizeof(cells[0][0]));


    }
}
