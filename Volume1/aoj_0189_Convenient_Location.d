import std.stdio;
import std.algorithm;

const int INF = 99999999;
int[10][10] cost;
int[10] sum;
int n, m, a, b, c, ans;

void main(){
	while (scanf("%d", &n), n) {
		m = -1;
		foreach (i; 0..10) {
			cost[i][] = INF;
			cost[i][i] = 0;
		}
		foreach (i; 0..n) {
			scanf("%d%d%d", &a, &b, &c);
			cost[a][b] = cost[b][a] = c;
			m = max(m, max(a, b)+1);
		}

		warshall_floyd();
		
		sum[] = 0;
		ans = INF;
		foreach (i; 0..m) {
			foreach (j; 0..m) {
				sum[i] += cost[i][j]; 
			}
			if (ans > sum[i]) {
				ans = sum[i];
				a = i;
			}
		}
		writeln(a, " ", ans);
	}
}

void warshall_floyd(){
	for (int k = 0; k < m; k++)
		for (int i = 0; i < m; i++)
			for (int j = 0; j < m; j++)
				if (cost[i][j] > cost[i][k] + cost[k][j])
					cost[i][j] = cost[i][k] + cost[k][j];
}
