import std.stdio;
import std.string;

char[8][8] ch;

void main(){
	foreach (i; 0..8) ch[i] = chomp(readln());
	for (int i = 1; i <= 3; i++) {
		rotate();
		writeln(i*90);
		print();
	}
}

void rotate(){
	char[8][8] tmp;
	foreach (i; 0..8)
		foreach (j; 0..8)
			tmp[i][j] = ch[7-j][i];
	foreach (i; 0..8)
		foreach (j; 0..8)
			ch[i][j] = tmp[i][j];
}

void print(){
	foreach (i; 0..8) {
		foreach (j; 0..8) {
			write(ch[i][j]);
		}
		writeln();
	}
}
