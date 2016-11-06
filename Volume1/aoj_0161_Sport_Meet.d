import std.stdio;

void main(){
	int n, c, t;
	int[4] m, s;
	while (readf("%d\n", &n), n) {
		int[int] time;
		foreach (i; 0..n) {
			readf("%d %d %d %d %d %d %d %d %d\n", &c, &m[0], &s[0], &m[1], &s[1], &m[2], &s[2], &m[3], &s[3]);
			t = 0;
			foreach (j; 0..4) t += m[j]*60+s[j];
			time[t] = c;
		}
		auto list = time.keys.sort;
		writeln(time[list[0]]);
		writeln(time[list[1]]);
		writeln(time[list[$-2]]);
	}
}
