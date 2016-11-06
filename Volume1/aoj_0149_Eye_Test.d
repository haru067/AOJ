import std.stdio;

int[4] l, r;

void main(){
	double a, b;
	l[] = r[] = 0;
	while (readf("%s %s\n", &a, &b)) {
		set(l, a);
		set(r, b);
	}
	foreach (i; 0..4) writeln(l[i], " ", r[i]);
}

void set(int[] list, double a){
	if (a < 0.2) list[3]++;
	else if (a < 0.6) list[2]++;
	else if (a < 1.1) list[1]++;
	else list[0]++;
}
