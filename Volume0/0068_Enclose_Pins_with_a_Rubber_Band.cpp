// quickhull
#include <iostream>
#include <cmath>
#include <cstdio>
#include <cfloat>
using namespace std;
#define EPS (1e-10)

int n, ans;
double px[100], py[100];
bool in[100];

double length(double x1, double y1, double x2, double y2){
	return sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2));
}

bool inTriangle(int node1, int node2, int node3, int node4){
	cout << "triangle: " << node1 << "," << node2 << "," << node3 << "," << node4 << ":";
	double x1 = px[node1];
	double y1 = py[node1];
	double x2 = px[node2];
	double y2 = py[node2];
	double x3 = px[node3];
	double y3 = py[node3];
	double xp = px[node4];
	double yp = py[node4];
	double a, b, c, x, pa, pb, pc;
	double S, Sp, Sa, Sb, Sc;
	a = length(x2, y2, x3, y3);
	b = length(x3, y3, x1, y1);
	c = length(x1, y1, x2, y2);
	x = (a + b + c) / 2;
	S = sqrt(x*(x-a)*(x-b)*(x-c)); // Heron's formula

	pa = length(xp, yp, x1, y1);
	pb = length(xp, yp, x2, y2);
	pc = length(xp, yp, x3, y3);
	x = (a + pb + pc) / 2;
	Sa = sqrt(x*(x-a)*(x-pb)*(x-pc));
	x = (pa + b + pc) / 2;
	Sb = sqrt(x*(x-pa)*(x-b)*(x-pc));
	x = (pa + pb + c) / 2;
	Sc = sqrt(x*(x-pa)*(x-pb)*(x-c));
	Sp = Sa + Sb + Sc;
	if (fabs(Sp-S) < EPS) {
		cout  << "true" << endl;
		return true;
	}else{
		cout << "false" << endl;
		return false;
	}
}

void quickhullUp(int l, int r){
	cout << "start#quickhullUp: " << l << "," << r << endl;
	double a = py[r] - py[l];
	double b = px[l] - px[r];
	double c = px[r]*py[l] - py[r]*px[l];
	int longest;
	double longestEdge = 0;
	double tmp;
	bool find = false;
	// find the longest point
	if(b == 0){
		// x = n
		return;
	}else if (a == 0) {
		// y = n
		for (int i = 0; i < n; i++) {
			// is upside of line which consist of l and r?
			if (i == l || i == r) {
				continue;
			}
			tmp = py[i] - py[r];
			if(tmp > longestEdge){
				longestEdge = tmp;
				longest = i;
				find = true;
			}
		}
	}else{
		for (int i = 0; i < n; i++) {
			// is upside of line which consist of l and r?
			if (i == l || i == r) {
				continue;
			}
			if(a*px[i]+ b*py[i] + c > 0){
				tmp = fabs(a*px[i] + b*py[i] + c) / sqrt(a*a + b*b);
				if(tmp > longestEdge){
					cout << tmp << endl;
					longestEdge = tmp;
					longest = i;
					find = true;
				}
			}
		}
	}
	// recursion
	if (find) {
		// count points in triangle
		for (int i = 0; i < n; i++) {
			if (i == l || i == r || i == longest) {
				continue;
			}
			if(b*py[i] > -(a*px[i] + c)
					&& inTriangle(l, r, longest, i)){
				//cout << i << " is in " << longest << ","<< l << "," << r << endl;
				ans++;
			}
		}
		cout << "longest is: " << longest << endl;
		quickhullUp(l, longest);
		quickhullUp(r, longest);
	}else{
		//	cout << "not found" << endl;
	}
	//cout << "end#quickhullUp: " << l << "," << r << endl;
}

void quickhullDown(int l, int r){
	cout << "quickhullDown: " << l << ", " << r << endl;
	double a = py[r] - py[l];
	double b = px[l] - px[r];
	double c = px[r]*py[l] - py[r]*px[l];
	int longest;
	double longestEdge = 0;
	double tmp;
	bool find = false;
	// find the longest point
	if(b == 0){
		// x = n
		return;
	}else if (a == 0) {
		// y = n
		for (int i = 0; i < n; i++) {
			// is upside of line which consist of l and r?
			if (i == l || i == r || i == longest) {
				continue;
			}
			tmp = py[r] - py[i];
			if(tmp > longestEdge){
				longestEdge = tmp;
				longest = i;
				find = true;
			}
		}
	}else{
		for (int i = 0; i < n; i++) {
			// is upside of line which consist of l and r?
			if (i == l || i == r) {
				continue;
			}
			if((b*py[i] < -(a*px[i] + c) && b > 0) || ((b*py[i] < -(a*px[i] + c) && b > 0) && b < 0)){
				tmp = fabs(a*px[i] + b*py[i] + c) / sqrt(a*a + b*b);
				if(tmp > longestEdge){
					longestEdge = tmp;
					longest = i;
					find = true;
				}
			}
		}
	}
	// recursion
	if (find) {
		// count points in triangle
		for (int i = 0; i < n; i++) {
			if (i == l || i == r) {
				continue;
			}
			if((b*py[i] > -(a*px[i] + c) && b > 0) || ((b*py[i] > -(a*px[i] + c) && b > 0) && b < 0)
					&& inTriangle(l, r, longest, i)){
				cout << i << " is in " << longest << ","<< l << "," << r << endl;
				ans++;
			}
		}
		quickhullDown(l, longest);
		quickhullDown(r, longest);
	}
}

void quickhull(int l, int r){
	quickhullUp(l, r);
	//quickhullDown(l, r);
}



int main(){
	int left, right;
	while (cin >> n) {
		if (n == 0) {
			break;
		}
		ans = n;
		for (int i = 0; i < n; i++) {
			scanf("%lf,%lf", &px[i], &py[i]);
			in[i] = false;
		}
		left = 0;
		right = 0;
		for (int i = 1; i < n; i++) {
			if(px[i] < px[left]){
				left = i;
			}
			if(px[i] > px[right]){
				right = i;
			}
		}
		cout << "-----------------------" << endl;
		ans = 0;
		quickhull(left, right);
		for (int i = 0; i < n; i++) {
			if(in[i]) ans++;
		}
		cout << ans << endl;
	}
	return 0;
}
