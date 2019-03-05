# Functions

Functions in Limbo are similar to functions in Go moreso than functions in C. 

## Source

### func.b:13,17

This section shows a function prototype as well as the succeeding function definition. Prototypes in Limbo function similar to prototypes in C. 

The function `plus()` takes two integers as arguments and returns their sum. 

### func.b:19,21

The function `swp()` takes two integer arguments and returns two integers within a tuple. 

Note that the type statement `: int` is only provided once, with the list of variables to the left of the type statement being declared to be integers. 

### func.b:36,38

The function `plusplus()` takes three integer arguments and returns their sum, calling the function `plus()` in the process to sum the first two arguments.

The return value of `plus()` is a single variable, so it can be added to `c` without any extra syntactical structures than using the return value as an unnamed variable. 

## Demo

	; limbo func.b
	; func
	3 + 5 = 8
	7 + 3 + 4 = 14
	swap 6,7: 7,6
	; 

## Exercises

- Try returning more than two values, can tuples store more than two ordered objects?
