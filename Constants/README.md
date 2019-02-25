# Constants

Limbo does not have enum types, but does have the `con` keyword to indicate a constant value. 

## Source

### const.b:13,14

	n: con 7;
	Red, Green, Blue: con iota;

The variable `n` is an integer constant with a value of 7. 

The variables `Red`, `Green`, and `Blue` are integer constants with values 0, 1, and 2, respectively. 

By default, the `iota` operator initializes variables on the left side with sequential values from 0 to n. Where n is the number of variables. The `iota` operator is only valid in expressions involving `con`. 

Note: these variables are bound within the scope of this module's file. 

### const.b:19

	s: con "Limbo";

The variable `s` is a string constant which is bound within the scope of the `init()` function. 

## Demo

	; limbo const.b
	; const
	7
	Red: 0 Green: 1 Blue: 2
	Limbo
	; 

## Exercises

- Try to declare constants of other types, does `con` allow you to do this?
- Change the `iota` statement such that the values of Red, Green, Blue are not increments of 1 and do not start at 0.
