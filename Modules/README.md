# Modules

Limbo supports compartmentalization of functionality through the dynamic loading and unloading of names and definitions through modules. 

Disclaimer: At the time of writing I am not exceptionally well-versed with modules in Limbo. All assertions should be taken with a grain of salt. 

## Source

### 



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
