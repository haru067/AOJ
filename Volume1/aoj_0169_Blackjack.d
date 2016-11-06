import std.stdio, std.string, std.algorithm, std.conv;

int[] a; 

void main(){
	string[] s;
	while (1) {
		s = split(readln());
		a = [];
		foreach (i; s) a ~= to!int(i);
		if (a[0] == 0) break;
		writeln(solve(0, 0));
	}
}

int solve(int p, int n){
	if (n > 21) return 0;
	if (p >= a.length) return n;
	if (a[p] == 1) return max(solve(p+1, n+1), solve(p+1, n+11));
	if (a[p] > 10) a[p] = 10; 
	return solve(p+1, n+a[p]);
}

