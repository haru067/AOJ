import std.stdio, std.conv;

void main(){
	int l, m, n;
	string ans;
	while (readf("%d\n", &l), l) {
		ans = "NA";
		foreach (i; 1..13) {
			readf("%d %d\n", &m, &n);
			l -= m-n;
			if (l <= 0 && ans == "NA") ans = text(i);
		}
		writeln(ans);
	}
}
