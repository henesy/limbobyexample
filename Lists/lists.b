implement Lists;

include "sys.m";
include "draw.m";

include "arg.m";

sys: Sys;
print: import sys;

Lists: module {
	init: fn(nil: ref Draw->Context, argv: list of string);
};

init(nil: ref Draw->Context, argv: list of string) {
	sys = load Sys Sys->PATH;

	

	exit;
}
