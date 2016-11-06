import std.stdio;
import std.math;

void main(){
	int n, id, ans;
	double h, w, best, diff;
	while (readf("%d\n", &n), n) {
		best = 99999999;
		foreach (i; 0..n) {
			readf("%d %s %s\n", &id, &h, &w);
			diff = abs(22.0-w*100*100/(h*h));
			if (diff < best || (diff == best && ans > id)) {
				ans = id;
				best = diff;
			}
		}
		writeln(ans);
	}
}
