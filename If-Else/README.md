# If-Else

Branching in Limbo with if-else trees is similar to branching with if-else trees in C. 

## Source

### ifelse.b:22,26

	if(bufio == nil) {
		sys->fprint(stderr, "err: could not load %s ­ %r\n", Bufio->PATH);
		raise "fail:load";
	}

This is a test whether the variable `bufio` is `nil`. 

The `nil` keyword is a special operator in that it represents a lack of value for a type and can be equivalent to different values depending on the context. 

Note: The value nil is the "undefined" or "explicitly empty" value for non-numeric types. That is, numeric types do not have a `nil` value equivalent. 0 is considered the presence of a value, etc. 

### ifelse.b:28,33

	str := "";
	if(str == nil)
		print("String %s is nil\n", str);

	if(str == "")
		print("String %s is empty\n", str);

These tests against the string `str` show that for the purposes of a string, `nil` == `""`. That is, a lack of value in a string, is an empty string. 

### ifelse.b:35,42

	l: list of string;
	if(l == nil)
		print("List is nil\n");

	l = "ducks" :: l;
	if(l != nil) {
		print("List is not nil, 0th is: \"%s\"\n", hd l);
	}

The variables `l` is a list containing a series of strings. If there are no strings within the string, it is considered a `nil` list. 

The `::` operator is unique to lists, it prepends to the list the value on its right side, the value on its left side. That is, the value is inserted in precedence to the head. In this case, there is no head value present, so the string `"ducks"` becomes to head of the list. 

The `hd` keyword stands for head and returns the head of the list to its right. 

### ifelse.b:44,57

Source is not shown for brevity.

These tests are a series of numeric comparisons which provide output depending on properties of said numeric value. In this case, the numeric value is the variable `num`. Note the intermixed omission and presence of curly braces. 

## Demo

	; limbo ifelse.b
	; ifelse
	String  is nil
	String  is empty
	List is nil
	List is not nil, 0th is: "ducks"
	7 is odd
	9 has one digit
	; 

## Exercises

- Change the value of `num`, what output do you receive?
- Change `Bufio->PATH` to a string such as `"ducks.dis"`, do you receive an exception or an error?
