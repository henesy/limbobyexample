implement Loops;

include "sys.m";
include "draw.m";

sys: Sys;
print: import sys;

Loops: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	print("== for\n");

	for(i := 0; i < 10; i++){
		if(i % 2 == 0)
			continue;

		print("%d\n", i * i);
	}

	print("== while\n");

	n := 7;
	while(n)
		print("%d\n", n--);

	print("== do\n");

	do{
		print("%d\n", ++n);
		break;
	}while(1);

	exit;
}
