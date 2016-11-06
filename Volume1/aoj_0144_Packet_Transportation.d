import std.stdio;
import std.string;
import std.conv;
import std.algorithm;

const int V = 111;
int cost[V][V];

void main(){
	int n, r, t, s, d, v, p, ans;
	string[] str;
	readf("%d\n", &n);
	for (int i = 0; i < V; i++) {
		cost[i][] = 999999999;
		cost[i][i] = 0;
	}
	for (int i = 0; i < n; i++) {
		str = split(readln());
		r = to!int(str[0]);
		for (int j = 2; j < str.length; j++) {
			t = to!int(str[j]);
			cost[r][t] = 1;
		}
	}

	warshall_floyd();

	readf("%d\n", &p);
	for (int i = 0; i < p; i++) {
		readf("%d %d %d\n", &s, &d, &v);
		ans = cost[s][d] + 1;
		if (ans > v) writeln("NA");
		else writeln(ans);
	}
}

void warshall_floyd(){
	for (int k = 0; k < V; k++)
		for (int i = 0; i < V; i++)
			for (int j = 0; j < V; j++)
				cost[i][j] = min(cost[i][j], cost[i][k] + cost[k][j]);
}
