import std.stdio;

void main(){
	string s;
	int a, b;
	while (readf("%s %d %d\n", &s, &a, &b)) writeln(s, " ", a+b, " ", a*200+b*300);
}
