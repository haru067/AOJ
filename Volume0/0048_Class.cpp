#include <iostream>
using namespace std;

int main(){
	double n;
	while (cin >> n) {
		if (n > 91.00) {
			cout << "heavy" << endl;
		}else if (n > 81.00) {
			cout << "light heavy" << endl;
		}else if (n > 75.00) {
			cout << "middle" << endl;
		}else if (n > 69.00) {
			cout << "light middle" << endl;
		}else if (n > 64.00) {
			cout << "welter" << endl;
		}else if (n > 60.00) {
			cout << "light welter" << endl;
		}else if (n > 57.00) {
			cout << "light" << endl;
		}else if (n > 54.00) {
			cout << "feather" << endl;
		}else if (n > 51.00) {
			cout << "bantam" << endl;
		}else if (n > 48.00) {
			cout << "fly" << endl;
		}else{
			cout << "light fly" << endl;
		}
	}
	return 0;
}
