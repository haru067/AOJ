import std.stdio;

int[double] map;

void main(){
	int id;
	double time;
	foreach (i; 0..3) {
		double[] times;
		foreach (j; 0..8) {
			readf("%d %s\n", &id, &time);
			map[time] = id;
			times ~= time;
		}
		auto tmp = times.sort;
		writefln("%d %.2f", map[tmp[0]], tmp[0]);
		writefln("%d %.2f", map[tmp[1]], tmp[1]);
		map.remove(tmp[0]);
		map.remove(tmp[1]);
	}
	auto tmp = map.keys.sort;
	writefln("%d %.2f", map[tmp[0]], tmp[0]);
	writefln("%d %.2f", map[tmp[1]], tmp[1]);
}
