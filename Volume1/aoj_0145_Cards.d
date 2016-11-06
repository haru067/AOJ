import std.stdio;
import std.algorithm;

const long INF = (1 << 31) - 1;
long dp[100][100];
long[100] a, b;
void main(){
	int n;
	readf("%d\n", &n);
	for (int i = 0; i < n; i++) {
		readf("%d %d\n", &a[i], &b[i]);
		dp[i][] = INF;
		dp[i][i] = 0;
	}
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < n-i; j++) {
			for (int k = j; k < j+i; k++) {
				dp[j][j+i] = min(dp[j][j+i], dp[j][k]+dp[k+1][j+i]+a[j]*b[k]*a[k+1]*b[j+i]);
			}
		}
	}
	writeln(dp[0][n-1]);
}
