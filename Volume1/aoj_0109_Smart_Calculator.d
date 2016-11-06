import std.stdio;
import std.array;
import std.string;
import std.conv;

string s;

void main(){
	int n;
	readf("%d\n", &n);
	for (int i = 0; i < n; i++) {
		s = chomp(readln());
		writeln(expression());
	}
}

int expression(){
	int result = term();
	while (1) {
		if (s[0] == '+') {
			s.popFront();
			result += term();
		}else if (s[0] == '-') {
			s.popFront();
			result -= term();
		}else {
			break;
		}
	}
	return result;
}

int term(){
	int result = factor();
	while (1) {
		if (s[0] == '*') {
			s.popFront();
			result *= factor();
		}else if (s[0] == '/') {
			s.popFront();
			result /= factor();
		}else {
			break;
		}
	}
	return result;
}

int factor(){
	int result;
	if (s[0] == '(') {
		s.popFront();
		result = expression();
		s.popFront();
	}else if (s[0] == '-') {
		s.popFront();
		result = -factor();
	}else {
		int i;
		for (i = 0; s[i] >= '0' && s[i] <= '9'; i++) {
		}
		result = to!int(s[0..i]);
		s = s[i..$];
	}
	return result;
}
