import std.stdio;
import std.string;
import std.algorithm;

string[] s;
int[500][500] memo;
int h, w, ans;

void main(){
	while (readf("%d %d\n", &h, &w), h != 0 || w != 0) {
		s = [];
		for (int i = 0; i < h; i++) {
			s ~= chomp(readln());
		}
		for (int y = 0; y < h; y++) {
			for (int x = w-1; x >= 0; x--) {
				memo[y][x] = calcWidth(x, y);
			}
		}
		ans = 0;
		for (int y = 0; y < h; y++) {
			for (int x = 0; x < w; x++) {
				ans = max(ans, solve(x, y));
			}
		}
		writeln(ans);
	}
}

int calcWidth(int x, int y){
	int result = 1;
	if(s[y][x] == '*') return 0;
	if(x+1 < w) result += memo[y][x+1]; 
	return result;
}

int solve(int x, int y){
	int result = 0;
	int minWidth = 9999;
	for (int i = y; i < h; i++) {
		minWidth = min(minWidth, memo[i][x]);
		if(minWidth == 0) break;
		result = max(result, minWidth * (i-y+1));
	}
	return result;
}
