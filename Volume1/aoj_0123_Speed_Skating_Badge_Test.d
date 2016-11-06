import std.stdio;

string[] cls = ["NA", "E", "D", "C", "B", "A", "AA", "AAA"]; 
double[] a = [70.0, 55.0, 50.0, 43.0, 40.0, 37.5, 35.5, -1]; 
double[] b = [148.0, 116.0, 105.0, 89.0, 83.0, 77.0, 71.0, -1];

void main(){
	double n, m;
	while (readf("%s %s\n", &n, &m)) {
		for (int i = 0; i < a.length; i++) {
			if (n >= a[i] || m >= b[i]) {
				writeln(cls[i]);
				break;
			}
		}
	}
}

