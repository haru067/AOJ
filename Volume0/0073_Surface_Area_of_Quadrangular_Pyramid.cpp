#include <iostream>
#include <iomanip>
#include <cmath>
using namespace std;

int main(){
	double x, h, ans;
	while (cin >> x >> h) {
		if (x == 0 && h == 0) {
			break;
		}
		ans = x*(x+2.0*sqrt(h*h+0.25*x*x));
		cout << setprecision(20);
		cout << ans << endl;
	}
	return 0;
}
