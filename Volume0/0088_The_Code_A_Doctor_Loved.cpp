#include <iostream>
#include <string>
using namespace std;

string forwardTrans(char c){
	if(c == ' ') return "101";
	else if(c == '\'') return "000000";
	else if(c == ',') return "000011";
	else if(c == '-') return "10010001";
	else if(c == '.') return "010001";
	else if(c == '?') return "000001";
	else if(c == 'A') return "100101";
	else if(c == 'B') return "10011010";
	else if(c == 'C') return "0101";
	else if(c == 'D') return "0001";
	else if(c == 'E') return "110";
	else if(c == 'F') return "01001";
	else if(c == 'G') return "10011011";
	else if(c == 'H') return "010000";
	else if(c == 'I') return "0111";
	else if(c == 'J') return "10011000";
	else if(c == 'K') return "0110";
	else if(c == 'L') return "00100";
	else if(c == 'M') return "10011001";
	else if(c == 'N') return "10011110";
	else if(c == 'O') return "00101";
	else if(c == 'P') return "111";
	else if(c == 'Q') return "10011111";
	else if(c == 'R') return "1000";
	else if(c == 'S') return "00110";
	else if(c == 'T') return "00111";
	else if(c == 'U') return "10011100";
	else if(c == 'V') return "10011101";
	else if(c == 'W') return "000010";
	else if(c == 'X') return "10010010";
	else if(c == 'Y') return "10010011";
	else if(c == 'Z') return "10010000";
}

char backwardTrans(string s){
	if(s == "00000") return 'A';
	else if(s == "00001") return 'B';
	else if(s == "00010") return 'C';
	else if(s == "00011") return 'D';
	else if(s == "00100") return 'E';
	else if(s == "00101") return 'F';
	else if(s == "00110") return 'G';
	else if(s == "00111") return 'H';
	else if(s == "01000") return 'I';
	else if(s == "01001") return 'J';
	else if(s == "01010") return 'K';
	else if(s == "01011") return 'L';
	else if(s == "01100") return 'M';
	else if(s == "01101") return 'N';
	else if(s == "01110") return 'O';
	else if(s == "01111") return 'P';
	else if(s == "10000") return 'Q';
	else if(s == "10001") return 'R';
	else if(s == "10010") return 'S';
	else if(s == "10011") return 'T';
	else if(s == "10100") return 'U';
	else if(s == "10101") return 'V';
	else if(s == "10110") return 'W';
	else if(s == "10111") return 'X';
	else if(s == "11000") return 'Y';
	else if(s == "11001") return 'Z';
	else if(s == "11010") return ' ';
	else if(s == "11011") return '.';
	else if(s == "11100") return ',';
	else if(s == "11101") return '-';
	else if(s == "11110") return '\'';
	else if(s == "11111") return '?';
}

int main(){
	string s, tmp;
	int rest;
	while (getline(cin, s)) {
		tmp = "";
		for (int i = 0; i < s.size(); i++) {
			tmp += forwardTrans(s[i]);
		}
		rest = tmp.size() % 5;
		if (rest != 0) {
			for (int i = 0; i < (5-rest); i++) {
				tmp += "0";
			}
		}
		for (int i = 0; i < tmp.size(); i += 5) {
			cout << backwardTrans(tmp.substr(i, 5));
		}
		cout << endl;
	}
	return 0;
}
