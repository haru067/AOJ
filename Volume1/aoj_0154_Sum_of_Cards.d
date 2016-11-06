import std.stdio;

int[10000][7] memo;
int[7] a, b;
int m, g, n;

void main(){
	while (readf("%d\n", &m), m) {
		foreach (i; 0..m) readf("%d %d\n", &a[i], &b[i]);
		readf("%d\n", &g);
		foreach (i; 0..g) {
			foreach (j; 0..m) memo[j][] = -1;
			readf("%d\n", &n);
			writeln(solve(0, 0));
		}
	}
}

int solve(int sum, int p){
	if (m == p) return (sum == n ? 1:0);
	if (memo[p][sum] != -1) return memo[p][sum];
	int res = 0;
	foreach (i; 0..b[p]+1) {
		res += solve(sum+a[p]*i, p+1);
	}
	return memo[p][sum] = res;
}
