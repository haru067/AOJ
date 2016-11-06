import std.stdio;
import std.math;

void main(){
	double[3] size;
	int n, r;
	while (readf("%s %s %s\n", &size[0], &size[1], &size[2])) {
		if(size[0] == 0 && size[1] == 0 && size[2] == 0) break;
		readf("%d\n", &n);
		for (int i = 0; i < n; i++) {
			readf("%d\n", &r);
			// solve
			size.sort;
			double diagonal = sqrt(size[0] * size[0] + size[1] * size[1]);
			if (diagonal < r*2) {
				writeln("OK");
			}else {
				writeln("NA");
			}
		}
	}
}
