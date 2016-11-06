import std.stdio, std.typecons, std.math;
alias Tuple!(double, "v", string, "path") Tsp; 

Tsp[1 << 15][15] memo;
Tsp ans, tmp;
int[15] dist;
int[15] num;
string[15] id;
int n;

void main(){
	readf("%d\n", &n);
	foreach (i; 0..n) {
		foreach (ref j; memo[i]) j.v = -1;
		readf("%s %s %s\n", &id[i], &dist[i], &num[i]);
	}

	ans.v = double.max;
	foreach (i; 0..n) {
		tmp = tsp(i, 1 << i, num[i]);
		if (ans.v > tmp.v) ans = tmp;
	}
	writeln(ans.path);
}

Tsp tsp(int p, int b, int w){
	if (memo[p][b].v != -1) return memo[p][b];
	if (b == (1 << n) -1) return Tsp(0, id[p]);

	Tsp res;
	res.v = double.max;
	foreach (i; 0..n) {
		if (b & (1 << i)) continue;
		tmp = tsp(i, b | (1 << i), w+num[p]);
		tmp.v += cost(p, i, w+num[p]);
		if (res.v > tmp.v) {
			res.v = tmp.v;
			res.path = id[p] ~ " " ~ tmp.path;
		}
	}
	memo[p][b] = res;
	return res;
}

double cost(int from, int to, int w){
	return abs(dist[to] - dist[from])*(70.0+w*20.0) / 2000.0;
}
