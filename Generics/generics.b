implement Generics;

include "sys.m";
include "draw.m";
include "bufio.m";

sys: Sys;
print: import sys;

bufio: Bufio;
Iobuf: import bufio;

Generics: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

# Polymorphic type
Rd: adt[T] {
	t:	ref Iobuf;
	ws:	fn(rd: self ref Rd[T]): int;
};

Num: adt {
	pick {
		String =>
			s: string;
		Int =>
			d: int;
	}

	stringify: fn(v: self ref Num): string;
};

# Polymorphic and pick-tagged type
Word: adt[T] {
	w: T;

	pick {
		String =>
			s: string;
	}

	eq:	fn(a, b: ref Word): int;
};

Integer: adt {
	d: int;
};

Int: type ref Integer;

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;
	bufio = load Bufio Bufio->PATH;

	in := bufio->open("/fd/0", bufio->OREAD);

	rd := ref Rd[ref Iobuf](in);

	print("Type something: ");

	c := rd.ws();
	print("Broke on '%c'\n", c);

	d := ref Num.Int(5);
	s := ref Num.String("Five");

	print("%s\n", d.stringify());
	print("%s\n", s.stringify());

	words: list of ref Word[Int].String;

	smiley := "☺";
	frowny := ":(";

	# Format is: Adt[Type].PickTag(fields...)
	sword := ref Word[Int].String(Int(9), smiley);

	words = sword :: words;
	words = ref Word[Int].String(Int(7), frowny) :: words;

	if(ismember(sword, words))
		print("Found %d!\n", sword.w.d);

	backwords := rev(words);

	print("Head was: %s\nHead is: %s\n", (hd words).s, (hd backwords).s);

	strings: list of string;
	strings = "hi" :: strings;
	strings = "hello" :: strings;

	# plist is a `list of (string, ref Word.String)`
	plist := pair(strings, words);

	(str, word) := hd plist;

	print("Head of plist: ( %s, { %s, %d } )\n", str, word.s, word.w.d);

	exit;
}

# Skip white space
Rd[T].ws(rd: self ref Rd[T]): int {
	while(isspace(c := rd.t.getb()))
		{}

	return c;
}

Word[T].eq(a, b: ref Word): int
{
	return a.w == b.w;	# This is a shallow comparison, don't rely on this
}

Num.stringify(v: self ref Num): string {
	pick xv := v {
	String =>
		return xv.s;
	Int =>
		return string xv.d;
	* =>
		raise "type error";
	}
}

# Matches whitespace characters
isspace(c: int): int {
	return c == ' ' || c == '\r' || c == '\t' || c == '\n';
}

# Checks if x is a member of l
ismember[T](x: T, l: list of T): int
	for {
		T =>
			eq:	fn(a, b: T): int;
	}
{
	for(; l != nil; l = tl l)
		if(T.eq(x, hd l))
			return 1;

	return 0;
}

# Pairs two lists of separate types(?)
pair[T1, T2](l1: list of T1, l2: list of T2): list of (T1, T2) {
	if(l1 == nil && l2 == nil)
		return nil;

	return (hd l1, hd l2) :: pair(tl l1, tl l2);
}

# Reverse a list
rev[T](l: list of T): list of T {
	r: list of T;
	for(; l != nil; l = tl l)
		r = hd l :: r;

	return r;
}
