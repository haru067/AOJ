#include <iostream>
#include <string>
using namespace std;

int main(){
	string s;
	int size, n;
	while (getline(cin, s)) {
		size = s.size();
		for (int i = 0; i < size; i++) {
			if (s[i] == '@') {
				i++;
				n = s[i] - '0';
				i++;
				for (int j = 0; j < n; j++) {
					cout << s[i];
				}
			}else {
				cout << s[i];
			}
		}
		cout << endl;
	}
	return 0;
}
