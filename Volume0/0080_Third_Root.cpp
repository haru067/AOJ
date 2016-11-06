#include <iostream>
#include <iomanip>
#include <cmath>
#include <cstdio>
using namespace std;

double thirdRoot(double x, double q){
	double next_x;
	if (fabs(x*x*x - q) < 0.00001*q) {
		return x;
	}else {
		next_x = x - ((x*x*x-q) / (3.0*x*x));
		return thirdRoot(next_x, q);
	}
}

int main(){
	double n;

	while (cin >> n) {
		if (n == -1) {
			break;
		}
		cout << fixed << setprecision(6)<< thirdRoot(n/2.0, n) << endl;
	}
	return 0;
}
