import std.stdio;

void main(){
	long n, x, y, h, w, size, sum;
	while (readf("%d\n", &n), n) {
		sum = 0;
		foreach (i; 0..n) {
			readf("%d %d %d %d\n", &x, &y, &h, &w);
			size = x + y + h;
			if (size <= 60 && w <= 2) sum += 600;
			else if (size <= 80 && w <= 5) sum += 800;
			else if (size <= 100 && w <= 10) sum += 1000;
			else if (size <= 120 && w <= 15) sum += 1200;
			else if (size <= 140 && w <= 20) sum += 1400;
			else if (size <= 160 && w <= 25) sum += 1600;
		}
		writeln(sum);
	}
}
