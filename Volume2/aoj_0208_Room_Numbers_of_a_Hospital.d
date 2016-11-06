import std.stdio;

void main(){
	long n, m, k, i;
	int o = 1;
	writeln(o^^o^^o^^o);
	while (readf("%d\n", &n), n) {
		for (i = 0, m = 0; n; i++) {
			k = n % 8;
			if (k >= 4) k++;
			if (k >= 6) k++;
			n /= 8;
			m += 10^^(i) * k;
		}
		writeln(m);
	}
}
