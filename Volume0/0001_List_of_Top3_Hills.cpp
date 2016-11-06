#include <iostream>
using namespace std;

int main(){
	int height = 0;
	int rank[3] = {0,0,0};
	
	while(cin >> height){	
		if (height > rank[0]) {
			rank[2] = rank[1];
			rank[1] = rank[0];
			rank[0] = height;
		}else if (height > rank[1]) {
			rank[2] = rank[1];
			rank[1] = height;
		}else if(height > rank[2]){
			rank[2] = height;
		}
	}
	
	cout << rank[0] << endl;
	cout << rank[1] << endl;
	cout << rank[2] << endl;

	return 0;
}
