import std.stdio;

const int a = 2;
char[110][110] ch;
int d, n, px, py;

void main(){
	bool f = true;
	readf("%d\n", &d);
	for (int i = 0; i < d; i++) {
		if (f) f = false;
		else writeln();

		readf("%d\n", &n);
		foreach (y; 0..110) ch[y][] = ' ';
		ch[a-2][a] = ch[a][n+1+a] = ch[n+1+a][n-1+a] = '#';

		px = 0;
		py = n;
		draw(0, -1);
		foreach (y; 0..n) {
			foreach (x; 0..n) {
				write(ch[y+a][x+a]);
			}
			writeln();
		}
	}
}

void draw(int dx, int dy){
	int x, y;
	bool f = false;
	while (1) {
		x = px + dx;
		y = py + dy;
		if (ch[y+dx+a][x-dy+a] == '#' || ch[y-dx+a][x+dy+a] == '#' || ch[y+dy+a][x+dx+a] == '#') break;
		px = x;
		py = y;
		ch[y+a][x+a] = '#';
		f = true;
	}
	if (f) draw(-dy, dx);
}
