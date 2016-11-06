import std.stdio;
import std.string;

int[] dx = [-1, 0, 1, -2, 2, -2, 2, -2, 2, -1, 0, 1];
int[] dy = [2, 2, 2, 1, 1, 0, 0, -1, -1, -2, -2, -2];
int[] sdx = [-1, 0, 1, -1, 0, 1, -1, 0, 1];
int[] sdy = [1, 1, 1, 0, 0, 0, -1, -1, -1];
int[10] sx;
int[10] sy;
int n, tx, ty;

void main(){
	int x, y;
	string s;
	while (readf("%d %d\n", &x, &y), x != 0 || y != 0) {
		readf("%d\n", &n);
		s = chomp(readln());
		for (int i = 0; i < n; i++) {
			sx[i] = s[i*4] - '0';
			sy[i] = s[i*4+2] - '0';
		}
		if (solve(x, y, 0)) writeln("OK");
		else writeln("NA");
	}
}

bool solve(int x, int y, int depth){
	if (depth >= n) return true;
	for (int i = 0; i < dx.length; i++) {
		for (int j = 0; j < sdx.length; j++) {
			tx = x + dx[i];
			ty = y + dy[i];
			if (tx == sx[depth]+sdx[j] && ty == sy[depth]+sdy[j]) {
				if( tx >= 0 && tx < 10 && ty >= 0 && ty < 10 && solve(tx, ty, depth+1)) return true;
			}
		}
	}
	return false;
}
