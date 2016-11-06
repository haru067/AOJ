#include <iostream>
#include <string>
#define ADD 0
#define SUB 1
#define MUL 2
using namespace std;

int calc(int a, int b, int op){
	switch(op){
		case ADD:
			return a + b;
		case SUB:
			return a - b;
		case MUL:
			return a * b;
	}
}

string parseStr(int op){
	switch(op){
		case ADD:
			return " + ";
		case SUB:
			return " - ";
		case MUL:
			return " * ";
	}
}

bool calc(int a, int b, int c, int d, int op0, int op1, int op2){
	int sum, tmp;
	sum = calc(a, b, op0);
	sum = calc(sum, c, op1);
	sum = calc(sum, d, op2);
	if(sum == 10){
		cout << "(((";
		cout << a << parseStr(op0) << b << ")";
		cout << parseStr(op1) << c << ")" << parseStr(op2) << d << ")" << endl;
		return true;
	}
	sum = calc(a, b, op0);
	tmp = calc(c, d, op2);
	sum = calc(sum, tmp, op1);
	if(sum == 10){
		cout << "((";
		cout << a << parseStr(op0) << b << ")";
		cout << parseStr(op1) << "(" << c << parseStr(op2) << d << "))" <<	 endl;
		return true;
	}
	sum = calc(b, c, op1);
	sum = calc(a, sum, op0);
	sum = calc(sum, d, op2);
	if(sum == 10){
		cout << "((";
		cout << a << parseStr(op0) << "(" << b ;
		cout << parseStr(op1) << c << "))" << parseStr(op2) << d << ")" <<	 endl;
		return true;
	}
	sum = calc(b, c, op1);
	sum = calc(sum, d, op2);
	sum = calc(a, sum, op0);
	if(sum == 10){
		cout << "(";
		cout << a << parseStr(op0) << "((" << b ;
		cout << parseStr(op1) << c << ")" << parseStr(op2) << d << "))" <<	 endl;
		return true;
	}
	sum = calc(c, d, op2);
	sum = calc(b, sum, op1);
	sum = calc(a, sum, op1);
	if(sum == 10){
		cout << "(";
		cout << a << parseStr(op0) << "(" << b ;
		cout << parseStr(op1) << "(" << c << parseStr(op2) << d << ")))" <<	 endl;
		return true;
	}
	return false;
}

int main(){
	int n[4];
	int p[4];
	int a,b,c,d;
	int op[3];
	while(cin >> n[0] >> n[1] >> n[2] >> n[3]){
		if(n[0] == 0 && n[0] == n[1] && n[1] == n[2] && n[2] == n[3]) break;
		for (int i = 0; i < 3*3*3; i++) {
			for (int j = 0; j < 4*4*4*4; j++) {
				p[0] = j%4;
				p[1] = (j%16)/4;
				p[2] = (j%64)/16;
				p[3] = (j%256)/64;
				// 重複チェック
				bool flag = false;
				for (int k = 0; k < 4; k++) 
					for (int l = 0; l < 4; l++) 
						if(k != l && p[k] == p[l])
							flag = true;
				if(flag){
					continue;
				}
				a = n[p[0]];
				b = n[p[1]];
				c = n[p[2]];
				d = n[p[3]];
				op[0] = i%3;
				op[1] = (i%9)/3;
				op[2] = (i%27)/9;
				if(calc(a, b, c, d, op[0], op[1], op[2])){
					goto z;
				}
			}
		}
		cout << 0 << endl;
z:;
	}
	return 0;
}
