implement Const;

include "sys.m";
include "draw.m";

sys: Sys;
print: import sys;

Const: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

n: con 7;
Red, Green, Blue: con iota;

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	s: con "Limbo";

	print(string n + "\n");
	print("Red: %d Green: %d Blue: %d\n", Red, Green, Blue);
	print(s + "\n");

	exit;
}
