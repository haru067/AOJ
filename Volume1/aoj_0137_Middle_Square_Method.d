import std.stdio;
import std.string;
import std.conv;

void main(){
	int n, m;
	string s;
	readf("%d\n", &n);
	for (int i = 1; i <= n; i++) {
		writeln("Case ", i, ":");
		readf("%d\n", &m);
		foreach (j; 0..10) {
			s = format("%08d", m*m);
			m = to!int(s[2..6]);
			writeln(m);
		}
	}
}
