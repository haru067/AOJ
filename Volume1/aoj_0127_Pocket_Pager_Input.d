import std.stdio;
import std.string;

char[10][10] map;
int x, y;

void main(){
	string s, ans;
	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 5; j++) {
			map[i][j] = cast(char)('a' + j + i*5);
		}
	}
	map[5][0..5] = ['z', '.', '?', '!', ' '];
	while ((s = chomp(readln())), s) {
		if (s.length%2 != 0) {
			writeln("NA");
			continue;
		}

		ans = "";
		for (int i = 0; i < s.length; i+=2) {
			x = s[i] - '1';
			y = s[i+1] - '1';
			if (x < 0 || x > 5 || y < 0 || y > 4) {
				ans = "NA";
				break;
			}else {
				ans ~= map[x][y];
			}
		}
		writeln(ans);
	}
}
