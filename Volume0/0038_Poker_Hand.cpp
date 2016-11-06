#include <iostream>
#include <cstdio>
#include <algorithm>
using namespace std;

int main(){
	int c[5];
	int i, n, s;
	while(~scanf("%d,%d,%d,%d,%d", &c[0], &c[1], &c[2], &c[3], &c[4])){
		sort(c, c+5);
		n = 0;
		s = 0;
		for (i = 0; i < 4; i++) {
			if(c[i] == c[i+1]){
				n++;
			}
			if(c[i]+1 == c[i+1]){
				s++;
			}
		}
		if (n == 3 && c[1] == c[3]) {
			cout << "four card" << endl;
		}else if (n == 3) {
			cout << "full house" << endl;
		}else if (s == 4 || (s==3 && c[0] == 1 && c[1]==10 && c[4]==13)) {
			cout << "straight" << endl;
		}else if (n == 2 && (c[0]==c[2] || c[1]==c[3] || c[2]==c[4])) {
			cout << "three card" << endl;
		}else if (n == 2) {
			cout << "two pair" << endl;
		}else if(n ==1){
			cout << "one pair" << endl;
		}else{
			cout << "null" << endl;
		}
	}
	return 0;
}
