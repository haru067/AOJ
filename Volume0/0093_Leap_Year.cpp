#include <iostream>
using namespace std;

int main(){
	int a, b;
	bool first = true;
	bool na;
	while (cin >> a >> b) {
		if(a == 0 && b == 0) break;
		if(first) first = false;
		else cout << endl;
		na = true;
		for (int i = a; i <= b; i++) {
			if (i % 4 == 0 && (i % 100 != 0 || i % 400 == 0)) {
				na = false;
				cout << i << endl;
			}
		}
		if (na) {
			cout << "NA" << endl;
		}
	}
	return 0;
}
