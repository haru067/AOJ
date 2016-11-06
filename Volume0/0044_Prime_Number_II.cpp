#include <iostream>
using namespace std;

#define MAX 100000 

bool prime_table[MAX];
int head;

int main(){
	int n, i, j;
	int last;
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
		for (i = 0; i <= MAX; i++) {
			if(prime_table[i]){
				if(i > n){
					cout << last << " " << i << endl;
					break;
				}else if(i != n){
					last = i;
				}
			}
		}
	}
	return 0;
}
