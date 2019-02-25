implement Hello;

include "sys.m";
include "draw.m";

Hello: module {
	init:	fn(nil: ref Draw->Context, nil: list of string);
};

init(nil: ref Draw->Context, nil: list of string) {
	sys := load Sys Sys->PATH;

	sys->print("Hello World! ☺\n");
	exit;
}
