#include <iostream>
#include <cstdio>
using namespace std;

int main(){
	int price, amount;
	int price_sum = 0;
	int amount_sum = 0;
	int kind = 0;
	while(~scanf("%d,%d", &price, &amount)){
		kind++;
		price_sum += price * amount;
		amount_sum += amount;
	}
	cout << price_sum << endl;
	cout << (int)((double)amount_sum / (double)kind + 0.5) << endl;

	return 0;
}
