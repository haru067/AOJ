import std.stdio;
import std.string;
import std.array;

string card, next, tmp, s;
string[] queue;
int pos;
int[string] memo;
int[4] d = [-1, 1, 4, -4];


void main(){
	card = "01234567";
	queue ~= card;
	memo[card] = 0;
	solve();
	while (s = chomp(readln()), s) {
		s = replace(s, " ", "");
		writeln(memo[s]);
	}
}

void solve(){
	while (queue.length) {
		card = queue.front;
		queue.popFront();
		for (int i = 0; i < d.length; i++) {
			pos = cast(int)card.indexOf("0") + d[i];
			if (pos < 8 && pos >= 0 && !(pos == 4 && d[i] == 1) && !(pos == 3 && d[i] == -1)){
				tmp = card[pos..pos+1];
				next = replace(replace(replace(card, "0", "z"), tmp, "0") , "z", tmp);
				if(!(next in memo)){
					queue ~= next;
					memo[next] =  memo[card] + 1;
				}
			}
		}
	}
}
