implement Arrays;

include "sys.m";
include "draw.m";

sys: Sys;
print: import sys;

Arrays: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

nums: array of int;

width: int = 6;

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	# Nums
	print("Len nums: %d\n", len nums);

	nums = array[width] of int;

	print("Len nums: %d\n", len nums);

	print("[");
	for(i := 0; i < width; i++)
		print(" %d", nums[i] = i << 1);
	print("]\n\n");

	# Arr
	arr := array[12] of byte;
	arrstr := "baby ducks!!";

	for(i = 0; i < len arrstr; i++)
		arr[i] = byte arrstr[i];

	print("Len arr: %d\n", len arr);

	print("[");
	for(i = 0; i < len arr; i++)
		print(" %c", int arr[i]);
	print("]\n\n");

	# Dbl
	dbl := array[len arr *2] of byte;

	for(i = 0; i < len arr; i++)
		dbl[i*2] = dbl[i*2+1] = arr[i];

	print("Len dbl: %d\n", len dbl);

	print("[");
	for(i = 0; i < len dbl; i++)
		print(" %c", int dbl[i]);
	print("]\n\n");

	# Chars
	chars := array[] of {"a", "b", "c", "d", "e", "f"};

	print("Len chars: %d\n", len chars);

	print("[");
	for(i = 0; i < len chars; i++)
		print(" %s", chars[i]);
	print("]\n\n");

	# Nest
	nest: array of array of string;

	print("Len nest: %d\n", len nest);

	nest = array[4] of array of string;

	print("Len nest: %d\n", len nest);

	for(i = 0; i < len nest; i++)
		nest[i] = array[2 << i] of string;

	print("Lens: [");
	for(i = 0; i < len nest; i++)
		print(" %d", len nest[i]);
	print("]\n\n");

	# Buf
	buf := array[10] of {* => byte 3};

	print("Len buf: %d\n", len buf);

	print("[");
	for(i = 0; i < len buf; i++)
		print(" %d", int buf[i]);
	print("]\n\n");

	# Two
	two := array[4] of list of (string, string);

	#two = array[4] of list of (string, string);

	two[0] = ("ducks", "quack") :: two[0];

	two[2] = ("inferno", "os") :: two[2];

	print("Len two: %d\n", len two);

	print("Lens: [");
	for(i = 0; i < len two; i++)
		print(" %d", len two[i]);
	print("]\n");

	print("[");
	for(i = 0; i < len two; i++) {
		if(two[i] == nil) {
			print(" (nil, nil)");
			continue;
		}

		(s0, s1) := hd two[i];
		print(" (%s %s)", s0, s1);
	}
	print("]\n");

	exit;
}
