import std.stdio;
import std.conv;

string s, busStop = "0123456789543210123456789";

void main(){
	int n, from, to;
	readf("%d\n", &n);
	for (int i = 0; i < n; i++) {
		readf("%d %d\n", &from, &to);
		s = "";
		for (int j = 0; j < busStop.length; j++) {
			if (busStop[j] == from + '0') s = text(from);
			else s ~= text(" ", busStop[j]);

			if (busStop[j] == to + '0' && s[0] == from + '0') break;
		}
		writeln(s);
	}
}
