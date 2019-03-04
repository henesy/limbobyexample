# Arrays

Arrays in Limbo are dynamic and indexed by 0. They can be initialized providing a size, or declared and initialized in two separate statements if no size is specified. 

Disclaimer: I don't like this example very much, but I'm not sure how to shore it up. The less on here is to use lists.

## Source

### arrays.b:20,30



### arrays.b:32,44



### arrays.b:46,57



### arrays.b:59,67



### arrays.b:69,84



### arrays.b:86,94



### arrays.b:96,122



## Demo

	; limbo arrays.b
	; arrays
	Len nums: 0
	Len nums: 6
	[ 0 2 4 6 8 10]
	
	Len arr: 12
	[ b a b y   d u c k s ! !]
	
	Len dbl: 24
	[ b b a a b b y y     d d u u c c k k s s ! ! ! !]
	
	Len chars: 6
	[ a b c d e f]
	
	Len nest: 0
	Len nest: 4
	Lens: [ 2 4 8 16]
	
	Len buf: 10
	[ 3 3 3 3 3 3 3 3 3 3]
	
	Len two: 4
	Lens: [ 1 0 1 0]
	[ (ducks quack) (nil, nil) (inferno os) (nil, nil)]
	; 

## Exercises

- Play with the widths of different arrays, what happens?
- What can you initialize with the `* =>` operator, what can't you?
