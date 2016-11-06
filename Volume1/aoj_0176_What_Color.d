import std.stdio;

int[] r = [0, 0, 0, 0, 255, 255, 255, 255];
int[] g = [0, 0, 255, 255, 0, 0, 255, 255];
int[] b = [0, 255, 0, 255, 0, 255, 0, 255];
string[] name = ["black", "blue", "lime", "aqua", "red", "fuchsia", "yellow", "white"];

void main(){
	string s;
	int ans, n, t; 
	while (s = readln(), s != "0\n") {
		n = int.max;
		foreach (i; 0..8) {
			t = (r[i] - toInt(s[1..3]))^^2 + (g[i] - toInt(s[3..5]))^^2 + (b[i] - toInt(s[5..7]))^^2;
			if (n > t) {
				n = t;
				ans = i;
			}
		}
		writeln(name[ans]);
	}
}

int toInt(string str){
	int x, y;
	x = str[0] > '9' ? str[0] - 'a' + 10 : str[0] - '0';
	y = str[1] > '9' ? str[1] - 'a' + 10 : str[1] - '0';
	return x*16+y;
}
