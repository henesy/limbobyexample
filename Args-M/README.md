# Command-Line Arguments

Inferno has a dedicated module for processing commandline flags and arguments, [arg(2)](http://man.cat-v.org/inferno/2/arg). 

## Source

### args.b:17,22

The module `Arg` is loaded and initialized. As per the manual, the `arg->init()` function must be called before any other functions can be called from `Arg`. 

The usage message is also set pre-emptively for use later, if necessary.

### args.b:24,37

There are two flag arguments, `r` and `c` which set reversal of arguments and the list item indicator mark, respectively.

The flag `r` is a binary option toggle, the flag's presence as an argument is sufficient to change the value of `rev`. 

The flag `c` takes an argument. The `arg->earg()` function is used to pop the flag's argument out of the list. Specifically with regards to `earg()` rather than `arg()` as per the manual, `earg()` will call `arg->usage()` if the relevant argument does not exist. 

Note: After the processing of all flags, `argv` is re-set from the value contained within `arg` to remove the elements (if any) utilized by flags and their arguments. 

### args.b:41,51

This section utilizes the `rev` variable to (naively) reverse the list `argv`. After the `rev` check, the list `argv` is printed in order from beginning to end with each element being printed on a new line with the `mark` variable being prefixed to the list element currently at the head of the `argv` list each iteration during printout. 

## Demo

	; limbo args.b
	; args -h
	usage: args [-r] [-c mark] words...
	; args a b c d
	Argc after flags: 4
	→  a
	→  b
	→  c
	→  d
	; args -r a b c d
	Argc after flags: 4
	→  d
	→  c
	→  b
	→  a
	; args -c 'quack: ' a b c d
	Argc after flags: 4
	quack:  a
	quack:  b
	quack:  c
	quack:  d
	; args -r -c '-> ' d c b a
	Argc after flags: 4
	->  a
	->  b
	->  c
	->  d
	; 

## Exercises

- Can you trick `earg()` into accepting a nil value?
- How would you pull an `int` out of `earg()`?
- How would you trip the `usage()` message call-able from `earg()`?
