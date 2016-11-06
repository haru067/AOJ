import std.stdio;

void main(){
	int n;
	ulong ans;
	while(readf("%d\n", &n), n){
		int[] t;
		t.length = n;
		ans = 0;
		for (int i = 0; i < n; i++) {
			readf("%d\n", &t[i]);
		}
		t.sort;
		for (int i = 0; i < n-1; i++) {
			ans += t[i] * (n-1-i);
		}
		writeln(ans);
	}
}
