import std.stdio, std.algorithm;

int[100] a;

void main(){
	int n, ans;
	while (readf("%d\n", &n), n) {
		foreach (i; 0..n) readf("%d\n", &a[i]);
		ans = 0;
		foreach (i; 0..n) {
			for (int j = 1; j < n-i; j++) {
				if (a[j-1] > a[j]) {
					ans++;
					swap(a[j-1], a[j]);
				}
			}
		}
		writeln(ans);
	}
}
