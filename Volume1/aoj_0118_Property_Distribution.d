import std.stdio;
import std.string;

string[101] s;
int h, w, ans;

void main(){
	while (readf("%d %d\n", &h, &w), h != 0 || w != 0) {
		ans = 0;
		for (int i = 0; i < h; i++) {
			s[i] = chomp(readln());
		}
		for (int y = 0; y < h; y++) {
			for (int x = 0; x < w; x++) {
				if (s[y][x] != ' ') {
					ans++;
					scan(s[y][x], x, y);
				}
			}
		}
		writeln(ans);
	}
}

void scan(char fruit, int x, int y){
	s[y] = s[y][0..x] ~ ' ' ~ s[y][x+1..$];
	if(x+1 < w && s[y][x+1] == fruit) scan(fruit, x+1, y);
	if(x-1 >= 0 && s[y][x-1] == fruit) scan(fruit, x-1, y);
	if(y+1 < h && s[y+1][x] == fruit) scan(fruit, x, y+1);
	if(y-1 >= 0 && s[y-1][x] == fruit) scan(fruit, x, y-1);
}
