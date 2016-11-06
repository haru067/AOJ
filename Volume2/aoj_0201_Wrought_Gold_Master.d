import std.stdio;
import std.string;


void main(){
	int n, m, p;
	string name;
	string[] s;
	while (readf("%d\n", &n), n) {
		int[string] value;
		string[][string] recipe;
		foreach (i; 0..n) {
			readf("%s %d\n", &name, &p);
			value[name] = p;
		}

		readf("%d\n", &m);
		foreach (i; 0..m) {
			s = readln.split;
			foreach (item; s[2..$]) {
				recipe[s[0]] ~= item;
			}
		}

		// calc

		name = readln.chomp;
		writeln(value[name]);
	}
}
