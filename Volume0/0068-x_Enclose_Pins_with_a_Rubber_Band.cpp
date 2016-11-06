#include <iostream>
#include <cmath>
#include <cstdio>
#include <cfloat>
using namespace std;

int main(){
	int n, ans;
	int next, last, now, start;
	double vx0, vx1, vy0, vy1, a;
	double arg, tmp;
	double px[101], py[101];
	while (cin >> n) {
		if (n == 0) {
			break;
		}
		ans = n;
		for (int i = 0; i < n; i++) {
			scanf("%lf,%lf", &px[i], &py[i]);
		}
		px[100] = -999999;
		py[100] = 999999;
		// select top point
		last = now = next = 100;
		for (int i = 0; i < n; i++) {
			if (py[i] < py[last]) {
				last = i;
			}else if (py[i] == py[last] && px[i] > px[last]) {
				last = i;
			}
		}
		cout << "last: " << last << endl;
		ans--;
		// select 2nd point by getting lowest a in y = ax + b
		tmp = DBL_MAX;
		for (int i = 0; i < n; i++) {
			if (i == last) {
				continue;
			}
			a = py[i] - py[last]; 
			if(tmp*(px[i] - px[last]) > a && px[i] - px[last] > 0){
				tmp = a/(px[i] - px[last]);
				now = i;
			}
		}
		if(tmp == DBL_MAX){
			tmp = 0;
			for (int i = 0; i < n; i++) {
				if (i == last) {
					continue;
				}
				a = py[i] - py[last]; 
				if(tmp*(px[i] - px[last]) > a){
					tmp = a/(px[i] - px[last]);
					now = i;
				}
			}
		}
		cout << "now: " << now << endl;
		ans--;
		// connect dots
		start = last;
		while (start != now) {
			// determine next point
			arg = 10000;
			for (int i = 0; i < n; i++) {
				if(i == now || i == last){
					continue;
				}
				vx0 = px[i] - px[now];
				vy0 = py[i] - py[now];
				vx1 = px[last] - px[now];
				vy1 = px[last] - py[now];

				tmp = (vx0*vx1 + vy0*vy1) / (sqrt(vx0*vx0 + vy0*vy0) * sqrt(vx1*vx1 + vy1*vy1));
				if (arg > tmp) {
					arg = tmp;
					next = i;
				}
			}
			//cout << next << endl;
			last = now;
			now = next;
			ans--;
		}
		ans++;
		cout << ans << endl;
	}
	return 0;
}
