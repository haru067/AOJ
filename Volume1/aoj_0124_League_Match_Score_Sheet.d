import std.stdio;

struct Team {
	string name;
	int score;
	int order;
	int opCmp(ref const Team t) const{
		return score != t.score ? (t.score - score) : (order - t.order); 
	}
}

void main(){
	string s;
	char[100] buf;
	int n, w, l, d;
	bool f = true;
	while (scanf("%d", &n), n) {
		if (f) f = false;
		else writeln();
		Team[] team;
		for (int i = 0; i < n; i++) {
			scanf("%s %d %d %d", &buf, &w, &l, &d);
			team ~= Team(buf.idup, w*3+d, i);
		}
		team.sort;
		foreach (t; team) printf("%s,%d\n", t.name.ptr,t.score);
	}
}
