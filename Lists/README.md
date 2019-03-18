# Lists

Limbo supports lists of arbitrary types as a basic construct. 

## Source

### lists.b:16,20

Three lists are declared. 

The `len` statement can be used on a list to return the number of elements in the respective list. Note that the list `persons` is a list of tuples whose pairing is that of a string and an integer. 

### lists.b:22,28

The lists `names` and `ages` are both populated.

The `::` operator functions on lists by prepending the given element before the head of the current list. Note the interaction between successive calls to the `::` operator prior to assignment and how it affects order. 

### lists.b:30,46

The list `persons` is built by making copies of the `names` and `ages` lists as `n` and `a`, respectively.

The `hd` statement returns the head of the list to its right. 

The `tl` statement returns the tail, that is the list bar the head element, of the list to its right. 

An empty list is equivocal to `nil`. That is, a nil list is an empty list.

Note: The effects upon temporary copies of `names` and `ages` do not affect the original lists they are copies of, as the temporary copies are copies, rather than references to the original lists. 

## Demo

	; limbo lists.b
	; lists
	Lens: 0, 0, 0
	Lens: 3, 3, 0
	Persons:
	Spike: 27
	Jet: 36
	Ed: 13
	Tmp lens: 0, 0
	Lens: 3, 3, 0
	; 

## Exercises

- Try reversing a list.
- Try interleaving two lists.
