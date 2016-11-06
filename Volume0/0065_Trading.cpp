// split by any char
#include <iostream>
#include <algorithm>
#include <vector>
#include <string>
#include <cstdio>
using namespace std;

vector<string> split(const string &str, char delim){
	vector<string> res;
	size_t current = 0, found;
	while((found = str.find_first_of(delim, current)) != string::npos){
		res.push_back(string(str, current, found - current));
		current = found + 1;
	}
	res.push_back(string(str, current, str.size() - current));
	return res;
}

class Trading {
	private:
		bool lastMonth;
		bool month;
	public:
		int id;
		int n;
		Trading(int num){
			id = num;
			n = 0;
			lastMonth = month = false;
		}
		void add(bool last){
			n++;
			if(last){
				lastMonth = true;
			}else {
				month = true;
			}
		}
		bool isValid(){
			return lastMonth && month;
		}

		friend bool operator < (const Trading &a, const Trading &b){
			return a.id < b.id;
		}
};

int main(){
	int id, n;
	bool find;
	string s;
	vector<string> strings;
	vector<Trading> tradings;
	while (getline(cin, s)) {
		if (s.size() == 0) {
			break;
		}
		strings = split(s, ',');
		id = atoi(strings[0].c_str());
		n = atoi(strings[1].c_str());
		
		find = false;
		for (int i = 0; i < tradings.size(); i++) {
			if(id == tradings[i].id){
				tradings[i].add(false);
				find = true;
				break;
			}
		}
		if(!find){
			Trading t(id);
			t.add(false);
			tradings.push_back(t);
		}
	}
	while (~scanf("%d,%d", &id, &n)) {
		find = false;
		for (int i = 0; i < tradings.size(); i++) {
			if(id == tradings[i].id){
				tradings[i].add(true);
				find = true;
				break;
			}
		}
		if(!find){
			Trading t(id);
			t.add(true);
			tradings.push_back(t);
		}
	}
	
	sort(tradings.begin(), tradings.end());
	for (int i = 0; i < tradings.size(); i++) {
		if(tradings[i].isValid()){
			cout << tradings[i].id << " " << tradings[i].n << endl;
		}
	}
	return 0;
}
