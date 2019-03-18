Persons: module {
	init: fn();
	mkperson: fn(): ref Person;
	getpop: fn(): int;

	Person: adt {
		age:	int;
		name:	string;
		stringify: fn(p: self ref Person): string;
	};
};
