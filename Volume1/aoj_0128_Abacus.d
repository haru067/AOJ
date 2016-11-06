import std.stdio;
import std.string;

string raw = "**=*****";
char[9][9] ch;

void main(){
	bool f = true;
	string s;
	while ((s = chomp(readln())), s) {
		if (f) f = false;
		else writeln();

		foreach (i; 0..5) set(0,i);
		for (int i = 0; i < s.length; i++) set(s[i] - '0', i+5-cast(int)s.length);
		for (int y = 0; y < 8; y++) {
			for (int x = 0; x < 5; x++) {
				write(ch[y][x]);
			}
			writeln();
		}
	}
}

void set(int n, int p){
	foreach (i; 0..8) ch[i][p] = raw[i];
	if (n < 5) {
		ch[1][p] = ' ';
	}else {
		ch[0][p] = ' ';
		n -= 5;
	}
	ch[n+3][p] = ' ';
}
