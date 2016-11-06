import std.stdio;
import std.math;

const double R = 6378.1;

double a, b, c, d, ans;

void main(){
	while (readf("%s %s %s %s\n", &a, &b, &c, &d), [a, b, c, d] != [-1, -1, -1, -1]) {
		a *= PI / 180; 
		b *= PI / 180; 
		c *= PI / 180; 
		d *= PI / 180; 
		ans = R * acos(sin(a)*sin(c) + cos(a)*cos(c)*cos(b-d));
		writeln(lround(ans));
	}
}
