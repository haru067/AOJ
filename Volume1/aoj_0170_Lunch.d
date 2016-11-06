import std.stdio;

int[10] w, s;
string[10] f;
int n, sum;
int[] ans;
double best;

void main(){
	while (readf("%d\n", &n), n) {
		sum = 0;
		best = double.max;
		foreach (i; 0..n) {
			readf("%s %d %d\n", &f[i], &w[i], &s[i]);
			sum += w[i];
		}
		solve(0, [], 0, sum, 1);
		foreach (i; ans) writeln(f[i]);
	}
}

void solve(int b, int[] order, double g, int weight, int pos){
	foreach (i; 0..n) {
		if (!((1<<i) & b) && s[i] >= weight-w[i]) {
			solve(b | (1<<i), order ~ i, g+w[i]*pos, weight-w[i], pos+1); 
		}
	}
	if (b+1 == (1<<n) && best > g/sum) {
		best = g/sum;
		ans = order;
	}
}
