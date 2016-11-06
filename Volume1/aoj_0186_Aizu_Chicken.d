import std.stdio, std.string, std.conv;

void main(){
	string str;
	string[] s;
	int q1, b, c1, c2, q2, a1, a2, t;
	while ((str = readln()) != "0\n") {
		s = split(str);
		q1 = s[0].to!int;
		b = s[1].to!int;
		c1 = s[2].to!int;
		c2 = s[3].to!int;
		q2 = s[4].to!int;
		foreach (i; 0..q2) {
			a1 = q2 - i;
			t = b - (a1 * c1);
			if (t < 0) continue;
			a2 = t / c2; 
			if (a1 + a2 >= q1) break;
		}
		if (a1 == 0) writeln("NA");
		else writeln(a1, " ", a2);
	}
}
