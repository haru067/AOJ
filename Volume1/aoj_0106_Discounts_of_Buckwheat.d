import std.stdio;
import std.algorithm;

void main(){
	int W;
	int dp[5000+1] = 99999999;
	int[] w = [200, 300, 500, 1000, 1200, 1500];
	int[] v = [380, 550, 850, 1520, 1870, 2244];
	dp[0] = 0;
	for (int i = 0; i < 6; i++) {
		for (int j = 0; j+w[i] <= 5000; j++) {
			dp[j+w[i]] = min(dp[j+w[i]], dp[j] + v[i]);
		}
	}
	while (readf("%d\n", &W) && W) {
		writeln(dp[W]);
	}
}
