#include <iostream>
#include <cstdlib>
#include <algorithm>
#include <functional>
#include <string>
using namespace std;

int main(){
	string str;
	int array[8];
	int max, min;
	int n;
	getline(cin, str);
	n = atoi(str.c_str());
	for (int i = 0; i < n; i++) {
		getline(cin, str);
		for (int j = 0; j < 8; j++) {
			array[j] = (int)(str[j] - '0');
		}
		sort(array, array+8, greater<int>());
		for (int j = 0; j < 8; j++) {
			str[j] = (char)array[j] + '0';
		}
		max = atoi(str.c_str());

		sort(array, array+8);
		for (int j = 0; j < 8; j++) {
			str[j] = (char)array[j] + '0';
		}
		min = atoi(str.c_str());
		cout << max-min << endl;
	}
	return 0;
}
