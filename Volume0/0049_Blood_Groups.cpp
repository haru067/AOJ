#include <iostream>
#include <cstdio>
#include <string>
using namespace std;

int main(){
	int ans[4] = {0};
	int n;
	char buf[80];
	string type;
	
	while (~scanf("%d,%s", &n, buf)) {
		type = string(buf);
		if (type == "A") {
			ans[0]++;
		}else if (type == "B") {
			ans[1]++;
		}else if (type == "AB") {
			ans[2]++;
		}else if (type == "O") {
			ans[3]++;
		}
	}
	for (int i = 0; i < 4; i++) {
		cout << ans[i] << endl;
	}
	return 0;
}
