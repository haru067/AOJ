#include <iostream>
using namespace std;

void replaceAll (std::string& str, const std::string& from, const std::string& to) {
    std::string::size_type pos = 0;
    while(pos = str.find(from, pos), pos != std::string::npos) {
        str.replace(pos, from.length(), to);
        pos += to.length();
    }
}

int main(){
	string s;
	while (getline(cin, s)) {
		replaceAll(s, "apple", "<-- p -->");
		replaceAll(s, "peach", "apple");
		replaceAll(s, "<-- p -->", "peach");
		cout << s << endl;
	}
	return 0;
}
