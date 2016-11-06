import std.stdio, std.string, std.array, std.algorithm;

struct Point {int x,y;}

string[111] s;
Point[] q;
int[] dx = [0, 1, 0, -1];
int[] dy = [-1, 0, 1, 0];
int[111][111] cost; 

void main(){
	Point p;
	int n, m, tx, ty, newCost, ans;
	while (readf("%d %d\n", &n, &m), n || m) {
		foreach (y; 0..m) {
			s[y] = readln.chomp;
			cost[y] = 999999;
			foreach (x; 0..n) if (s[y][x] == '&') p = Point(x, y);
		}
		// solve by BFS
		cost[p.y][p.x] = 0;
		q ~= p;
		while (!q.empty) {
			p = q.front; q.popFront();
			foreach (i; 0..4) {
				tx = dx[i] + p.x;
				ty = dy[i] + p.y;
				if (tx < 0 || ty < 0 || tx >= n || ty >= m) continue;
				newCost = cost[p.y][p.x] + ((s[ty][tx] == '#' && s[p.y][p.x] != '#')  ? 1 : 0);
				if (cost[ty][tx] > newCost){
					cost[ty][tx] = newCost;
					q ~= Point(tx, ty);
				}
			}
		}
		ans = 999999;
		foreach (x; 0..n) foreach (i; [0, m-1]) ans = min(ans, cost[i][x]);
		foreach (y; 0..m) foreach (i; [0, n-1]) ans = min(ans, cost[y][i]);
		writeln(ans);
	}
}
