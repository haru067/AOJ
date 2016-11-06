#include <iostream>
#include <string>
#include <cstdlib>
using namespace std;

int board[10][10];

bool valid(int x, int y){
	if(x > 0 && x < 9 && y > 0 && y < 9){
		return true;
	}else{
		return false;
	}
}

void removeBomb(int x, int y){
	//cout << "removeBomb: " << x << "," << y << endl;
	if (board[y][x] != 1) {
		return;
	}
	board[y][x] = 0;
	for (int i = 1; i <= 3; i++) {
		if(valid(x, y+i)) removeBomb(x,y+i);
		if(valid(x, y-i)) removeBomb(x,y-i);
		if(valid(x-i, y)) removeBomb(x-i,y);
		if(valid(x+i, y)) removeBomb(x+i,y);
	}
}

void printBoard(){
	for (int i = 0; i < 8; i++) {
		for (int j = 0; j < 8; j++) {
			cout << board[i+1][j+1];
		}
		cout << endl;
	}
}

int main(){
	int n, x, y;
	string s;
	while (getline(cin, s)) {
		n = atoi(s.c_str());
		for (int i = 0; i < n; i++) {
			getline(cin, s);
			for (int j = 0; j < 8; j++) {
				getline(cin, s);
				for (int k = 0; k < 8; k++) {
					board[j+1][k+1] = s[k] - '0';
				}
			}
			for (int j = 0; j < 10; j++) {
				board[j][9] = 0;
				board[j][0] = 0;
				board[0][j] = 0;
				board[9][j] = 0;
			}
			getline(cin, s);
			x = atoi(s.c_str());
			getline(cin, s);
			y = atoi(s.c_str());
			//cout << x << "," << y << endl;
			board[y][x] = 1;
			removeBomb(x, y);
			cout << "Data " << i+1 << ":" << endl;
			printBoard();
		}
	}
	return 0;
}
