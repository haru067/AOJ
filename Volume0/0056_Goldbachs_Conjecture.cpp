#include <iostream>
using namespace std;

#define MAX 500000 

bool prime_table[MAX];

int main(){
	int n, i, j, ans;
	// make table
	for (i = 0; i < MAX; i++) {
		if(i==0||i==1){
			prime_table[i] = false;
		}else{
			prime_table[i] = true;
		}
	}
	// find prime
	for (i = 2; i < MAX; i++) {
		if(prime_table[i]){
			for (j = i+i; j < MAX; j+=i) {
				prime_table[j] = false;
			}
		}
	}

	while (cin >> n) {
		if (n == 0) {
			break;
		}
		ans = 0;
		for (i = 2; i <= n/2; i++) {
			j = n-i;
			if (prime_table[i] && prime_table[j]) {
				ans++;
			}
		}
		cout << ans << endl;
	}
	return 0;
}
