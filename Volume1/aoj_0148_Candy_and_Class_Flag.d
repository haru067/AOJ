import std.stdio;

void main(){
	int n;
	while (readf("%d\n", &n)) {
		n = (n % 39 == 0) ? 39 : n % 39;
		writefln("3C%02d", n);
	}
}
