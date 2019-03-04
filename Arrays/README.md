# Arrays

Arrays in Limbo are dynamic and indexed by 0. They can be initialized providing a size, or declared and initialized in two separate statements if no size is specified. 

Disclaimer: I don't like this example very much, but I'm not sure how to shore it up. The lesson here is to use lists.

## Source

### arrays.b:20,30

This shows the initialization of an array of integers using a variable, `width`, as the count of elements for the array. 

Note that on `arrays.b:13,15` the array of integers, `nums`, and the integer, `width`, are declared. 

### arrays.b:32,44

Limbo supports indexing strings. The length, as per `len`, of a string is equivalent to the number of utf-8 runes within a given string. All strings in Limbo are utf-8 strings. 

This section demonstrates the copying of a string into an array of bytes. 

### arrays.b:46,57

Since the size of arrays is dynamic, one can declare an array to the size of a dynamic value. The array of bytes, `dbl`, is initialized to double the size of the array `arr`. 

Each index of `arr` is copied to two neighboring indices in `dbl`. 

### arrays.b:59,67

Arrays can be initialized to a given set of values as well. In this case, the characters `[a-f]` are used as values to populate the array of strings, `chars`. The size of the array will be equal to the number of elements provided in the aforementioned set. 

### arrays.b:69,84

Arrays can be declared to be arrays of other arrays. In this case, the array `nest` is an array of four arrays of strings of size `2 << i`. 

### arrays.b:86,97

Arrays can be conditionally initialized to values. The syntax is similar to the `case` statement syntax. In this case, the first three indices are initialized to the byte value of 4. Indices three and greater are initialized to the byte value of 0.

Note: Multiple conditional sections are not necessary to initialize to a given value. 

### arrays.b:99,123

This shows the declaration of an array of size 4 containing lists of string pairs. The lists begin as empty lists, comparable to nil. 

The lists at indices 0 and 2 are prepended with pairs of strings. The head of the respective lists are then printed by extracting the pairs of strings prepended previously. 

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
	[ 4 4 4 3 3 3 3 3 3 3]
	
	Len two: 4
	Lens: [ 1 0 1 0]
	[ (ducks quack) (nil, nil) (inferno os) (nil, nil)]
	; 

## Exercises

- Play with the widths of different arrays, what happens?
- What can you initialize to with the `* =>` operator, what can't you?
- Remove a case section from the `* =>` operator section, are all indices set to that value?
