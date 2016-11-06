import std.stdio;
import std.algorithm;

const int MAX = 1000001;
bool prime[MAX];
int num[MAX];

void main(){
	int n, p, m, ans, upper, lower, x;
	prime[] = true;
	prime[0] = prime[1] = false;
	x = 0;
	foreach (i; 0..MAX) {
		if (prime[i]) {
			x++;
			for (int j = i+i; j < MAX; j+=i) prime[j] = false;
		}
		num[i] = x;
	}

	while (readf("%d\n", &n), n) {
		ans = -n;
		foreach (i; 0..n) {
			readf("%d %d\n", &p, &m);
			upper = min(p+m, 1000000);
			lower = max(p-m, 1) - 1;
			x = num[upper] - num[lower];
			ans += x;
		}
		writeln(ans);
	}
}
