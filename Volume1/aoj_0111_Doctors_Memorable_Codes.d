import std.stdio;
import std.string;
import std.conv;

char[string] ch;
string[char] code;

void main(){
	string s;
	setData();
	while ((s = chomp(readln)), s) {
		s = textToCode(s);
		s = codeToText(s);
		writeln(s);
	}
}

void setData(){
	code[' '] = "11010";
	code['.'] = "11011";
	code[','] = "11100";
	code['-'] = "11101";
	code['\''] = "11110";
	code['?'] = "11111";
	ch["101"] = ' '; 
	ch["000000"] = '\''; 
	ch["000011"] = ','; 
	ch["10010001"] = '-'; 
	ch["010001"] = '.'; 
	ch["000001"] = '?'; 
	ch["100101"] = 'A'; 
	ch["10011010"] = 'B'; 
	ch["0101"] = 'C'; 
	ch["0001"] = 'D'; 
	ch["110"] = 'E'; 
	ch["01001"] = 'F'; 
	ch["10011011"] = 'G'; 
	ch["010000"] = 'H'; 
	ch["0111"] = 'I'; 
	ch["10011000"] = 'J'; 
	ch["0110"] = 'K'; 
	ch["00100"] = 'L'; 
	ch["10011001"] = 'M'; 
	ch["10011110"] = 'N'; 
	ch["00101"] = 'O'; 
	ch["111"] = 'P'; 
	ch["10011111"] = 'Q'; 
	ch["1000"] = 'R'; 
	ch["00110"] = 'S'; 
	ch["00111"] = 'T'; 
	ch["10011100"] = 'U'; 
	ch["10011101"] = 'V'; 
	ch["000010"] = 'W'; 
	ch["10010010"] = 'X'; 
	ch["10010011"] = 'Y'; 
	ch["10010000"] = 'Z'; 
}

string textToCode(string s){
	string result;
	for (int i = 0; i < s.length; i++) {
		if (s[i] >= 'A' && s[i] <= 'Z') {
			result ~= format("%05b", s[i] - 'A');
		}else {
			result ~= code[s[i]];
		}
	}
	return result;
}

string codeToText(string s){
	string result;
	for (int i = 0; i < s.length; i++) {
		if (s[0..i+1] in ch) {
			result ~= ch[s[0..i+1]];
			s = s[i+1..$];
			i = 0;
		}
	}
	return result;
}
