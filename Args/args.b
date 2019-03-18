implement Args;

include "sys.m";
include "draw.m";

include "arg.m";

sys: Sys;
print: import sys;

Args: module {
	init: fn(nil: ref Draw->Context, argv: list of string);
};

init(nil: ref Draw->Context, argv: list of string) {
	sys = load Sys Sys->PATH;
	arg := load Arg Arg->PATH;
	if(arg == nil)
		raise "bad module load";

	arg->init(argv);
	arg->setusage(arg->progname() + " [-r] [-c mark] words...");

	rev := 0;
	mark := "→ ";

	while((opt := arg->opt()) != 0)
		case opt {
		'r' =>
			rev = 1;
		'c' =>
			mark = arg->earg();
		* =>
			arg->usage();
		}

	argv = arg->argv();

	print("Argc after flags: %d\n", len argv);

	if(rev) {
		argl: list of string;

		for(; argv != nil; argv = tl argv)
			argl = hd argv :: argl;

		argv = argl;
	}

	for(; argv != nil; argv = tl argv)
		sys->print("%s %s\n", mark, hd argv);

	exit;
}
