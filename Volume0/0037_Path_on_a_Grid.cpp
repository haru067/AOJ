#include <iostream>
#include <string>
#define N 10
using namespace std;

int main(){
	string str, ans = "";
	bool h[N][N]; // setinel
	bool v[N][N];
	char dir = 'R';
	int mx = 1;
	int my = 1;
	int i, j, len;
	
	for (i = 0; i < N; i++) {
		for (j = 0; j < N; j++) {
			h[i][j] = v[i][j] = false;
		}
	}

	i = j = 1;
	while(cin >> str){
		if(i == 1) len = str.size();
		if(str.size() == len){
			for (int k = 0; k < str.size(); k++) {
				h[i][k+1] = str[k] == '1' ? true : false;
			}
			i++;
		}else{
			for (int k = 0; k < str.size(); k++) {
				v[j][k+1] = str[k] == '1' ? true : false;
			}
			j++;
		}
	}

	do{
		if (dir == 'L') {
			if(v[my][mx]){
				my++;
				dir = 'D';
			}else if(h[my][mx-1]){
				mx--;
				dir = 'L';
			}else if(v[my-1][mx]){
				my--;
				dir = 'U';
			}else{
				mx++;
				dir = 'R';
			}
		}else if (dir == 'R') {
			if(v[my-1][mx]){
				my--;
				dir = 'U';
			}else if(h[my][mx]){
				mx++;
				dir = 'R';
			}else if(v[my][mx]){
				my++;
				dir = 'D';
			}else{
				mx--;
				dir = 'L';
			}
		}else if (dir == 'U') {
			if(h[my][mx-1]){
				mx--;
				dir = 'L';
			}else if(v[my-1][mx]){
				my--;
				dir = 'U';
			}else if(h[my][mx]){
				mx++;
				dir = 'R';
			}else{
				my++;
				dir = 'D';
			}
		}else if (dir == 'D') {
			if(h[my][mx]){
				mx++;
				dir = 'R';
			}else if(v[my][mx]){
				my++;
				dir = 'D';
			}else if(h[my][mx-1]){
				mx--;
				dir = 'L';
			}else{
				my--;
				dir = 'U';
			}
		}
		ans += dir;
	}while(!(mx == 1 && my == 1));

	cout << ans << endl;

	return 0;
}
