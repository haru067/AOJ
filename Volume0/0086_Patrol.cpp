// Eulerian Path
#include <iostream>
using namespace std;

int node[200]; // node[i] expresses num of node from i
int a, b;

void initialize(){
	for (int i = 0; i < 200; i++) {
		node[i] = 0;
	}
}

bool answer(){
	if(node[1] % 2 == 0 || node[2] % 2 == 0) return false;
	for (int i = 3; i < 200; i++) {
		if(node[i] % 2 == 1) return false;
	}
	return true;
}

int main(){
	initialize();
	while (cin >> a >> b) {
		if (a == 0 && b == 0) {
			if(answer()){
				cout << "OK" << endl;
			}else {
				cout << "NG" << endl;
			}
			initialize();
		}else{
			node[a]++;
			node[b]++;
		}
	}

	return 0;
}
