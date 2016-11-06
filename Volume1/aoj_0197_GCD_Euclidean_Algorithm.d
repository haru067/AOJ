import std.stdio, std.algorithm;

int a, b, step;

void main(){
	while (readf("%d %d\n", &a, &b), a + b > 0) {
		step = 0;
		if (b > a) swap(a, b);
		while (b != 0) {
			a %= b;
			swap(a, b);
			step++;
		}
		writeln(a, " ", step);
	}
}
