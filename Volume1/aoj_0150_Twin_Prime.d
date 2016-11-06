import std.stdio;

const int MAX = 10001;
bool prime[MAX];

void main(){
	// make prime table
	prime[] = true;
	prime[0] = prime[1] = false;
	foreach (i; 2..MAX) if (prime[i]) for (int j = i+i; j < MAX; j+=i) prime[j] = false;

	int n;
	while (readf("%d\n", &n), n) {
		for (int i = n; i >= 0; i--) {
			if (prime[i] && prime[i-2]) {
				writeln(i-2, " ", i);
				break;
			}
		}
	}
}
