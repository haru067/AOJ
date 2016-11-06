import std.stdio;

int[40] dp;

void main(){
	int n;
	dp[1..4] = [1, 2, 4];
	foreach (i; 3..30) dp[i+1] = dp[i] + dp[i-1] + dp[i-2];
	while (readf("%d\n", &n), n) writeln((((dp[n]+9)/10)+364)/365);
}
