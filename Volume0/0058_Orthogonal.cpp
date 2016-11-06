#include <iostream>
using namespace std;

int main(){
	double xa, xb, xc, xd, ya, yb, yc, yd;
	double tc, td;
	while (cin >> xa >> ya >> xb >> yb >> xc >> yc >> xd >> yd) {
		if ( (xa-xb)*(xc-xd) == -1*(ya-yb)*(yc-yd)) {
			cout << "YES" << endl;
		}else {
			cout << "NO" << endl;
		}
	}
	return 0;
}
