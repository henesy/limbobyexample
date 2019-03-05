implement Func;

include "sys.m";
include "draw.m";

sys: Sys;
print: import sys;

Func: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

plus: fn(a: int, b :int): int;

plus(a: int, b: int): int {
	return a + b;
}

swp(a, b: int): (int, int) {
	return (b, a);
}

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	print("3 + 5 = %d\n", plus(3, 5));

	print("7 + 3 + 4 = %d\n", plusplus(7, 3, 4));

	(t₀, t₁) := swp(6, 7);
	print("swap 6,7: %d,%d\n", t₀, t₁);

	exit;
}

plusplus(a, b, c: int): int {
	return plus(a, b) + c;
}
