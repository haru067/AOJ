import std.stdio;
import std.array;
import std.string;

string s, ans;

void main(){
	int n;
	readf("%d\n", &n);
	for (int i = 0; i < n; i++) {
		s = chomp(readln());
		if (s.length < 6) ans = "NA";
		else if (s[0..2] == ">'" && isA()) ans ="A";
		else if (s[0..2] == ">^" && isB()) ans = "B";
		else ans = "NA";
		writeln(ans);
	}
}

bool isA(){
	int pos = -1;
	for (int i = 0; i < s.length; i++) {
		if (s[i] == '#') {
			pos = i;
			break;
		}
	}
	return s[$-1] == '~' && pos != -1 && s[2..pos] == s[pos+1..$-1];
}

bool isB(){
	for (int i = 2; i < s.length-2; i+=2) {
		if (s[i..i+2] != "Q=") return false;
	}
	return s[$-2..$] == "~~";
}
