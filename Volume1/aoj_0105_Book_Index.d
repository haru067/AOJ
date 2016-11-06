import std.stdio;
import std.algorithm;

void main(){
	string s;
	int n;
	int[][string] index;
	while (readf("%s %d\n", &s, &n)) {
		index[s] ~= n;
	}
	auto keys = sort!("a < b")(index.keys);
	foreach (key; keys) {
		writeln(key);
		auto values = sort!("a < b")(index[key]);
		write(values[0]); values.popFront();
		foreach (value; values) {
			write(" ", value);
		}
		writeln();
	}
}
