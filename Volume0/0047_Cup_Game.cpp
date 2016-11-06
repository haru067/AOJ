#include <iostream>
#include <cstdio>
#include <algorithm>
using namespace std;

int main(){
	char ch0, ch1;
	int cup[3] = {0};
	cup[0] = 1;
	while (~scanf("%c,%c\n", &ch0, &ch1)) {
		swap(cup[ch0-'A'], cup[ch1-'A']);
	}
	for (int i = 0; i < 3; i++) {
		if (cup[i] == 1) {
			cout << (char)('A' + i) << endl;
		}
	}
	return 0;
}
