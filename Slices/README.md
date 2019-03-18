# Slices

Limbo supports slicing on arbitrary array types, including strings, as strings are arrays of bytes. 

## Source

### slices.b:19,22

This section shows slicing from the beginning of an array to the index up to before the variable `n`.

### slices.b:24,25

This section shows slicing from the index 4 to the end of the array.

### slices.b:27,28

This section shows several slicing operations. First `c` is created as the slice of `str` from index 2 through the index prior to the final index of `str`. The printout is then a string version of the slice of `c` from index 4 through the 7th index. 

## Demo

	; limbo slices.b
	; slices
	little_baby_ducks
	lit
	le_baby_ducks
	_bab
	; 

## Exercises

- What happens if you try to slice an empty string, `""`?
- Can you slice in the format `[:n:]`?
