#include <iostream>
#include <cstdio>
using namespace std;

int main(){
	int p[10], d, v1, v2, x1, x2, i, sum;
	double t;
	while(~scanf("%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d",&p[0],&p[1],&p[2],&p[3],&p[4],&p[5],&p[6],&p[7],&p[8],&p[9],&v1,&v2)){
		d = 0;
		for (i = 0; i < 10; i++) {
			d += p[i];
		}
		t = (double)d / (double)(v1+v2);
		
		sum = 0;
		for (i = 0; i < 10; i++) {
			sum += p[i];
			if((double)v1*t <= sum){
				i++;
				break;
			}
		}
		cout << i << endl;

	}
	return 0;
}

