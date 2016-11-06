#include <iostream>
#include <cmath>
#include <cstdio>
#include <iomanip>
#define NUM 30
using namespace std;

double heron(double x0, double y0, double x1, double y1, double x2, double y2){
	double a, b, c, z, x, y;
	x = x0 - x1;
	y = y0 - y1;
	a = sqrt(x*x + y*y);

	x = x1 - x2;
	y = y1 - y2;
	b = sqrt(x*x + y*y);

	x = x2 - x0;
	y = y2 - y0;
	c = sqrt(x*x + y*y);

	z = (a+b+c) / 2.0;
	
	return sqrt(z * (z-a) * (z-b) * (z-c));
}

int main(){
	int n = 0;
	double ans = 0;
	double x[NUM], y[NUM];
	while (~scanf("%lf,%lf", &x[n], &y[n]) ) {
		n++;
	} 
	for (int i = 0; i < n-2; i++) {
		ans += heron(x[0], y[0], x[i+1], y[i+1], x[i+2], y[i+2]);
	}
	cout << setprecision(20);
	cout << ans << endl;

	return 0;
}
