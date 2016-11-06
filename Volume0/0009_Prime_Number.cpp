#include <iostream>
using namespace std;

#define MAX 1000000 

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
		result = 0;
		for (i = 0; i <= n; i++) {
			if(prime_table[i])
				result++;
		}
		cout << result << endl;
	}
	return 0;
}
