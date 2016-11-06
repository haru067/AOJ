import std.stdio;
import std.string;

void main(){
	int n;
	string s, ans;
	readf("%d\n", &n);
	for (int i = 0; i < n; i++) {
		s = chomp(readln());
		ans = "" ~ s[0];
		for (int j = 3; j < s.length; j+=3) {
			if (count(ans,s[j]) <= 0){
				if(s[j-1] == '>') ans ~= s[j];
				else ans = s[j] ~ ans;
			}
		}
		writeln(ans);
	}
}
