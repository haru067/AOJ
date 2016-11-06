#include <iostream>
using namespace std;

int main(){
	double xa1,xa2,xb1,xb2,ya1,ya2,yb1,yb2; 
	bool h, v;
	while (cin >> xa1 >> ya1 >> xa2 >> ya2 >> xb1 >> yb1 >> xb2 >> yb2) {
		h = (xb1 <= xa2) && (xa1 <= xb2);
		v = (yb1 <= ya2) && (ya1 <= yb2);
		if(h && v){
			cout << "YES" << endl;
		}else {
			cout << "NO" << endl;
		}
	}
	return 0;
}
