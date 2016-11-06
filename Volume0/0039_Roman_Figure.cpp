#include <iostream>
#include <string>
using namespace std;

int parseInt(char ch){
	switch(ch){
		case 'I':
			return 1;
		case 'V':
			return 5;
		case 'X':
			return 10;
		case 'L':
			return 50;
		case 'C':
			return 100;
		case 'D':
			return 500;
		case 'M':
			return 1000;
	}
}

int main(){
	string str;
	int last, n;
	int ans;
	while(cin >> str){
		ans = last = parseInt(str[0]);
		for (int i = 1; i < str.size(); i++) {
			n = parseInt(str[i]);
			if(n > last){
				ans += (n-last) - last;
			}else{
				ans += n;
			}
			last = n;
		}
		cout << ans << endl;
	}
	return 0;
}
