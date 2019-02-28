implement Switch;

include "sys.m";
include "draw.m";

sys: Sys;
print, FD: import sys;

Switch: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	i := 10;

	# The label labelling the enclosing construct
	loop:

	for(; i >= 0; i--)
		case i {
		0 or 2 or 4 or 6 or 8 or 10 =>
			print("Even\n");
			continue loop;
		* =>
			print("Odd\n");
			break loop;
		}

	print("i's value: %d\n", i);

	c := 'c';

	case c {
	'a' to 'f' =>
		print("Valid hex\n");
	'C' =>
		print("The letter 'C'\n");
	* =>
		print("The default\n");
	}

	str := "ducks";

	case str {
	"ducks" =>
		print("Quack!\n");
	"" =>
		print("Nil string\n");
	}

	n := 1;

	case n {
	0 or 1 =>
		print("This is binary\n");
	* =>
		print("This is non-binary\n");
	}

	f := big 6;

	case f {
	big 4 => print("The number 4\n");
	big 5 => print("The number 7\n");
	* =>
		print("Neither 4 nor 7\n");
	}

	exit;
}
