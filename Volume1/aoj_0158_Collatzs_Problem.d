import std.stdio;

void main(){
	int n, i;
	while (readf("%d\n", &n), n) {
		for (i = 0; n != 1; i++) n = n%2 ? n*3+1 : n/2;
		writeln(i);
	}
}
