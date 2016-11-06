#include <iostream>
using namespace std;

int main(){
	int n, j, i;
	int a[10];
	int b, c;
	cin >> n;
	for (j = 0; j < n; j++) {
		cin >> a[0] >> a[1] >> a[2] >> a[3] >> a[4] >> a[5] >> a[6] >> a[7] >> a[8] >> a[9];
		b = 0;
		c = 0;
		for(i = 0; i < 10; i++){
			if(b > c){
				if (a[i] > b) {
					b = a[i];
				}else if(a[i] > c){
					c = a[i];
				}else{
					break;
				}
			}else{
				if(a[i] > c){
					c = a[i];
				}else if (a[i] > b) {
					b = a[i];
				}else{
					break;
				}
			}
		}

		if(i < 10){
			cout << "NO" << endl;
		}else{
			cout << "YES" << endl;
		}
	}
	return 0;
}
