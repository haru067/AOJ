import std.stdio;
import std.array;
import std.conv;

struct Data {
	int id, score;
	int opCmp(ref const Data s) const{
		return (score == s.score ? id - s.id : s.score - score);
	}
}

void main(){
	int m, sum;
	string[] str;
	while (readf("%d\n", &m), m) {
		Data data[];
		foreach (i; 0..m) {
			int[] n;
			str = split(readln());
			foreach (s; str) n ~= to!int(s);
			sum = 0;
			for (int j = 1, r = 0; r < 10; r++) {
				if (n[j] == 10) {
					sum += 10 + n[j+1] + n[j+2];
					j++;
				} else if (n[j] + n[j+1] == 10) {
					sum += 10 + n[j+2];
					j+=2;
				} else {
					sum += n[j] + n[j+1];
					j+=2;
				}
			}
			data ~= Data(n[0], sum);
		}
		foreach (i; data.sort) writeln(i.id, " ", i.score);
	}
}
