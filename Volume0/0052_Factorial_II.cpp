#include <iostream>
#include <algorithm>
using namespace std;

int digit(int n, int* two, int* five){
	while(n%2 == 0 && n != 0){
		*two = *two + 1;
		n /= 2;
	}
	while(n%5 == 0 && n != 0){
		*five = *five + 1;
		n /= 5;
	}
}

int main(){
	int n;
	int two;
	int five;
	while (cin >> n) {
		two = five = 0;
		if (n == 0) {
			break;
		}
		for (int i = 1; i <= n; i++) {
			digit(i ,&two, &five);
		}
		cout << min(two,five) << endl;
	}
	return 0;
}
