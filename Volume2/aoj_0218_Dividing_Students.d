import std.stdio;

void main(){
	char ans;
	int n, m, e, j;
	while (readf("%d\n", &n), n) {
		foreach (i; 0..n) {
			readf("%d %d %d\n", &m, &e, &j);
			if (m == 100 || e == 100 || j == 100) ans = 'A';
			else if (m+e >= 90*2) ans = 'A';
			else if (m+e+j >= 80*3) ans = 'A';
			else if (m+e+j >= 70*3) ans = 'B';
			else if (m+e+j >= 50*3 && (m >= 80 || e >= 80)) ans = 'B';
			else ans = 'C';
			writeln(ans);
		}
	}
}
