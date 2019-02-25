# Values

Limbo has a variety of primitive types available and possesses the ability to coerce between them. 

## Source

### values.b:6,7

	sys: Sys;
	print, sprint: import sys;

The `import` statement allows you to define a local name which is tied to a name in another space. That is, the `print` name becomes equivalent to `sys->print`. 

### values.b:16,19

	n := 7;
	b := big 8;
	f := real 3.2;
	str := "String!";

Three variables are defined, `n` is an integer, `b` is a long integer, `f` is a floating point number, `str` is a string. 

Rather than the word float, the word `real` is used to identify a floating point number.

Note: At present, Inferno only supports 32-bit architectures, so all types are 32-bit types. 

### values.b:21,22

	print("%d\n", 0 || 1);
	print("%d\n", 0 && 1);

There are no boolean types in Limbo. As per C, 0 indicates false and values ≥ 1 indicate true. 

### values.b:24,26

	print("%d\n", n / int f);
	print("%f\n", real n / f);
	print("%bd\n", b / big 8);

Types and type conflicts are checked at compile-time. Prefacing a variable or value with a type name coerces the variable or value to an equivalent value of the provided type. 

There are no implicit conversions of types, all type coercion must be explicitly stated. 

### values.b:28,29

	print("%s\n", str[:len str-1]);
	print("%s\n", str[2:]);

Array types can be sliced. The `:` operator acts on a range between either a value or to one end of the array if no value is provided on a side of the `:`. 

The `len` statement provides the number of elements in a string, array, or list. 

### values.b:31,32

	print("%s", "inferno " + "os " + sprint("%c", '\n'));
	print("limbo" + " " + "lang\n");

Strings can be concatenated via `+` and `+=` (not shown). 

## Demo

	; limbo values.b
	; values
	1
	0
	2
	2.187500
	String
	ring!
	inferno os 
	limbo lang
	; 

## Exercises

- On values.b:31 remove the  `"%s",`, what happens?
- Try removing type coercions and change format specifiers, see what happens!
