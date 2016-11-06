import std.stdio;
import std.array;
import std.conv;

void main(){
	int n, id;
	ulong value, amount;
	while (1) {
		readf("%d\n", &n);
		if(n == 0) break;
		bool na = true;
		ulong[int] sales;
		int[] printOrder;
		for (int i = 0; i < n; i++) {
			readf("%d %s %s\n", &id, &value, &amount);
			if(id in sales) {
				sales[id] += value * amount;
			}else {
				printOrder ~= id;
				sales[id] = value * amount;
			}
		}
		foreach (i; printOrder) {
			if (sales[i] >= 1000000) {
				na = false;
				writeln(i);
			}
		}
		if(na) writeln("NA");
	}
}
