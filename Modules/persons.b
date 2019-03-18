implement Persons;

include "persons.m";

population: int;

init() {
	population = 0;
}

getpop(): int {
	return population;
}

mkperson(): ref Person {
	population++;
	return ref Person;
}

Person.stringify(p: self ref Person): string {
	return p.name;
}
