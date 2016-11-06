#include <iostream>
using namespace std;

int main(){
	int n;
	double w, h, bmi;
	while (~scanf("%d,%lf,%lf", &n, &w, &h)) {
		bmi = w / (h*h);
		if (bmi >= 25) {
			cout << n << endl;
		}
	}
	return 0;
}
