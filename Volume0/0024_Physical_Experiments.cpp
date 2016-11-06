#include <iostream>
using namespace std;

int main(){
	double v, y, t;
	int n;
	while(cin >> v){
		t = v/9.8;
		y = 4.9*t*t;
		n = 0;
		while(5*n - 5 < y){
			n++;
		}
		cout << n << endl;
	}
	return 0;
}
