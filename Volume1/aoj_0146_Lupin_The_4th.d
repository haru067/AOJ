import std.stdio, std.math;

struct Tsp {double v; string path;};

Tsp[1 << 15][15] dp;
Tsp ans, tmp;
int[15] dist;
int[15] num;
string[15] id;
int n, next;

void main(){
	readf("%d\n", &n);
	for (int i = 0; i < n; i++) {
		readf("%s %s %s\n", &id[i], &dist[i], &num[i]);
		dp[i][] = Tsp(9999999,"");
		dp[i][(1 << n) -1].v = 0;
		dp[i][(1 << n) -1].path = id[i];
	}

	for (int i = (1 << n) - 1; i >= 0; i--) {
			for (int j = 0; j < n; j++) {
			if (!(i & (1 << j))) continue;
			for (int k = 0; k < n; k++) {
				next = i | (1 << k);
				if (next == i) continue;
				tmp = dp[k][next];
				tmp.v += cost(j, k, num[j]);
				tmp.path = id[j] ~ " " ~ tmp.path;
				if (dp[j][i].v > tmp.v) dp[j][i] = tmp;
			}
		}
	}

	ans.v = double.max;
	for (int i = 0; i < n; i++) {
		tmp = dp[i][1 << i];
		if (ans.v > tmp.v) ans = tmp;
	}
	writeln(ans.path);
}

double cost(int from, int to, int w){
	return abs(dist[to] - dist[from])*(70.0+w*20.0) / 2000.0;
}
