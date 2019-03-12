# Exceptions

Limbo supports the throwing, catching, and custom definition of exceptions. 

The example in this section is a derivative of the function reference summary in the [Limbo Addendum](http://www.vitanuova.com/inferno/papers/addendum.pdf). 

## Source

### exceptions.b:17,26

This section calculates numbers within the fibonacci sequence to a given interval. In this case, the first 5 numbers are calculated within the sequence.

Note the call to the `raise` keyword after the fibonacci calculations have completed, but before the program exits.

### exceptions.b:31,47

The `fibonacci()` function attempts to perform a `fib()` call and, if an exception `e` is thrown, attempts to handle the exception in a manner depending on the exception type. 

Note that the attempted operation is wrapped in a `{ ... }` block.

### exceptions.b:49,63

The `raises` clause allows for warnings to be generated for un-caught exception potential within a program. Note that these exception types can be user-defined. 

The `FIB` exception type is defined at: exceptions.b:12

## Demo

	; limbo exceptions.b
	; exceptions
	F(0) = 1
	F(1) = 1
	F(2) = 2
	F(3) = 3
	F(4) = 5
	sh: 798 "Exceptions":going down!
	; 

## Exercises

- Try removing the raise for "going down!".
- Remove the `i < 5` portion of the for loop, how many values are printed and why?
- Try removing the exception-catching block from around calls to `fib()`, do you get warnings?
- Try changing the raise type within `fib()`, does `fibonacci()` handle the exception `e` differently?
