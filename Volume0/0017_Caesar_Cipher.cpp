#include <iostream>
#include <string>
using namespace std;

int main(){
	int i, j;
	string s;
	while(getline(cin, s)){
		for (i = 0; i < 26; i++) {
			for(j = 0; j < s.length(); j++){
				if(s[j] != '.' && s[j] != ' '){
					s[j] = (s[j]=='a')? 'z' : s[j] - 1;
				}
			}
			if(s.find("the")!=string::npos || s.find("this")!=string::npos || s.find("that")!=string::npos){
				cout << s << endl;
				break;
			}
		}
	}
	return 0;
}
