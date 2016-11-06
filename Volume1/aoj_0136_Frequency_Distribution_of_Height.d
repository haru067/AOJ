import std.stdio;


void main(){
	int n, a;
	double h;
	string[7] freq = "";
	readf("%d\n", &n);
	for (int i = 0; i < n; i++) {
		readf("%s\n", &h);
		if (h < 165.0) a = 1;
		else if (h >= 185.0) a = 6;
		else a = cast(int)((h - 165.0) / 5) + 2;
		freq[a] ~= "*";
	}
	foreach (i; 1..7) writeln(i, ":", freq[i]);
}
