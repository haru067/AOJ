import std.stdio;

const int MAX = 1000001;
bool[MAX] p;

void main(){
	p[] = true;
	foreach (i; 2..MAX) if (p[i]) for (int j = 2*i; j < MAX; j+=i) p[j] = false;
	int a, n;
	while (readf("%d\n", &n), n) {
		a = 0;
		foreach (i; 2..(n/2+1)) {
			if (p[i] && p[n-i]) a++;
		}
		writeln(a);
	}
}
