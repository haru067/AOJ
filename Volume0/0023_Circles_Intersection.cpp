#include <iostream>
#include <cmath>
using namespace std;

int main(){
	int i, n, ans;
	double xa, xb, ra, rb, ya, yb;
	double d;
	cin >> n;
	for (i = 0; i < n; i++) {
		cin >> xa >> ya >> ra >> xb >> yb >> rb;
		d = sqrt((xa-xb)*(xa-xb) + (ya-yb)*(ya-yb));
		if(fabs(ra-rb) > d){
			ans = (ra>rb)? 2 : -2;
		}else if(ra+rb < d){
			ans = 0;
		}else{
			ans = 1;
		}
		cout << ans << endl;
	}
	return 0;
}
