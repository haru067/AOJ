import std.stdio;
import std.algorithm;
import std.math;

void main(){
	int n, h, m, longHand, shortHand, angle;
	readf("%d\n", &n);
	for (int i = 0; i < n; i++) {
		readf("%d:%d\n", &h, &m);
		longHand = h*60 + m;
		shortHand = 2*6*m;
		angle = abs(longHand - shortHand);
		angle = min(2*360 - angle, angle);
		if (angle >= 0 && angle < 2*30) writeln("alert");
		else if (angle >= 2*90 && angle <= 2*180) writeln("safe");
		else writeln("warning");
	}
}
