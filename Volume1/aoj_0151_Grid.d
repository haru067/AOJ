import std.stdio;
import std.string;
import std.algorithm;

string[255] s;
int[] dx = [1, 0, 1, -1];
int[] dy = [0, 1, 1 ,1];

void main(){
	int n, ans, tmp;
	int px, py;
	while (readf("%d\n", &n), n) {
		ans = 0;
		foreach (i; 0..n) s[i] = chomp(readln());

		foreach (y; 0..n) {
			foreach (x; 0..n) {
				foreach (i; 0..4) {
					px = x;
					py= y;
					tmp = 0;
					while (px >= 0 && px < n && py >= 0 && py < n && s[py][px] == '1') {
						px += dx[i];
						py += dy[i]; 
						tmp++;
					}
					ans = max(tmp, ans);
				}
			}
		}
		writeln(ans);
	}
}
