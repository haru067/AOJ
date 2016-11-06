// DP
#include <iostream>
#include <cstdio>
#include <cstring>
#include <algorithm>
#define MAX_N 1001
#define MAX_W 1001
using namespace std;

int main(){
	int caseNum = 1;
	int ans;
	int W, n;
	int v[MAX_N];
	int w[MAX_N];
	int dp[MAX_N][MAX_W];
	while(cin >> W){
		if(W == 0){
			break;
		}
		cin >> n;
		for (int i = 0; i < n; i++) {
			scanf("%d,%d", &v[i], &w[i]);
		}
		
		memset(dp, 0, sizeof(dp));
		for (int i = 0; i < n; i++){
			for (int j = 0; j <= W; j++){
				if(j < w[i]){
					dp[i+1][j] = dp[i][j];
				} else{
					dp[i+1][j] = max(dp[i][j], dp[i][j - w[i]] + v[i]);
				}
			}
		}
		// answer
		cout << "Case " << caseNum++ << ":" << endl;
		for (int i = W; i >= 0; i--) {
			if(dp[n][W] != dp[n][i]) {
				ans = i+1;
				break;
			}
		}
		cout << dp[n][W] << endl;
		cout << ans << endl;
	}
	return 0;
}
