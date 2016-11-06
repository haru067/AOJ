import std.stdio;

void main(){
	int n,m;
	while(readf("%d\n",&n),n) {
		int[7] ans;
		foreach(i; 0..n){
			readf("%d\n",&m);
			if (m>60) m=60;
			ans[m/10]++;
		}
		foreach (i;ans) writeln(i);
	}
}
