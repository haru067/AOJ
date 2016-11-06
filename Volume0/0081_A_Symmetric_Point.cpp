// calc a point of symmetry by using vector
#include <iostream>
#include <iomanip>
#include <cstdio>
using namespace std;

int main(){
	double x1, y1, x2, y2, xq, yq;
	double py, px, t;
	double ax, ay;
	while (~scanf("%lf,%lf,%lf,%lf,%lf,%lf\n", &x1, &y1, &x2, &y2, &xq, &yq)) {
		px = x2 - x1;
		py = y2 - y1;
		t = (px*(xq - x1) + py*(yq - y1)) / (px*px + py*py);
		ax = 2.0*t*px + 2.0*x1 -xq;
		ay = 2.0*t*py + 2.0*y1 -yq;
		cout << setprecision(20);
		cout << showpoint << ax << " " << ay << endl;
	}
	return 0;
}
