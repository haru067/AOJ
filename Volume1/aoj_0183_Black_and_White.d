import std.stdio,std.string;

void main(){
	string s, a;
	while (s = readln.chomp, s != "0") {
		foreach (i; 1..3) s ~= readln.chomp;
		a = "NA";
		foreach (w; ["www", "bbb"]) {
			foreach (i; 0..3) {
				if (s[i*3..i*3+3] == w) a = [w[0]];
				if ([s[i],s[i+3],s[i+6]] == w) a = [w[0]];
			}
			if ([s[0],s[4],s[8]] == w) a = [w[0]];
			if ([s[2],s[4],s[6]] == w) a = [w[0]];
		}
		writeln(a);
	}
}
