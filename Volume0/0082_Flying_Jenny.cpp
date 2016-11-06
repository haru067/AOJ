#include <iostream>
#include <string>
#include <cstdlib>
#include <vector>
#define INTMAX 2000000000
using namespace std;

// calc num of passengers
int calc(vector<int> passengers, string s){
	int remain = 0;
	int n;
	for (int i = 0; i < 8; i++) {
		n = passengers[i] - (s[i] - '0');
		n = (n < 0) ? 0 :  n;
		remain += n;
	}
	return remain;
}

// convert string to int if there are same best answers
int getNum(string s, int location){
	return atoi(s.substr(location, 8).c_str());
}

int main(){
	vector<int> passengers;
	int p[8];
	int ans_remain;
	int ans_location;
	int tmp;
	string s = "4121214141212141";
	while (cin >> p[0] >> p[1] >> p[2] >> p[3] >> p[4] >> p[5] >> p[6] >> p[7]) {
		ans_remain = INTMAX;
		ans_location = -1;
		passengers.clear();
		for (int i = 0; i < 8; i++) {
			passengers.push_back(p[i]);
		}
		for (int i = 0; i < 8; i++) {
			tmp = calc(passengers, s.substr(i, 8)); 
			if(ans_remain > tmp){ // find new best answer
				ans_remain = tmp;
				ans_location = i;
			}else if (ans_remain == tmp) { // same answer
				if (getNum(s, ans_location) > getNum(s, i)) {
					ans_remain = tmp;
					ans_location = i;
				}
			}
		}
		// print ans
		for (int i = 0; i < 7; i++) {
			cout << s[ans_location+i] << " ";
		}
		cout << s[ans_location+7] << endl;
	}
	return 0;
}
