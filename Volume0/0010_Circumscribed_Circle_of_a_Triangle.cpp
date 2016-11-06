#include <iostream>
#include <cmath>
using namespace std;

double length(double x1, double y1, double x2, double y2){
	double x = x1 - x2;
	double y = y1 - y2;
	return sqrt(x*x + y*y);
}

int main(){
	int n, i;
	double x1, x2, x3, y1, y2, y3;
	double r, xp, yp, a, b, c, S;
	cin >> n;
	for(i=0; i<n; i++){
		cin >> x1 >> y1 >> x2 >>  y2 >> x3 >> y3;

		a = length(x1, y1, x2, y2);
		b = length(x2, y2, x3, y3);
		c = length(x3, y3, x1, y1);

		r = a*b*c/sqrt((a+b+c)*(-a+b+c)*(a-b+c)*(a+b-c));
		S = a*b*c/(4*r);
		xp = ((a*a)*(b*b + c*c - a*a)*x3+(b*b)*(c*c + a*a - b*b)*x1+(c*c)*(a*a + b*b - c*c)*x2)/(16*S*S); 
		yp = ((a*a)*(b*b + c*c - a*a)*y3+(b*b)*(c*c + a*a - b*b)*y1+(c*c)*(a*a + b*b - c*c)*y2)/(16*S*S); 

		printf("%.3f %.3f %.3f\n", xp, yp, r);
	}

	return 0;
}
