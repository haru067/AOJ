import std.stdio;
import std.string;
import std.array;

string[9] s;

void main(){
	int n;
	readf("%d\n", &n);
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < 9; j++) {
			s[j] = replace(chomp(readln()), " ", "");
		}
		// solve
		for (int y = 0; y < 9; y++) {
			for (int x = 0; x < 9; x++) {
				write(check(x,y), s[y][x]);
			}
			writeln();
		}
		if(i+1 != n) writeln();
	}
}

char check(int x, int y){
	int bx = x/3*3;
	int by = y/3*3;
	for (int i = 0; i < 9; i++) {
		if (y != i && s[y][x] == s[i][x]) return '*';
		if (x != i && s[y][x] == s[y][i]) return '*';
		if (x != bx+i%3 && y != by+i+3 && s[y][x] == s[by+i/3][bx+i%3]) return '*';
	}
	return ' ';
}
