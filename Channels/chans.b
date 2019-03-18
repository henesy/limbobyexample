implement Chans;

include "sys.m";
include "draw.m";

sys: Sys;
print: import sys;

Chans: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

summer(done: chan of int, msg: chan of string, num: chan of (int, int)) {
	sum := big 0;
	run := 1;

	while(run)
		alt {
		(n, p) := <-num =>
			sum += big n**p;
			print("Sum: %bd\n", sum);
		<-done =>
			msg <-= string sum;
			run = 0;
		* =>
			sys->sleep(5);
		}
}

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	n := 4;
	done := chan of int;
	msgChan := chan[0] of string;
	numChan := chan[n] of (int, int);

	spawn summer(done, msgChan, numChan);

	for(i := 0; i < 15; i++)
		numChan <-= (i, 2);

	done <-= 0;

	print("Final sum: %s\n", <-msgChan);

	buf := chan[20] of int;

	print("Len: %d\n", len buf);

	for(i = 0; i < 5; i++)
		buf <-= i;

	exit;
}
