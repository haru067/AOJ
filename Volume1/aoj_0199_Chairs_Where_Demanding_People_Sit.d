import std.stdio, std.algorithm;

char[111] chair; 
int n, m;

void main(){
	char ch;
	while (readf("%d %d\n", &n, &m), n || m) {
		chair[] = '#';
		foreach (i; 0..m) {
			readf("%c\n", &ch);
			if (ch == 'A') A();
			if (ch == 'B') B();
			if (ch == 'C') C();
			if (ch == 'D') D();
		}
		writeln(chair[0..n]);
	}
}

void A(){
	foreach (i; 0..n) {
		if (chair[i] == '#') {
			chair[i] = 'A';
			return;
		}
	}
}

void B(){
	foreach_reverse (i; 0..n) {
		if (chair[i] == '#' && (i == 0 || chair[i-1] != 'A') && (i == n-1 || chair[i+1] != 'A')) {
			chair[i] = 'B';
			return;
		}
	}
	foreach (i; 0..n) {
		if (chair[i] == '#') {
			chair[i] = 'B';
			return;
		}
	}
}

void C(){
	foreach (i; 0..n) {
		if (i+1 < n && chair[i] != '#' && chair[i+1] == '#') {
			chair[i+1] = 'C';
			return;
		}
		if (i-1 >= 0 && chair[i] != '#' && chair[i-1] == '#') {
			chair[i-1] = 'C';
			return;
		}
	}
	chair[n/2] = 'C';
}

void D(){
	int max = -1;
	int id = 0;
	foreach (i; 0..n) {
		if (chair[i] == '#' && distance(i) > max) {
			max = distance(i);
			id = i;
		}
	}
	chair[id] = 'D';
}

int distance(int p){
	int f, b;
	f = b = 0;
	foreach (i; p..n) {
		if (chair[i] != '#') break;
		b++;
	}
	if (b == n-p) b = 9999;
	foreach_reverse (i; 0..p+1) {
		if (chair[i] != '#') break;
		f++;
	}
	if (f == p+1) f = 9999;
	return min(b, f);
}
