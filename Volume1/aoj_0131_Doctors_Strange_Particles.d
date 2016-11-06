import std.stdio;
import std.string;
import std.array;

int[] dx = [0, -1, 0, 1, 0];
int[] dy = [-1, 0, 0, 0, 1];
string str;
string[10] s;
char[10][10] ch;
int[10][10] ans;

void main(){
	int n;
	readf("%d\n", &n);
	for (int i = 0; i < n; i++) {
		foreach (j; 0..10) s[j] = replace(chomp(readln()), " ", "");
		// try all patterns in 1st line
		for (int j = 0; j  < 2^^10 ; j++) {
			str = format("%010b", j);
			foreach (k; 0..10) {
				ch[k] = s[k];
				ans[k] = 0;
			}
			if (solve()) break;
		}
		// print
		foreach (y; 0..10) {
			write(ans[y][0]);
			foreach (x; 1..10) {
				write(" ", ans[y][x]);
			}
			writeln();
		}
	}
}

void toggle(int px, int py){
	int x, y;
	foreach (i; 0..5) {
		x = dx[i]+px;
		y = dy[i]+py;
		if (x < 0 || x > 9 || y < 0 || y > 9) continue;

		if(ch[y][x] == '0') ch[y][x] = '1';
		else ch[y][x] = '0';
	}
}

bool solve(){
	foreach (y; 0..10) {
		foreach (x; 0..10) {
			if ((y == 0 && str[x] == '1') || (y > 0 && ch[y-1][x] == '1')) {
				toggle(x, y);
				ans[y][x] = 1;
			}
		}
	}
	// check
	foreach (y; 0..10)
		foreach (x; 0..10)
		if (ch[y][x] == '1') return false;
	return true;
}
