// solve by circulational list
#include <iostream>
#include <cstdlib>
using namespace std;

struct node{
	int value;
	struct node *next;
};

int main(){
	int n, m;
	struct node *now;
	struct node *list;
	while (cin >> n >> m) {
		if (n == 0 && m == 0) {
			break;
		}
		// make list
		list = (struct node*) malloc(sizeof(struct node));
		now = list;
		for (int i = 1; i < n; i++) {
			now->next = (struct node*) malloc(sizeof(struct node));
			now->value = i;
			now = now->next;
		}
		now->next = list;
		now->value = n;
		// delete
		while (now != now->next) {
			for (int i = 0; i < m-1; i++) {
				now = now->next;
			}
			//cout << "del: " << now->next->value << endl;
			now->next = now->next->next;
		}
		// output
		cout << now->value << endl;
	}
	return 0;
}
