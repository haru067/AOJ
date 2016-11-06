import std.stdio;

void main(){
	int a, b, s;
	while (readf("%d %d\n", &a, &b), (s = a + b) > 0) {
		char ch = 'A';
		foreach (i; 1..5) {
			readf("%d %d\n", &a, &b);
			if (s < a + b) {
				s = a + b;
				ch = cast(char)('A' + i);
			}
		}
		writeln(ch, " ", s);
	}
}
