#include <iostream>
using namespace std;

int main(){
	bool card[10]; 
	int my1, my2, cpu1, safe;
	while (cin >> my1 >> my2 >> cpu1) {
		safe = 0;
		for (int i = 1; i <= 10; i++) {
			if (i != my1 && i != my2 && i != cpu1 && my1+my2+i <= 20){
				safe++;
			}
		}
		if ((double)safe/7.0 >= 0.5) {
			cout << "YES" << endl;
		}else {
			cout << "NO" << endl;
		}
	}
	return 0;
}
