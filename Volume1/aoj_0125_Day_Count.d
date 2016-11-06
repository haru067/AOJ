import std.stdio;
import std.datetime;

int[] day = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

void main(){
	int[2] y, m, d, s;
	while (readf("%d %d %d %d %d %d\n", &y[0], &m[0], &d[0], &y[1], &m[1], &d[1]), y[0] != -1) {
		// get days from 0001 / 01 / 01
		for (int i = 0; i < 2; i++) {
			s[i] = 0;
			for (int j = 1; j < y[i]; j++) {
				if (yearIsLeapYear(j)) s[i]++;
				s[i] += 365;
			}
			for (int j = 1; j < m[i]; j++) {
				if(j == 2 && yearIsLeapYear(y[i])) s[i]++;
				s[i] += day[j];
			}
			s[i] += d[i] - 1;
		}
		writeln(s[1] - s[0]);
	}
}
