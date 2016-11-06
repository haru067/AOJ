#include <iostream>
using namespace std;

int main(){
	double n, i;
	double x1, y1, x2, y2, x3, y3, x4, y4;
	cin >> n;
	for (i = 0; i < n; i++) {
		cin >> x1 >> y1 >> x2 >> y2 >> x3 >> y3 >> x4 >> y4;
		if((y1-y2)*(x3-x4) == (y3-y4)*(x1-x2)){
			cout << "YES" << endl;
		}else{
			cout << "NO" << endl;
		}
	}
	return 0;
}
