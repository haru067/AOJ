import std.stdio;

int[111] a;

void main(){
	int n, ans, l, r, m, x;
	while (readf("%d\n", &n), n) {
		foreach (i; 0..n) readf("%d\n", &a[i]);
		readf("%d\n", &x);
		ans = l = 0;
		r = n-1;
		// binary search
		while (l <= r) {
			m = (l + r) / 2;
			ans++;
			if (a[m] == x) break;
			if (a[m] < x) l = m+1;
			else r = m-1;
		}
		writeln(ans);
	}
}
