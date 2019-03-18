# Modules

Limbo supports compartmentalization of functionality through the dynamic loading and unloading of names and definitions through modules. 

Disclaimer: At the time of writing I am not exceptionally well-versed with modules in Limbo. All assertions should be taken with a grain of salt. 

## Source

### persons.m:1,11



Function definitions:

- init()	 ­ persons.b:7,9
- mkperson() ­ persons.b:11,13
- getpop()	 ­ persons.b:15,18

Note: In a way, a module definition acts as an interface which dictates which functions, variables, and types are accessible from outside the module's implementation proper. 

### towns.m:1,14



Function definitions:

- init()	­ towns.b:5,7
- mktown()	­ towns.b:9,11

### modules.b:25,29



### modules.b:31,39



### modules.b:41,45



Note: The type `Person` is imported at modules.b:13.

## Demo

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
