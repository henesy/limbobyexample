implement Chans;

include "sys.m";
include "draw.m";

sys: Sys;
print: import sys;

Chans: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	

	exit;
}

