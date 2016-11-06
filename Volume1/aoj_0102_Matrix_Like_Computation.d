import std.stdio;
import std.conv;
import std.string: split;

void main(){
	int n, sum;
	while (1) {
		readf("%d\n", &n);
		if(n == 0) break;
		int[100][100] table;
		// initialize
		for (int i = 0; i <= n; i++) {
			table[i][n] = table[n][i] = 0;
		}
		// calc
		for (int y = 0; y < n; y++) {
			string[] str = split(readln());
			for (int x = 0; x < n; x++) {
				int num = to!int(str[x]); 
				table[y][x] = num;
				table[n][x] += num;
				table[y][n] += num;
				table[n][n] += num;
			}
		}
		// print
		for (int y = 0; y <= n; y++) {
			for (int x = 0; x <= n; x++) {
				writef("%5d", table[y][x]);
			}
			writeln();
		}

	}
}
