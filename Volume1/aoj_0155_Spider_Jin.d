import std.stdio;
import std.math;

const int INF = 99999999;
const int V = 1111;
int[V] b;
double[V] x, y;
double[V][V] cost;
int[V][V] path;
int n, m, s, g, s0, g0;

void main(){
	while (scanf("%d", &n), n) {
		foreach (i; 0..n) scanf("%d %lf %lf", &b[i], &x[i], &y[i]);
		foreach (i; 0..n) {
			foreach (j; 0..n) {
				if (i == j) {
					cost[i][j] = 0;
					path[i][j] = n;
				}else if (distance(i, j) <= 50) {
					cost[i][j] = distance(i, j);
					path[i][j] = i;
				}else {
					cost[i][j] = INF;
					path[i][j] = n;
				}
			}
		}
		
		warshall_floyd();

		scanf("%d", &m);
		foreach (i; 0..m) {
			scanf("%d %d", &s, &g);
			foreach (j; 0..n) {
				if (b[j] == s) s0 = j;
				if (b[j] == g) g0 = j;
			}
			printPath(s0, g0);
			writeln();
		}
	}
}

double distance(int i, int j){
	return sqrt((x[i] - x[j])^^2 + (y[i] - y[j])^^2);
}

void warshall_floyd(){
	for (int k = 0; k < n; k++) {
		for (int i = 0; i < n; i++) {
			for (int j = 0; j < n; j++) {
				if (cost[i][j] > cost[i][k] + cost[k][j]) {
					cost[i][j] = cost[i][k] + cost[k][j];
					path[i][j] = path[k][j];
				}
			}
		}
	}
}

void printPath(int i, int j){
	if (path[i][j] != n) {
		printPath(i, path[i][j]);
		write(" ", b[j]);
	}else if (i == j) {
		write(b[j]);
	}else {
		write("NA");
	}
}
