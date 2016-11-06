#include <iostream>
#include <cstdio>
using namespace std;

int main(){
	bool flag = false;
	char s[80];
	int hit[4];
	int i, j, n;

	while(1){
		n = 0;
		for (i = 0; i < 8; i++) {
			if(scanf("%s", s) == EOF){
				flag = true;
				break;
			}
			for (j = 0; j < 8; j++) {
				if(s[j] == '1'){
					hit[n++] = i*8+j;
				}
			}
		}
		if(flag){
			break;
		}
		switch(hit[3] - hit[0]){
			case 9:
				cout << "A" << endl;
				break;
			case 24:
				cout << "B" << endl;
				break;
			case 3:
				cout << "C" << endl;
				break;
			case 15:
				cout << "D" << endl;
				break;
			case 10:
				cout << "E" << endl;
				break;
			case 17:
				cout << "F" << endl;
				break;
			case 8:
				cout << "G" << endl;
				break;
			default:
				cout << "ERROR:" << hit[4] - hit[0] << endl;
		}
	}
	return 0;
}
