implement Slices;

include "sys.m";
include "draw.m";

sys: Sys;
print: import sys;

Slices: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	str := "little_baby_ducks";
	print("%s\n", str);

	n := 3;

	a := str[:n];
	print("%s\n", a);

	b := str[4:];
	print("%s\n", b);

	c := array of byte str[2:len str -1];
	print("%s\n", string c[4:8]);

	exit;
}
