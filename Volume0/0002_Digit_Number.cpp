#include <iostream>
using namespace std;

int main(){
	int a, b, c, result;
	while(cin >> a >> b){
		c = a + b;
		result = 0;
		while(c > 0){
			result++;
			c /= 10;
		}
		cout << result << endl;
	}
	return 0;
}
