#include <iostream>
#include <cmath>
using namespace std;

int main(){
	int n;
	double x, y;
	double angle;
	while (cin >> n) {
		if (n == -1) {
			break;
		}
		x = 1;
		y = 0;
		angle = M_PI_2;
		n--;
		for (int i = 0; i < n; i++) {
			x += cos(angle);
			y += sin(angle);
			angle = atan2(y, x) + M_PI_2;
		}
		cout << x << endl;
		cout << y << endl;
	}
	return 0;
}
