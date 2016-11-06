import std.stdio;

int[30] food;

void main(){
	int n, x;
	while (readf("%d %d\n", &n, &x), n|x) {
		foreach (i; 0..n) readf("%d\n", &food[i]);
		writeln(n);
		writeln(x);
		writeln(food);
	}
}
