implement ADTs;

include "sys.m";
include "draw.m";

sys: Sys;
print: import sys;

ADTs: module {
	init: fn(nil: ref Draw->Context, nil: list of string);

	Person: adt {
		age:	int;
		name:	string;
		stringify: fn(p: self ref Person): string;
	};
};

Town: adt {
	pop: array of ref Person;
	name: string;
	stringify: fn(t: self ref Town): string;
};

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	p := ref Person(27, "Spike");
	print("%s\n", p.name);

	t: Town;
	t.pop = array[] of {p, ref Person(13, "Ed")};
	t.name = "Mars";

	town := ref t;
	print("%s\n", town.stringify());

	exit;
}

Person.stringify(p: self ref Person): string {
	return p.name;
}

Town.stringify(t: self ref Town): string {
	s := "Name: " + t.name + "\nSize: " + string len t.pop + "\nMembers:";

	for(i := 0; i < len t.pop; i++)
		s += "\n→ " + t.pop[i].stringify();

	return s;
}
