# Function References

Limbo supports references to functions, similar to closures, but more similar to function pointers. 

The example in this section is a derivative of the function reference summary in the [Limbo Addendum](http://www.vitanuova.com/inferno/papers/addendum.pdf). 

## Source

### funcrefs.b:18,34

The variable `fp` is a name whose type is a reference to a function with a given argument and return value scheme. A function which fulfills this scheme can be used to set the reference, in this case the `cmp()` function is referenced by `fp`. 

### funcrefs.b:36,46

The `sort()` function takes a function reference as an argument, using it as a comparator. In this case `cmp()` and `rcmp()` are passed as a function reference argument. 

### funcrefs.b:48,53

The `choose()` function returns a reference to a function, being called in this case to return a given comparator with the comparator being called in-line.

## Demo

	; limbo funcrefs.b
	; funcrefs
	Matched smiley!
	Did not match duck
	[ d b c a]
	[ a b c d]
	[ d c b a]
	quack ≥ quack
	; 

## Exercises

- Change the value of `c` to 1, what happens?
- Write a function which returns a function which returns a function.
