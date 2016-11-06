import std.stdio;
import std.algorithm;

const int N = 101;

int[N][N] cost;
int[N] minCost, used;

void main(){
	int n, m, a, b, c, ans;
	while (readf("%d %d\n", &n, &m), n || m) {
		minCost[] = int.max;
		used[] = false;
		foreach (i; 0..n) cost[i][] = int.max;
		foreach (i; 0..m) {
			readf("%d %d %d\n", &a, &b, &c);
			cost[a][b] = cost[b][a] = c;
		}
		minCost[0] = ans = 0;
		
		// Prim
		while (1) {
			int v = -1;
			foreach (i; 0..n)
				if (!used[i] && (v == -1 || minCost[i] < minCost[v]))
					v = i;

			if (v == -1) break;

			used[v] = true;
			ans += minCost[v];
			foreach (i; 0..n) minCost[i] = min(minCost[i], cost[v][i]);
		}

		writeln(ans);
	}
}
