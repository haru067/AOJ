#include <iostream>
#include <cmath>
#include <stack>
using namespace std;

int main(){
	int n,i;
	stack <int> ans;
	while(cin >> n){
		for (i = 9; i >= 0; i--) {
			if(pow(2.0, i) <= n){
				n -= pow(2.0, i);
				ans.push(pow(2.0, i));
			}
		}

		while(!ans.empty()){
			cout << ans.top();
			ans.pop();
			if(!ans.empty()){
				cout << " ";
			}
		}
		cout << endl;
	}
	return 0;
}
