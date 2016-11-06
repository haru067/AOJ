import std.stdio, std.string, std.array;

void main(){
	int n;
	readf("%d\n", &n);
	foreach (i; 0..n) writeln(replace(chomp(readln()), "Hoshino","Hoshina"));
}
