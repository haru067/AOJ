import std.stdio, std.string;

struct Team {
	string name;
	int win;
	int lose;
	int order;
	int opCmp(ref const Team t) const {
		if (win != t.win) return t.win - win;
		else if (lose != t.lose) return lose - t.lose;
		else return order - t.order;
	}
}

void main(){
	string[] s;
	int n, win, lose;
	while (readf("%d\n", &n), n) {
		Team[] t;
		foreach (i; 0..n) {
			s = readln.split;
			win = lose = 0;
			foreach (a; s[1..$]) {
				if (a == "0") win++;
				if (a == "1") lose++;
			}
			t ~= Team(s[0] ,win, lose, i);
		}
		t.sort;
		foreach (i; t) {
			writeln(i.name);
		}
	}
}
