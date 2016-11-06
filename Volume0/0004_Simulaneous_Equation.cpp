#include <iostream>
using namespace std;

int main(){
	double a, b, c, d, e, f;
	double x, y;
	while(cin >> a >> b >> c >> d >> e >> f){
		y = (c*d-a*f)/(b*d-a*e);
		x = (c-b*y)/a;
		printf("%.3f %.3f\n", x, y);
	}

	return 0;
}
