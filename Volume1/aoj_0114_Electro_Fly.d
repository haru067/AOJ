import std.stdio;
import std.numeric;

void main(){
	ulong x;
	ulong[3] a, m, ans;
	while (readf("%d %d %d %d %d %d\n", &a[0], &m[0], &a[1], &m[1], &a[2], &m[2])) {
		if(a[0] == 0 && a[1] == 0 && a[2] == 0 && m[0] == 0 && m[1] == 0 && m[2] == 0) break;
		for (int i = 0; i < 3; i++) {
			x =  1;
			ulong j = 0;
			do {
				x = a[i]*x % m[i];
				j++;
			} while (x != 1);
			ans[i] = j;
		}
		writeln(LCM(ans));
	}
}

ulong LCM(ulong[] n){
	ulong result = n[0];
	for (int i = 1; i < n.length; i++) {
		result = result / gcd(result, n[i]) * n[i];
	}
	return result;
}
