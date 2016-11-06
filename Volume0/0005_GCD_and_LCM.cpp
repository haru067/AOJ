#include <iostream>
#include <algorithm>
using namespace std;

int GCD(int a, int b){
	return (b == 0) ? a:GCD(b, a%b);
}
int LCM(int a, int b){
	return a/GCD(a, b)*b;
}

int main(){
	int a, b;
	while(cin >> a >> b){
		if(a < b)
			swap(a, b);
		cout << GCD(a, b) << " " << LCM(a, b) << endl;
	}
	//
	return 0;
}

