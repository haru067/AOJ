#include <iostream>
#include <cstring>
#define MAX_N 10
#define MAX_S 10000
using namespace std;

int ans[MAX_N+1][MAX_S];
int used[10];

void calc(int n, int depth, int sum){
	if (n+1 == depth) {
		ans[n][sum]++;
	}else {
		for (int i = 0; i < 10; i++) {
			if (used[i] == 0) {
				used[i] = 1;
				calc(n,depth+1,i*depth+sum);
				used[i] = 0;
			}
		}
	}
}


int main(){
	int n, s;
	memset(ans, 0, sizeof(ans));
	// calc any answers for n, s in advance.
	for (int i = 0; i < 10; i++) {
		memset(used, 0, sizeof(used));
		calc(i+1, 1, 0);
	}
	while (cin >> n >> s) {
		cout << ans[n][s] << endl;
	}
	return 0;
}
