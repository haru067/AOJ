#include <iostream>
#include <string>
#include <cstdio>
using namespace std;

void printFormatDate(int t){
	string str;
	int h, m, s;
	h = t/3600;
	m = t%3600/60;
	s = t%60;
	printf("%02d:%02d:%02d\n", h, m, s);
}

int main(){
	int h, m, s;
	int time;
	while (cin >> h >> m >> s) {
		if (h == -1 && m == -1 && s == -1) {
			break;
		}
		time = 120*60 - (h*60*60 + m*60 + s);
		printFormatDate(time);
		printFormatDate(time*3);
	}
	return 0;
}
