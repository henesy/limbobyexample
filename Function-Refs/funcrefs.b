implement FuncRefs;

include "sys.m";
include "draw.m";

sys: Sys;
print: import sys;

FuncRefs: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

Cmp: type ref fn(s1: string, s2: string): int;

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	fp: ref fn(s1: string, s2: string): int;

	fp = cmp;

	a := fp("☺", ":)");

	if(a)
		print("Matched smiley!\n");
	else
		print("Did not match smiley\n");

	b := fp("duck", "duck");

	if(b)
		print("Matched duck!\n");
	else
		print("Did not match duck\n");

	unsorted := array[4] of {"d", "b", "c", "a"};

	printarr(unsorted);

	carr := sort(unsorted, cmp);

	printarr(carr);

	rarr := sort(unsorted, rcmp);

	printarr(rarr);

	c := 0;

	if(choose(c)("quack", "quack") <= 0)
		print("quack ≤ quack\n");
	else
		print("quack > quack\n");

	exit;
}

cmp(s1: string, s2: string): int {
	if(s1 < s2)
		return -1;

	if(s1 > s2)
		return 1;

	return 0;
}

rcmp(s1: string, s2: string): int {
	return -cmp(s1, s2);
}

choose(i: int): Cmp {
	if(i)
		return rcmp;

	return cmp;
}

# Insertion sort
sort(arr: array of string, comp: ref fn(s1, s2: string): int): array of string {
	i, j: int;
	key: string;
	n := len arr;

	for(i = 1; i < n; i++) {
		key = arr[i];
		j = i-1;

		while(j >= 0 && comp(arr[j], key) > 0) { 
			arr[j+1] = arr[j];
			j = j-1;
		}

		arr[j+1] = key;
	}

	return arr;
}

printarr(arr: array of string) {
	print("[");
	for(i := 0; i < len arr; i++)
		print(" %s", arr[i]);
	print("]\n");
}
