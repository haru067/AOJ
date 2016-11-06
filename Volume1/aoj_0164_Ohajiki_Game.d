import std.stdio, std.string;

void main(){
	string[] s;
	int n;
	while (readf("%d\n", &n), n) {
		int[] a;
		s = split(readln());
		foreach (i; s) a ~= i[0] - '0';
		n = 32;
		for (int i = 0; n > 0; i++) {
			if (i%2 == 0) n -= (n-1)%5;
			else n -= a[i/2 % $];
			writeln(n > 0 ? n : 0);
		}
	}
}
