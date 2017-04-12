//basic file operation
#include "iostream"
#include "fstream"
#include "string"
#include "vector"
#include "cstdlib"
#include "sstream"

#include "filehandling.h"

using namespace std;

vector<int> readFile(string s)
{
	cout<<"Reading file...\n";
	ifstream inf(s.c_str());
	if(!inf)
	{
		cerr<< "File could not be read";
	}
	
	vector<int> intvector;
	int a,b,c;
	while(inf>>a>>b>>c)
	{
		intvector.push_back(a);
		intvector.push_back(b);
		intvector.push_back(c);
	
	}

	return intvector;

}
