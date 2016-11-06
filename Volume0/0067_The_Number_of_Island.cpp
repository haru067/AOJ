#include <iostream>
#include <string>
using namespace std;

string s[12];
bool checked[12][12];

void fill(int x, int y){
	checked[y][x] = true;
	if (y+1 < 12 && !checked[y+1][x] && s[y+1][x] == '1') {
		fill(x, y+1);
	}
	if (y > 0 && !checked[y-1][x] && s[y-1][x] == '1') {
		fill(x, y-1);
	}
	if (x+1 < 12 && !checked[y][x+1] && s[y][x+1] == '1') {
		fill(x+1, y);
	}
	if (x > 0 && !checked[y][x-1] && s[y][x-1] == '1') {
		fill(x-1, y);
	}
}

int main(){
	int ans;
	while(cin >> s[0]){
		if (s[0].size() == 0) {
			continue;
		}
		for (int i = 1; i < 12; i++) {
			cin >> s[i];
		}
		
		// initialize
		for (int y = 0; y < 12; y++) {
			for (int x = 0; x < 12; x++) {
				checked[y][x] = false;
			}
		}
		ans = 0;
		for (int y = 0; y < 12; y++) {
			for (int x = 0; x < 12; x++) {
				if (!checked[y][x] && s[y][x] == '1') {
					ans++;
					fill(x, y);
				}
			}
		}
		cout << ans << endl;
	} 
	return 0;
}
