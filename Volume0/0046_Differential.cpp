#include <iostream>
using namespace std;

int main(){
	double h;
	double max, min;
	cin >> h;
	max = min = h;
	while(cin >> h){
		if(max < h){
			max = h;
		}else if(min > h){
			min = h;
		}
	}
	cout << max-min << endl;
	return 0;
}
