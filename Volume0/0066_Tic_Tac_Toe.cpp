#include <iostream>
#include <string>
using namespace std;

int main(){
	string s;
	char b[3][3];
	char ch, ans;
	bool v, h, s1, s2;
	while (cin >> s) {
		for (int y = 0; y < 3; y++) {
			for (int x = 0; x < 3; x++) {
				b[y][x] = s[x*3+y];
			}
		}

		ans = 'd';
		for (int i = 0; i < 2; i++) {
			ch = i == 0 ? 'o' : 'x';
			for (int j = 0; j < 3; j++) {
				v = h = s1 = s2 = true;
				for (int k = 0; k < 3; k++) {
					if (b[j][k] != ch) {
						h = false;
					}
					if (b[k][j] != ch) {
						v = false;
					}
					if(b[k][k] != ch){
						s1 = false;
					}
					if(b[k][2-k] != ch){
						s2 = false;
					}
				}
				if(v || h || s1 || s2){
					ans = ch;
				}
			}
		}
		cout << ans << endl;
	}
	return 0;
}
