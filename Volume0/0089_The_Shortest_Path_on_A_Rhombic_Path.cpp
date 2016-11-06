#include <iostream>
#include <vector>
#include <string>
#include <cstdlib>
#include <algorithm>
using namespace std;

vector<string> split(const string &str, char delim){
	vector<string> res;
	size_t current = 0, found;
	while((found = str.find_first_of(delim, current)) != string::npos){
		res.push_back(string(str, current, found - current));
		current = found + 1;
	}
	res.push_back(string(str, current, str.size() - current));
	return res;
}

int main(){
	int data[100+10][50+10];
	int memo[100+10][50+10];
	int h;
	vector<string> strings;
	string s;
	for (int i = 0; i < 110; i++) {
		for (int j = 0; j < 60; j++) {
			data[i][j] = -1;
			memo[i][j] = -1;
		}
	}
	for (h = 0; getline(cin, s); h++) {
		strings = split(s, ',');
		for (int i = 0; i < strings.size(); i++) {
			data[h][i+1] = atoi(strings[i].c_str());
		}
	}
	
	// solve
	memo[h-1][1] = data[h-1][1];
	for (int i = h-2; i >= 0; i--) {
		if (i >= h/2) {
			for (int j = 0+1; j < h-i+1; j++) {
				memo[i][j] = data[i][j] + max(memo[i+1][j-1],memo[i+1][j]);
				//cout << memo[i][j] << " ";
			}
		}else {
			for (int j = 0+1; j < i+1+1; j++) {
				memo[i][j] = data[i][j] + max(memo[i+1][j],memo[i+1][j+1]);
				//cout << memo[i][j] << " ";
			}
		}
		//cout << endl;
	}
	cout << memo[0][1] << endl;
	return 0;
}
