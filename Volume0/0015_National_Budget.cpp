#include <iostream>
#include <cmath>
#include <cstdlib>
using namespace std;

int main(){
	int x[100];
	int y[100];
	int z[100];
	int n, i, j, hi;
	bool top;
	string a, b;
	
	cin >> n;
	for (i = 0; i < n; i++) {
		// initialize
		for(j=0; j<100; j++){
			x[j] = 0;
			y[j] = 0;
			z[j] = 0;
		}
		cin >> a;
		cin >> b;
		if(a.length() > 80 || b.length() > 80){
			cout << "overflow" << endl;
			continue;
		}
		for (j = 0; j < a.length(); j++){
			x[j] = atoi(a.substr(a.length()-1-j, 1).c_str());
		}
		for (j = 0; j < b.length(); j++){
			y[j] = atoi(b.substr(b.length()-1-j, 1).c_str());
		}
		
		hi = 0;
		for(j=0; j<80; j++){
			z[j] = x[j] + y[j] + hi;
			if(z[j] > 9){
				hi = 1;
				z[j] -= 10;
			}else{
				hi = 0;
			}
		}
		if(hi == 1){
			cout << "overflow" << endl;
		}else{
			top = false;
			for (j = 79; j > -1; j--) {
				if(z[j] == 0 && !top && j != 0){
					continue;
				}else{
					top = true;
					cout << z[j];
				}
			}
			cout << endl;
		}
	}
	return 0;
}
