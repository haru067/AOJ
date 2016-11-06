// Prim
#include <iostream>
#include <cstdio>
#include <algorithm>
#include <climits>
#define MAX_N 200
using namespace std;

const int INF = 1e+9;

int main(){
	int n, m;
	int from, to, d;
	int cost[MAX_N][MAX_N];
	int minCost[MAX_N];
	bool used[MAX_N];
	int ans;

	while (cin >> n) {
		if (n == 0) {
			break;
		}
		cin >> m;
		// initialize
		for (int y = 0; y < n; y++) {
			minCost[y] = INF;
			used[y] = false;
			for (int x = 0; x < n; x++) {
				cost[y][x] = INF;
			}
		}
		for (int i = 0; i < m; i++) {
			scanf("%d,%d,%d", &from, &to, &d);
			cost[to][from] = cost[from][to] = d / 100 -1;
			//cout << from << ',' << to << ',' << d << endl;
		}
		minCost[0] = 0;
		ans = 0;
		// Prim
		while (1) {
			int v = -1;
			// find minNode
			for (int i = 0; i < n; i++) {
				if(!used[i] && (v == -1 || minCost[i] < minCost[v])){
					v = i;
				}
			}
			if (v == -1) { // all noses are used?
				break;
			}
			used[v] = true;
			ans += minCost[v];

			for (int i = 0; i < n; i++) {
				minCost[i] = min(minCost[i], cost[v][i]);
			}
		}
		cout << ans << endl;
	}
	return 0;
}
