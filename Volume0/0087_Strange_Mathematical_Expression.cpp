#include <iostream>
#include <iomanip>
#include <string>
#include <vector>
#include <stack>
#include <cstdlib>
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

int main(){
	string s;
	stack<double> ans;
	vector<string> strings;
	double a,b;
	while (getline(cin, s)) {
		strings = split(s, ' ');
		for (int i = 0; i < strings.size(); i++) {
			if(strings[i] == "+"){
				a = ans.top();
				ans.pop();
				b = ans.top();
				ans.pop();
				ans.push(b+a);
			}else if (strings[i] == "-") {
				a = ans.top();
				ans.pop();
				b = ans.top();
				ans.pop();
				ans.push(b-a);
			}else if (strings[i] == "*") {
				a = ans.top();
				ans.pop();
				b = ans.top();
				ans.pop();
				ans.push(b*a);
			}else if (strings[i] == "/") {
				a = ans.top();
				ans.pop();
				b = ans.top();
				ans.pop();
				ans.push(b/a);
			}else{
				ans.push(atof(strings[i].c_str()));
			}
		}
		cout << fixed << setprecision(20) << ans.top() << endl;
		ans.pop();
	}
	return 0;
}
