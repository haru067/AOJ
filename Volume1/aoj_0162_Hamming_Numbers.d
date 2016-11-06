import std.stdio;

void main(){
	int m, n, ans;
	while (readf("%d", &m), m) {
		readf(" %d\n", &n);
		ans = 0;
		foreach (i; m..n+1) ans += hamming(i);
		writeln(ans);
	}
}

int hamming(int n) {
	if (n%2 == 0) return hamming(n/2);
	else if (n%3 == 0) return hamming(n/3);
	else if (n%5 == 0) return hamming(n/5);
	else return n == 1 ? 1 : 0;
}
