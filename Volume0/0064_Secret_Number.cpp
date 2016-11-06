#include <iostream>
#include <cstdlib>
#include <string>
#include <cctype>
using namespace std;

int main(){
	string str;
	int ans = 0;
	int start;
	while (cin >> str) {
		start = -1;
		for (int i = 0; i < str.size(); i++) {
			if (isdigit(str[i]) && start == -1) {
				start = i;
			}else if (start != -1 && !isdigit(str[i])) {
				ans += atoi(str.substr(start,i-start).c_str());
				start = -1;
			}else if(!isdigit(str[i])){
				start = -1;
			}
		}
		if(isdigit(str[str.size()-1])){
			ans += atoi(str.substr(start,str.size()-start).c_str());
		}
	}
	cout << ans << endl;
	return 0;
}
