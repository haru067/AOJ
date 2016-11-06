#include <iostream>
#define PRE_MEIJI 18680908
#define MEIJI 19120730
#define TAISHO 19261225
#define SHOWA 19890108
using namespace std;

int main(){
	int y, m, d, a;
	int sum;
	while (cin >> y >> m >> d) {
		sum = d + m*100 + y*10000;
		if (sum < PRE_MEIJI) {
			cout << "pre-meiji" << endl;
		}else if (sum < MEIJI) {
			a = y - PRE_MEIJI/10000 + 1;
			cout << "meiji " << a << " " << m << " " << d << endl;
		}else if (sum < TAISHO) {
			a = y - MEIJI/10000 + 1;
			cout << "taisho " << a << " " << m << " " << d << endl;
		}else if (sum < SHOWA) {
			a = y - TAISHO/10000 + 1;
			cout << "showa " << a << " " << m << " " << d << endl;
		}else {
			a = y - SHOWA/10000 + 1; 
			cout << "heisei " << a << " " << m << " " << d << endl;
		}
	}
	return 0;
}
