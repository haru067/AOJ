import std.stdio;
import std.algorithm;
import std.array;

int[5000] count;

void main(){
	int n, c;
	while (readf("%d\n", &n), n) {
		int[] list;
		count[] = 0;
		// step1
		for (int i = 1; i < n; i++) {
			c = i*i % n;
			if (find(list, c).empty) list ~= c;
		}
		// step2
		foreach (a; list) {
			foreach (b; list) {
				c = a - b;
				if (c < 0) c += n;
				if (c > (n-1)/2) c = n - c;
				count[c]++;
			}
		}
		// step3
		for (int i = 1; i <= (n-1)/2; i++) {
			writeln(count[i]);
		}
	}
}
