#include <iostream>
using namespace std;

int main(){
	int a[4];
	int b[4];
	int hit, blow;
	while(cin >> a[0] >> a[1] >> a[2] >> a[3]){
		cin >> b[0] >> b[1] >> b[2] >> b[3]; 
		hit = 0;
		blow = 0;
		for(int i = 0; i < 4; i++){
			if(b[i] == a[i]){
				hit++;
			}else{
				for(int j = 0; j < 4; j++){
					if(b[i] == a[j]){
						blow++;
						break;
					}
				}
			}
		}
		cout << hit << " " << blow << endl;
	}
	return 0;
}
