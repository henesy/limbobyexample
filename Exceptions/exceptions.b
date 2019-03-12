implement Exceptions;

include "sys.m";
include "draw.m";

sys: Sys;
print: import sys;

Exceptions: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	

	raise "going down!";

	exit;
}
