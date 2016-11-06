import std.stdio, std.array;

int[17] seat;
int[] q;

void main(){
	bool f;
	int n, t, m, a, id;
	while (readf("%d\n", &n)) {
		seat[] = -1;
		q = [];
		t = 0;
		while (1) {
			seat[] -= 1;
			if (t%5 == 0) q ~= t/5;
			f = true;
			while (!q.empty && f) {
				f = false;
				id = q.front;
				m = (id%5 == 1) ? 5 : 2;
				a = available(m);
				if (a != -1) {
					foreach (j; 0..m) seat[a+j] = 17*(id%2)+3*(id%3)+19;
					q.popFront();
					f = true;
				}
			}
			if (t/5 >= n && (q.empty || q.front > n)) break;
			t++;
		}
		writeln(t - n*5);
	}
}

int available(int m){
	int s, e;
	s = e = 0;
	while (e < 17) {
		if (seat[s] <= 0 && seat[e] <= 0) e++;
		else if (seat[s] <= 0 && seat[e] > 0) s = e;
		else {
			s++;
			e = s;
		}

		if (e - s == m) return s;
	}
	return -1;
}
