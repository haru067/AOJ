import std.stdio, std.algorithm;

int[111][111] cost, time;
int n, m, a, b, c, t, p, q, r, k;

void main(){
	while (readf("%d %d\n", &n, &m), n|m) {
		m++;
		foreach (i; 0..m) {
			cost[i] = time[i] = 999999999;
			cost[i][i] = 0;
			time[i][i] = 0;
		}

		foreach (i; 0..n) {
			readf("%d %d %d %d\n", &a, &b, &c, &t);
			cost[a][b] = cost[b][a] = c;
			time[a][b] = time[b][a] = t;
		}

		warshall_floyd();

		readf("%d\n", &k);
		foreach (i; 0..k) {
			readf("%d %d %d\n", &p, &q, &r);
			if (r) writeln(time[p][q]);
			else writeln(cost[p][q]);
		}
	}
}

void warshall_floyd(){
	for (int k = 0; k < m; k++) {
		for (int i = 0; i < m; i++) {
			for (int j = 0; j < m; j++) {
				cost[i][j] = min(cost[i][j], cost[i][k] + cost[k][j]);
				time[i][j] = min(time[i][j], time[i][k] + time[k][j]);
			}
		}
	}
}
