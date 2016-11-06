import std.stdio;
import std.array;
import std.conv;

void main(){
	string[] str;
	int n, min;
	int[1000] count;
	while (readf("%d\n", &n) && n) {
		int[] s;
		str = split(readln());
		count[] = 0;
		foreach (i; str) {
			s ~= to!int(i);
			count[s.back]++;
		}
		for (min = 0; true; min++) {
			int[] c;
			for (int i = 0; i < n; i++) {
				c ~= count[s[i]];
			}
			if (s == c) {
				writeln(min);
				write(s.front); s.popFront();
				foreach (i; s) {
					write(" ", i);
				}
				writeln();
				break;
			}else {
				s = c;
				count[] = 0;
				foreach (i; s) {
					count[i]++;
				}
			}
		}
	}
}
