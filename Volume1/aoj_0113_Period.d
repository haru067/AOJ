import std.stdio;
import std.array;

void main(){
	int p, q;
	while (readf("%d %d\n", &p, &q)) {
		ulong[int] position;
		string ans;
		while (!(p in position)) {
			position[p] = ans.length;
			p *= 10;
			ans ~= (p / q) + '0';
			p %= q;
		}
		if (ans.back == '0' && ans.length-1 == position[p]) {
			ans.popBack();
			writeln(ans);
			continue;
		}
		writeln(ans);
		for (int i = 0; i < ans.length; i++) {
			if (i < position[p]) write(" ");
			else write("^");
		}
		writeln();
	}
}
