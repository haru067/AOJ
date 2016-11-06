import std.stdio;

void main(){
	string s;
	int[2] score;
	while ((s = readln()) != "0\n") {
		score = 0;
		foreach (ch; s[1..$-1]) score[ch - 'A']++;

		int t = score[0] > score[1] ? 0 : 1;
		score[t]++;

		writeln(score[0], " ", score[1]);
	}
}
