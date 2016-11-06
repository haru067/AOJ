#include <iostream>
using namespace std;

#define MAX 200000 

bool prime_table[MAX];
int head;

int main(){
	int n, i, j;
	int result;
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
	
	while(cin >> n){
		if (n == 0) {
			break;
		}
		result = 0;
		j = 0;
		for (i = 0; i <= MAX; i++) {
			if(prime_table[i]){
				result += i;
				j++;
				if (j == n) {
					break;
				}
			}
		}
		cout << result << endl;
	}
	return 0;
}

