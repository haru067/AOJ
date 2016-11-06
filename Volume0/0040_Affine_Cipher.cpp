#include <iostream>
#include <string>
using namespace std;

int GCD(int a, int b){
	return (b == 0) ? a:GCD(b, a%b);
}

char affine(int a, int b, char ch){
	int y = (int)(ch - 'a');
	return (char)((a*y+b)%26) + 'a';
}

int main(){
	bool ok;
	string str;
	getline(cin, str);
	while (getline(cin, str)) {
		ok = false;
		for (int a = 1; a < 100 && !ok; a++) {
			if(GCD(a, 26) != 1){
				continue;
			}
			for (int b = 0; b < 26 && !ok; b++) {
				for (int j = 0; j < str.size(); j++) {
					if('a' <= str[j] && str[j] <= 'z'){
						str[j] = affine(a, b, str[j]);
					}
				}
				if(str.find("that") != string::npos || str.find("this") != string::npos){
					cout << str << endl;
					ok = true;
				}
			}
		}
	}
	return 0;
}
