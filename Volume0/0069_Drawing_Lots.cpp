#include <iostream>
#include <cstdio>
#include <algorithm>
#include <string>
#include <sstream>
using namespace std;

int n, m, a, d;
string s[31];

string itos(int num){
	stringstream ss;
	ss << num;
	return ss.str();
}

bool moveRight(int x, int y){
	if (x+1 < n && s[y][x+1] == '1') return false;
	else return true;
}

bool moveLeft(int x, int y){
	if (x > 1 && s[y][x-2] == '1') return false;
	else return true;
}

int main(){
	int correct[31];
	int now;
	string ans;

	while (~scanf("%d\n", &n)) {
		if (n == 0) {
			break;
		}
		// initialize
		scanf("%d\n", &m); m--;
		scanf("%d\n", &a); a--;
		scanf("%d\n", &d);
		for (int i = 0; i < d; i++) {
			getline(cin, s[i]);
		}
		ans = itos(1);
		// find correct path by calc from bottom to top
		correct[d] = a;
		for (int i = d; i > 0 ; i--) {
			now = correct[i];
			if(now > 0 && s[i-1][now-1] == '1') { // move left
				correct[i-1] = now-1;
			}else if (now < n-1 && s[i-1][now] == '1') { // move right
				correct[i-1] = now+1;
			}else {
				correct[i-1] = now;
			}
		}
		// main
		now = m;
		for (int i = 0; i < d; i++) {
			if(now > 0 && s[i][now-1] == '1') { // move left
				now--;
			}else if (now < n-1 && s[i][now] == '1') { // move right
				now++;
			}else {
				if(now+1 == correct[i] && moveRight(now, i)){
					ans = itos(i+1) + " " + itos(now+1);
					break;
				}else if(now-1 == correct[i] && moveLeft(now, i)){
					ans = itos(i+1) + " " + itos(now);
					break;
				}
			}
		}
		if (correct[0] == m) {
			ans = itos(0);
		}
		cout << ans << endl;
	}
	return 0;
}
