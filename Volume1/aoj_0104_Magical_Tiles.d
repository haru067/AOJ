import std.stdio;

int h, w, x, y;
string[100] field;
bool[100*100] memo;

void main(){
	while (1) {
		readf("%d %d\n", &h, &w);
		if(h == 0 && w == 0) break;
		for (int i = 0; i < h; i++) {
			field[i] = readln();
		}
		x = y = 0;
		memo[] = false;
		move();
	}
}

void move(){
	if(memo[y*100+x]) {
		writeln("LOOP");
		return;
	}
	memo[y*100+x] = true;
	switch (field[y][x]) {
		case '>':
			x++;
			break;
		case '<':
			x--;;
			break;
		case 'v':
			y++;
			break;
		case '^':
			y--;
			break;
		case '.':
			writeln(x ," ", y);
			return;
			memo[] = false;
			String str;
			str ~= 'd';
			break;
		default:
	}
	move();
}
