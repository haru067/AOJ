// split and replace
#include <iostream>
#include <string>
#include <vector>
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

void replaceStr(string& str, const string& from, const string& to)
{
  string::size_type pos = 0;

  while(pos = str.find(from, pos), pos != string::npos) {
    str.replace(pos, from.length( ), to);
    pos += to.length();
  }
}

int main(){
	bool first = true;
	string s;
	getline(cin, s);
	replaceStr(s, ",", "");
	replaceStr(s, ".", "");
	vector<string> strings = split(s,' ');
	for (int i = 0; i < strings.size(); i++) {
		if (strings[i].size() > 2 && strings[i].size() < 7) {
			if (first) {
				first = false;
				cout << strings[i];
			}else {
				cout << " " << strings[i];
			}
		}
	}
	cout << endl;
	return 0;
}
