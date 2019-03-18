implement Lists;

include "sys.m";
include "draw.m";

sys: Sys;
print: import sys;

Lists: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	names: list of string;
	ages: list of int;
	persons: list of (string, int);

	print("Lens: %d, %d, %d\n", len names, len ages, len persons);

	names = "Spike" :: names;
	ages = 27 :: ages;

	names = "Ed" :: "Jet" :: names;
	ages = 13 :: 36 :: ages;

	print("Lens: %d, %d, %d\n", len names, len ages, len persons);

	n := names;
	a := ages;

	while(n != nil && a != nil) {
			persons = (hd n, hd a) :: persons;
			n = tl n;
			a = tl a;
	}

	print("Persons:\n");
	for(; persons != nil; persons = tl persons) {
		(name, age) := hd persons;
		print("%s: %d\n", name, age);
	}

	print("Tmp lens: %d, %d\n", len n, len a);
	print("Lens: %d, %d, %d\n", len names, len ages, len persons);

	exit;
}
