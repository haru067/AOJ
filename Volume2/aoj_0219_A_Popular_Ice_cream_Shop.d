import std.stdio;

void main(){
	int n, m;
	string[10] ans;
	while (scanf("%d", &n), n) {
		ans = "";
		foreach (i; 0..n) {
			scanf("%d", &m);
			ans[m] ~= '*';
		}
		foreach (i; 0..10) {
			if (!ans[i].length) ans[i] = "-";
			writeln(ans[i]);
		}
	}
}
