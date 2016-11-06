import std.stdio, std.algorithm;

int[1000][1000] memo;
int[200] h, r;
int n, m;

void main(){
	while (readf("%d\n", &n), n) {
		foreach (i; 0..n) readf("%d %d\n", &h[i], &r[i]);
		readf("%d\n", &m);
		foreach (i; 0..m) readf("%d %d\n", &h[n+i], &r[n+i]);
		n = n + m;
		foreach (i; 0..1000) memo[i][] = -1;
		writeln(solve(999, 999));
	}
}

int solve(int xh, int xr){
	int res = 0;
	if (memo[xh][xr] != -1) return memo[xh][xr];
	foreach (i; 0..n)
		if (h[i] < xh && r[i] < xr)
			res = max(res, solve(h[i], r[i])+1);

	return memo[xh][xr] = res;
}
