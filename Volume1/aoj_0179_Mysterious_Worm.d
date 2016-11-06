import std.stdio;
import std.array;
import std.string;

char[3] type = ['r', 'g', 'b'];
string s;
int n;
bool f;

void main(){
	while (s = chomp(readln()), s != "0") {
		bool[string] memo;
		string[] queue;
		int[] depth;
		queue ~= s;
		depth ~= 0;
		f = false;
		while (queue.length) {
			s = queue.front;
			n = depth.front;
			queue.popFront();
			depth.popFront();
			if (s in memo) continue;
			memo[s] = true;

			// check answer
			foreach (ch; type) if (replace(s, ch ~ "", "") == "") f = true;
			if (f) break;

			// bfs
			for (int i = 0; i < s.length-1; i++) {
				if (s[i] != s[i+1]) {
					char rest;
					foreach (ch; type)
						if (s[i] != ch && s[i+1] != ch) rest = ch;
					char[] cs = s.dup;
					cs[i] = cs[i+1] = rest;
					queue ~= cs.idup;
					depth ~= n+1;
				}
			}
		}
		if (f) writeln(n);
		else writeln("NA");
	}
}

