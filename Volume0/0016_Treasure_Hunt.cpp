#include <iostream>
#include <cmath>
#include <cstdio>
using namespace std;
#define PI 3.1415926535898

int main(){
	double x = 0.0;
	double y = 0.0;
	double angle = 90.0;
	int d, a;
	while(scanf("%d,%d", &d, &a)){
		if(d == 0 && a == 0){
			break;
		}
		x += (double)d*cos(angle*PI/180.0);
		y += (double)d*sin(angle*PI/180.0);
		angle -= (double)a;
	}
	cout << (int)x << endl;
	cout << (int)y << endl;
	return 0;
}
