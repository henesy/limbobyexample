# Switch

Limbo does not have a verbatim `switch` statement. Rather, it has a statement named `case` which is analogous, but not identical to C's switch-case construct. 

Limbo case statements break by default and accept range matching operations involving the `or` and `to` keywords.

Note: A break or continue followed by a label causes a break out of, or the next iteration of, the enclosing construct that is labeled with the same label. 

## Source

### switch.b:16,31



### switch.b:33,42



### switch.b:44,51



### switch.b:53,60



### switch.b:62,69



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
