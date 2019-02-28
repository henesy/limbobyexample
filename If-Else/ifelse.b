implement IfElse;

include "sys.m";
include "draw.m";
include "bufio.m";

sys: Sys;
print, FD: import sys;

bufio: Bufio;

stderr: ref FD;

IfElse: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;
	stderr = sys->fildes(2);

	bufio = load Bufio Bufio->PATH;
	if(bufio == nil) {
		sys->fprint(stderr, "err: could not load %s ­ %r\n", Bufio->PATH);
		raise "fail:load";
	}

	str := "";
	if(str == nil)
		print("String %s is nil\n", str);

	if(str == "")
		print("String %s is empty\n", str);

	l: list of string;
	if(l == nil)
		print("List is nil\n");

	l = "ducks" :: l;
	if(l != nil) {
		print("List is not nil, 0th is: \"%s\"\n", hd l);
	}

	num := 7;
	if(num % 2 == 0)
		print("%d is even\n", num);
	else
		print("%d is odd\n", num);

	num = 9;
	if(num < 0) {
		print("%d is negative\n", num);
	} else if(num < 10)
		print("%d has one digit\n", num);
	else {
		print("%d is positive and has multiple digits\n", num);
	}

	exit;
}
