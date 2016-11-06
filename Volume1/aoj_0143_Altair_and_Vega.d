import std.stdio;
import std.math;

double[3] xp, yp;

void main(){
	int n;
	double xk, yk, xs, ys;
	readf("%d\n", &n);
	for (int i = 0; i < n; i++) {
		readf("%s %s %s %s %s %s %s %s\n", &xp[0], &yp[0], &xp[1], &yp[1], &xp[2], &yp[2], &xk, &yk, &xs, &ys);
		if (inTriangle(xk, yk) + inTriangle(xs, ys) == 0) writeln("OK");
		else writeln("NG");
	}
}

// true -> 1, false -> -1
int inTriangle(double x, double y){
	int a, b, c;
	a = outerProduct(xp[0], yp[0], xp[1], yp[1], x, y);
	b = outerProduct(xp[1], yp[1], xp[2], yp[2], x, y);
	c = outerProduct(xp[2], yp[2], xp[0], yp[0], x, y);
	if (abs(a+b+c) == 3) return 1;
	else return -1;
}

// return sign of AB x AP
int outerProduct(double ax, double ay, double bx, double by, double px, double py){
	double abx, aby, apx, apy;
	abx = bx - ax;
	aby = by - ay;
	apx = px - ax;
	apy = py - ay;
	if (abx*apy - apx*aby > 0) return 1;
	else return -1;
}
