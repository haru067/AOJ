#include <iostream>
#include <cstdio>
using namespace std;

int main(){
	int rect1 = 0;
	int rect2 = 0;
	int a, b, c;
	while(~scanf("%d,%d,%d", &a, &b, &c)){
		if(a*a + b*b == c*c){
			rect1++;
		}
		if(a == b){
			rect2++;
		}
	}
	cout << rect1 << endl;
	cout << rect2 << endl;
	return 0;
}
