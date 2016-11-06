import std.stdio, std.math;

double s, s1, s2, a, t;
int n, m;

void main(){
	while (readf("%d\n", &n), n) {
		s1 = calc(n-1);
		readf("%d\n", &m);
		s2 = calc(m-1);
		if (abs(s1-s2) < 1e-10) writeln(0);
		else writeln(s1 > s2 ? 1 : 2);
	}
}

double calc(int n){
	s = t = 0;
	foreach (i; 0..n) {
		readf("%s\n", &a);
		t += a;
		s += sin(a/180*PI);
	}
	s += sin((360-t)/180*PI);
	return s;
}
