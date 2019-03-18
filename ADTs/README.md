# ADT's

Limbo supports Abstract Data Types (ADT's). These are analogous, but not equivocal to, structs in C and Go. 

For further reading on ADT's and how they compose in different contexts, see [Modules](../Modules) and [Generics](../Generics).

## Source

### adts.b:12,16

The type `Person` is an ADT declared within a module definition possessing an integer, string, and function reference member. 

The function is named stringify and takes an argument named `p` which is a reference to the adt variable instance which called the function. This function could be thought as being analogous to a method. 

Method-like function references declared with `self` as a keyword for an argument are not required to be called with said argument being passed. 

Note: Modules are a form of ADT with some special rules associated with them that differentiates them from a normal ADT.

### adts.b:19,23

The type `Town` is an ADT declared outside of a module definition possessing an array of references to Person ADT's, a string, and a function reference. 

### adts.b:28,29

The variable `p` is created as a reference to an instance of a `Person` type which is instantiated using constructor-like syntax. The `Person` element `name` is then printed. 

Note: Although the syntax used to instantiate the `Person` type instance appears to be a function, it is closer to a tuple being passed into an instance of a `Person`, but used in an in-line fashion. That is, the tuple must contain all non-function reference types contained within the ADT. 

### adts.b:31,36

The variable `t` is created as an instance of a `Town` ADT. The non-function reference elements are then initialized manually. Note that the `ref Person(...)` instantiation can be used as a valid variable instance. 

### adts.b:41,52

The method-like function references are declared with a bit of special syntax. That is, the function name takes the form of `ADT.func()`. 

## Demo

	; adts
	Spike
	Name: Mars
	Size: 2
	Members:
	→ Spike
	→ Ed
	; 

## Exercises

- Can you instantiate an ADT via its constructor without all its non-function reference members?
- How would you format the constructor-style instantiation of a `ref Town`?
