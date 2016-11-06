#include <iostream>
#include <iomanip>
using namespace std;

int main(){
	double a;
	double sum;
	while (cin >> a) {
		sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += a;
			if (i % 2) {
				a = a * 2;
			}else {
				a = a / 3;
			}
		}
		cout << setprecision(20);
		cout << sum << endl;
	} 
	return 0;
}
