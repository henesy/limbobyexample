implement Modules;

include "sys.m";
include "draw.m";

# Note the lack of `include "persons.m";`
include "towns.m";

sys: Sys;
print: import sys;

persons: Persons;
Person: import persons;

towns: Towns;
Town: import towns;

Modules: module {
	init: fn(nil: ref Draw->Context, nil: list of string);
};

init(nil: ref Draw->Context, nil: list of string) {
	sys = load Sys Sys->PATH;

	persons = load Persons "./persons.dis";
	towns = load Towns "./towns.dis";

	persons->init();
	towns->init();

	print("%d\n", persons->getpop());
	print("%d\n", towns->persons->getpop());

	p := persons->mkperson();
	p.name	= "Spike";
	p.age	= 27;

	print("%d\n", persons->getpop());
	print("%d\n", towns->persons->getpop());

	t := towns->mktown();
	t.pop = array[] of {p, ref Person(13, "Ed")};
	t.name = "Mars";

	print("%s\n", t.stringify());

	exit;
}
