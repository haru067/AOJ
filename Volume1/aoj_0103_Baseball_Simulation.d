import std.stdio;

void main(){
	int n, outCount, score;
	int runner;
	string s;
	
	outCount = 3;
	readf("%d\n", &n);
	while ((s = readln()).length) {
		if (outCount == 3) { // initialize
			runner = 0;
			score = 0;
			outCount = 0;
		}
		if (s == "HIT\n") {
			if (runner >= 3) score++;
			else runner++;
		}else if (s == "OUT\n") {
			outCount++;
			if (outCount == 3) writeln(score);
		}else if (s == "HOMERUN\n") {
			score += runner + 1;
			runner = 0;
		}
	}
}
