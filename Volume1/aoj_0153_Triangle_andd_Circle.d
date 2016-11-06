import std.stdio;
import std.math;

double[4] x, y;
double r;

void main(){
	while (readf("%s %s\n", &x[0], &y[0]), x[0] && y[0]) {
		readf("%s %s\n", &x[1], &y[1]);
		readf("%s %s\n", &x[2], &y[2]);
		readf("%s %s\n", &x[3], &y[3]);
		readf("%s\n", &r);
		int sum = inCircle(x[0], y[0]) + inCircle(x[1], y[1]) + inCircle(x[2], y[2]);
		if (sum == 3) {
			writeln('b');
		}else if (sum == -3) {
			if (len(0, 1) >= r && len(1, 2) >= r && len(2, 0) >= r && inTriangle(x[3], y[3])) {
				writeln('a');
			}else {
				writeln('d');
			}
		}else {
			writeln('c');
		}
	}
}

// true -> 1, false -> -1
int inCircle(double px, double py){
	int res = (r*r >= (x[3]-px)^^2 + (y[3]-py)^^2) ? 1 : -1;
	return res;
}

double len(int i, int j){
	double a, b, c;
	a = y[i] - y[j];
	b = x[j] - x[i];
	c = y[j]*x[i] - x[j]*y[i];
	return abs(a*x[3] + b*y[3] + c) / sqrt(a*a + b*b);
}

bool inTriangle(double px, double py){
	int a, b, c;
	a = outerProduct(x[0], y[0], x[1], y[1], px, py);
	b = outerProduct(x[1], y[1], x[2], y[2], px, py);
	c = outerProduct(x[2], y[2], x[0], y[0], px, py);
	return (abs(a+b+c) == 3);
}
// return sign of AB x AP
int outerProduct(double ax, double ay, double bx, double by, double px, double py){
	double abx, aby, apx, apy;
	abx = bx - ax;
	aby = by - ay;
	apx = px - ax;
	apy = py - ay;
	if (abx*apy - apx*aby >= 0) return 1;
	else return -1;
}
