import std.stdio;

void main(){
	ulong n, a, sum = 0;
	readf("%d\n", &n);
	for (int i = 0; i < n; i++) {
		readf("%d\n", &a);
		sum += a;
	}
	writeln(sum / n);
}
