# Modules

Limbo supports compartmentalization of functionality through the dynamic loading and unloading of names and definitions through modules. 

A particular module may include a `.m` file module definition associated with a given implementation of said module contained within `.b` files. 

Disclaimer: At the time of writing I am not exceptionally well-versed with modules in Limbo. All assertions should be taken with a grain of salt. 

## Source

### persons.m:1,11

The `Persons` module exposes three functions and an ADT. 

Function definitions:

- init()	 -- persons.b:7,9
- mkperson() -- persons.b:11,13
- getpop()	 -- persons.b:15,18

Note: In a way, a module definition acts as an interface which dictates which functions, variables, and types are accessible from outside the module's implementation proper. 

### towns.m:1,14

The `Towns` module exposes two functions, a variable, and an ADT. 

Note that the module file includes `persons.m` to allow it to utilize the `Persons` definition, allowing a handle to be attached to the module `Persons` within the module `Towns` as per the `Towns->init()` definition. 

Function definitions:

- init()	-- towns.b:5,7
- mktown()	-- towns.b:9,11

### modules.b:25,29

This section loads the auxiliary modules used within this example and calls their respective initialization functions.

Note that no module should be considered usable or safe to reference before calling their respective initialization function, if any. 

### modules.b:31,39

This section demonstrates calling the `getpop()` function within the `Persons` module using the currently loaded handle to the `Persons` module, `persons`. An instance of `ref Person` is created and its fields filled manually. 

Note that across these two calls, the `population` within `modules->persons` increments, however, the `population` within `towns->persons` does not increment. This is because the two instances of the `Persons` module are separate and loaded separately. These two modules share no resources other than a common origin within their `.dis` bytecode files. 

### modules.b:41,45

This section features a call to `mktown()` from within the `Towns` module. The contents of the respective `ref Town` are filled manually. 

Note: The type `Person` is imported at modules.b:13.

## Demo

	; mk
	; modules
	0
	0
	1
	0
	Name: Mars
	Size: 2
	Members:
	→ Spike
	→ Ed
	; 

## Exercises

- Can you access `persons->population` from `modules`?
- Could you make a global variable by placing said variable in its respective module definition?
- What happens if you remove the `import` statements for `Person` and `Town` in various `.b` files?
- What happens if you include `persons.m` in `modules.b`?
- What happens if you include `persons.m` in `modules.b` and remove the include for `persons.m` in `towns.m`?
- Can you load the `Util` module contained within `util.b`?
