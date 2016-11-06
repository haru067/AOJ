#include <iostream>
#include <algorithm>

using namespace std;

int main(){
	int n;
	int i;
	int a, b, c;

	cin >> n;
	for (i = 0; i < n; i++) {
		cin >> a >> b >> c;
		if (a < b) 
			swap(a,b);
		if (a < c)
			swap(a, c);

		if (a*a == b*b + c*c) {
			cout << "YES" << endl;
		}else{
			cout << "NO" << endl;
		}
	}
	return 0;
}
