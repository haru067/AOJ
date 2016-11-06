#include <iostream>
#include <algorithm>
using namespace std;

int main(){
	int w, n, i, a, b;
	cin >> w;
	int ans[w];
	for (i = 0; i < w; i++) {
		ans[i] = i+1;
	}
	cin >> n;
	for (i = 0; i < n; i++) {
		scanf("%d,%d", &a, &b);
		swap(ans[a-1], ans[b-1]);
	}

	for (i = 0; i < w; i++) {
		cout << ans[i] << endl;
	}


	return 0;
}
