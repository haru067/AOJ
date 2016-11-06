#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int main(){
	string str;
	string rev;
	int ans = 0;
	while (cin >> str) {
		rev = str;
		reverse(rev.begin(), rev.end());
		if (str == rev) {
			ans++;
		}
	}
	cout << ans << endl;
	return 0;
}
