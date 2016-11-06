import std.stdio;
import std.algorithm;

const int V = 21;
int cost[V][V]; // cost[from][to]

void main(){
	int n ,m, a, b, c, d;
	for (int i = 0; i < V; i++) {
		cost[i] = 999999999;
		cost[i][i] = 0;
	}
	readf("%d\n", &n);
	readf("%d\n", &m);
	for (int i = 0; i < m; i++) {
		readf("%d,%d,%d,%d\n", &a, &b, &c, &d);
		cost[a][b] = c;
		cost[b][a] = d;
	}
	warshall_floyd();
	readf("%d,%d,%d,%d\n", &a, &b, &c, &d);
	writeln(c - d - cost[a][b] - cost[b][a]);
}

void warshall_floyd(){
	for (int k = 0; k < V; k++)
		for (int i = 0; i < V; i++)
			for (int j = 0; j < V; j++)
				cost[i][j] = min(cost[i][j], cost[i][k] + cost[k][j]);
}
