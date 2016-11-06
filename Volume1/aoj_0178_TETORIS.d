import std.stdio;

const int Y = 5001;

int[5][Y+1] board;
int n, d, p, q, count, height;

void main(){
	while (readf("%d\n", &n), n) {
		foreach (i; 0..Y) board[i] = 0;
		board[Y] = 1;
		foreach (i; 0..n) {
			readf("%d %d %d\n", &d, &p, &q);
			q--;
			if (d == 1) putH();
			else putV();
			del(Y-1);
		}
		count = 0;
		foreach (y; 0..Y)
			foreach (x; 0..5)
				if(board[y][x]) count++;
		writeln(count);
	}
}

void putH(){
	int t = 0;
	bool f;
	while (1) {
		f = false;
		foreach (i; 0..p) 
			if (board[t][i+q]) f = true;
		if(f) break;
		t++;
	}
	foreach (i; 0..p) board[t-1][i+q] = 1;
}

void putV(){
	int t = 0;
	while (!board[t][q]) t++;
	foreach (i; 0..p) board[t-i-1][q] = 1;
}

void del(int h){
	if (h < 0) return;
	int sum = 0;
	foreach(i; board[h]) sum += i;
	if (sum == 0) return;
	if (sum == 5) {
		for (int y = h; y > 0; y--) {
			sum = 0;
			foreach(i; board[h]) sum += i;
			if (!sum) break;
			board[y] = board[y-1];
		}
		h++;
	}
	del(h-1);
}


