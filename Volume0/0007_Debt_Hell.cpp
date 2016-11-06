#include <iostream>
using namespace std;

int main(){
	int n, i;
	int result = 100000;
	
	cin >> n;

	for (i = 0; i < n; i++) {
		result += result*0.05;
		if(result - (result/1000*1000) > 0){
			result = result/1000*1000+1000;
		}
	}
	
	cout << result << endl;

	return 0;
}
