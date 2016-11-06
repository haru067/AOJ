import std.stdio, std.conv;

void main(){
	int n;
	while (readf("%d\n", &n), n != -1) {
		string s;
		while (n > 0) {
			s = text(n % 4) ~ s;
			n /= 4;
		}
		if (!s) s = "0";
		writeln(s);
	}
}
