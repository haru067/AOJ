#include <iostream>
#include <algorithm>
using namespace std;

int main(){
	int i, j, n, sum, result;
	int a[5000];
	while(cin >> n){
		if(n == 0){
			break;
		}
		for (i = 0; i < n; i++) {
			cin >> a[i];
		}
		result = a[0];
		for (i = 0; i < n; i++) {
			sum = 0;
			for (j = i; j < n; j++) {
				sum += a[j];
				result = max(result, sum);
			}
		}
		cout << result << endl;
	}
	return 0;
}
