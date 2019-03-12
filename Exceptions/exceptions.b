implement Exceptions;

include "sys.m";
include "draw.m";

sys: Sys;

Exceptions: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

FIB: exception(int, int);

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	for(i := 0; i < 5 ; i++) {
		f := fibonacci(i);

		if(f < 0)
			break;

		sys->print("F(%d) = %d\n", i, f);
	}

	raise "going down!";

	exit;
}

fibonacci(n: int): int {
	{
		fib(1, n, 1, 1);
	} exception e {
		FIB =>
			(x, nil) := e;
			return x;

		"*" =>
			sys->print("unexpected string exception %s raised\n", e);

		* =>
			sys->print("unexpected exception raised\n");
	}

	return 0;
}

fib(n, m, x, y: int) raises (FIB) {
	if(n >= m)
		raise FIB(x, y);
	{
		fib(n+1, m, x, y);
	} exception e {
		FIB =>
			(x, y) = e;

			x = x+y;
			y = x-y;

			raise FIB(x, y);
	}
}
