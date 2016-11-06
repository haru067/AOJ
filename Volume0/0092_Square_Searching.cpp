#include <iostream>
#include <string>
#include <cstdlib>
#include <algorithm>
using namespace std;

string s[1001];
int memo[1001][1001];
int n;

int calcWidth(int x, int y){
	int result = 1;
	if(s[y][x] == '*') return 0;
	if(x+1 < n) result += memo[y][x+1]; 
	return result;
}

int solve(int x, int y){
	int result = 0;
	int minWidth = 9999;
	for (int i = y; i < n; i++) {
		minWidth = min(minWidth, memo[i][x]);
		if(minWidth < i-y+1) break;
		result = i-y+1;
	}
	return result;
}

int main(){
	string tmp;
	int ans;
	while (getline(cin, tmp)) {
		n = atoi(tmp.c_str());
		if(n == 0) break;
		for (int i = 0; i < n; i++) {
			getline(cin, s[i]);
		}
		for (int y = 0; y < n; y++) {
			for (int x = n-1; x >= 0; x--) {
				memo[y][x] = calcWidth(x, y);
			}
		}
		ans = 0;
		for (int y = 0; y < n; y++) {
			for (int x = 0; x < n; x++) {
				ans = max(ans, solve(x, y));
			}
		}
		cout << ans << endl;
	}
	return 0;
}
