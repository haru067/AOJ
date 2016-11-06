import std.stdio;
import std.string: replace, chomp;
import std.conv;
import std.array;
import std.algorithm;

void main(){
	string s;
	while (s = chomp(readln()), s) {
		int ans = solve(s);
		if (ans == -1) writeln("NA");
		else writeln(ans);
	}
}

int solve(string s){
	int p, e;
	string a, b, c;
	// parse
	for (int i = 0; i < s.length; i++) {
		if (s[i] == '+') p = i;
		else if (s[i] == '=') e = i;
	}
	// answer
	for (int i = 0; i < 10; i++) {
		a = replace(s[0..p], "X", to!string(i));
		b = replace(s[p+1..e], "X", to!string(i));
		c = replace(s[e+1..$], "X", to!string(i));
		if(i == 0 && !(zero(a) && zero(b) && zero(c))) continue;
		if (add(a, b) == c) return i;
	}
	return -1;
}

// able to put zero to X?
bool zero(string s){
	return (s[0] != '0') || (s[0] == '0' && s.length == 1);
}

string add(string a, string b){
	int x, y, z;
	int hi = 0;
	string c;
	int len = cast(int)max(a.length, b.length);
	for (int i = 1; i <= len+hi; i++) {
		x = (a.length < i) ? 0 : a[$-i] - '0';
		y = (b.length < i) ? 0 : b[$-i] - '0';
		z = x + y + hi;
		if (z > 9) {
			z -= 10;
			hi = 1;
		}else {
			hi = 0;
		}
		c =  cast(char)(z + '0') ~ c;
	}
	return c;
}

