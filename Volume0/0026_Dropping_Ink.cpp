#include <iostream>
#include <cstdio>
using namespace std;

int board[10][10];

void fill(int x, int y){
	if(0<=x && x<10 && 0<=y && y<10){
		board[y][x]++;
	}
}

int main(){
	int x, y, size;
	while(~scanf("%d,%d,%d", &x, &y, &size)){
		if(size >= 1){ // small
			fill(x, y);
			fill(x+1, y);
			fill(x-1, y);
			fill(x, y+1);
			fill(x, y-1);
		}
		if (size >= 2) { // medium
			fill(x+1, y+1);
			fill(x+1, y-1);
			fill(x-1, y+1);
			fill(x-1, y-1);
		}
		if(size >= 3){ // large
			fill(x+2, y);
			fill(x-2, y);
			fill(x, y+2);
			fill(x, y-2);
		}
	}
	int num_zero = 0;
	int deepest = 0;
	for (int i = 0; i < 10; i++) {
		for (int j = 0; j < 10; j++) {
			if(board[j][i] == 0){
				num_zero++;
			}
			if(deepest < board[j][i]){
				deepest = board[j][i];
			}
		}
	}
	cout << num_zero << endl;
	cout << deepest << endl;

	return 0;
}
