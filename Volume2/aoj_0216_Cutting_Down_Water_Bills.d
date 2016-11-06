import std.stdio;

void main(){
	int n, ans;
	while (readf("%d\n", &n), n != -1) {
		ans = 1150;
		if (n <= 10) {}
		else if (n < 20) ans += 125 * (n-10);
		else if (n < 30) ans += 1250 + 140 * (n-20);
		else ans += 1250 + 1400 + 160 * (n-30);
		writeln(4280 - ans);
	}
}
