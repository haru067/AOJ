#include <iostream>
using namespace std;

int main(){
	int a, b, n;
	double tmp;
	int sum;
	while (cin >> a >> b >> n) {
		sum = 0;
		a %= b;
		for (int i = 0; i < n; i++) {
			sum += (a * 10) / b;
			a = (a * 10) % b;
		}
		cout << sum << endl;
	} 
	return 0;
}
