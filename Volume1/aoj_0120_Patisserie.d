import std.stdio;
import std.math;
import std.string;
import std.conv;
import std.algorithm;

ulong n;
double length;
double[13] r;
double[13][13] cost;
double[1 << 13][13] memo;

void main(){
	string s;
	while (s = readln(), s) {
		string[] tmp = split(s);
		length = to!int(tmp[0]);
		for (int i = 1; i < tmp.length; i++) {
			r[i-1] = to!int(tmp[i]);
		}
		n = tmp.length- 1;
		for (int i = 0; i < n; i++) {
			memo[i] = -1;
			cost[i][n] = cost[n][i] = r[i];
			for (int j = 0; j < n; j++) {
				cost[i][j] = distance(r[i], r[j]);
			}
		}
		memo[n] = -1;
		n++;
		double ans = tsp(0,1);
		if (length < ans) writeln("NA");
		else writeln("OK");
	}
}

double distance(double r1, double r2){
	return 2.0*sqrt(r1*r2);
}

double tsp(int v, int b){
	if (memo[v][b] != -1) return memo[v][b];
	if (b == (1 << n) -1) return cost[v][0];

	double res = double.max;
	for (int w = 0; w < n; w++) {
		if (!(b & (1 << w))) res = min(res, cost[v][w] + tsp(w, b | (1 << w)));
	}
	return memo[v][b] = res;
}
