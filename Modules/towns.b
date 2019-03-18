implement Towns;

include "towns.m";

init() {
	persons = load Persons "./persons.dis";
}

mktown(): ref Town {
	return ref Town;
}

Town.stringify(t: self ref Town): string {
	Person: import persons;

	s := "Name: " + t.name + "\nSize: " + string len t.pop + "\nMembers:";

	for(i := 0; i < len t.pop; i++)
		s += "\n→ " + t.pop[i].stringify();

	return s;
}
