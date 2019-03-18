include "persons.m";

Towns: module {
	init: fn();
	mktown: fn(): ref Town;

	persons: Persons;

	Town: adt {
		pop: array of ref Persons->Person;
		name: string;
		stringify: fn(t: self ref Town): string;
	};
};
