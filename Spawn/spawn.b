implement Spawn;

include "sys.m";
include "draw.m";

sys: Sys;
print: import sys;

Spawn: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

summer(n: int) {
	sum := 0;

	for(i := 0; i <= n; i++) {
		sum += i;
		print("Sum (%d): %d\n", n, sum);
	}

	print("Final sum (%d): %d\n", n, sum);
}

quacker() {
	print("quack!\n");
}

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	spawn quacker();

	spawn summer(2);

	spawn quacker();

	n := 3;
	spawn summer(n);

	sys->sleep(10);

	exit;
}
