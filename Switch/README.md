# Switch

Limbo does not have a verbatim `switch` statement. Rather, it has a statement named `case` which is analogous, but not identical to C's switch-case construct. 

## Source

### switch.b:16,31

This segment exemplifies a few features of limbo's case statement. There is an iterative loop wrapped around a case statement which has a boolean `or`'d section and a default section, indicated by the wildcard `*` operator. 

Limbo case statements break by default and accept range matching operations involving the `or` and `to` keywords.

A break or continue followed by a label causes a break out of, or the next iteration of, the enclosing construct that is labeled with the same label. 

### switch.b:33,42

This case statement demonstrates the use of the `to` range operator in a given section while providing a specific section to match the `C` character as well. 

### switch.b:44,51

Limbo is able to switch on string values, this can include a `nil` check, demonstrated by the `""` section. Note that there is no default section provided. The default section is not mandatory. 

### switch.b:53,60

This case verifies whether a value is `0` or `1` to determine if a value is binary. 

### switch.b:62,69

The valid types for case statements include: `int`, `string`, and `big`.

Note that the `big` coercion statement is mandatory. 

## Demo

	; limbo switch.b
	; switch
	Even
	Odd
	i's value: 9
	Valid hex
	Quack!
	This is binary
	Neither 4 nor 7
	; 

## Exercises

- Try commenting out the `break` and/or `continue` keywords in the first switch, how does the behavior change?
- Change the variable `c` to equal `'C'`, what's printed?
