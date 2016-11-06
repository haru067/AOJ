#include <iostream>
#include <string>
using namespace std;

int main(){
	int num[10];
	string str;
	while (cin >> str) {
		for (int i = 0; i < 10; i++) {
			num[i] = str[i] - '0';
		}
		for (int i = 9; i > 0; i--) {
			for (int j = 0; j < i; j++) {
				num[j] = num[j] + num[j+1];
				num[j] -= num[j] >= 10 ? 10 : 0;
			}
		}
		cout << num[0] << endl;
	}
	return 0;
}
