# Hello World

This program prints the classic hello world message. 

## Source

### hello.b:1

	implement Hello;

The `implement` keyword tells us the name of the module being defined. This file is associated with the implementation of the `Hello` module.

### hello.b:3,4

	include "sys.m";
	include "draw.m";

The `include` keyword provides the modules which we can load and unload from. As per limbo(1), the current working directory is searched, then `/modules`/, for valid module files to match the `include` statements. 

### hello.b:6,8

	Hello: module {
		init:	fn(nil: ref Draw->Context, nil: list of string);
	};

This is a module definition. Module definitions can appear in `.m` module files or they can be provided in a `.b` source file.

The `init` line provides a definition for the name `init`, in this case, it's a function definition as indicated by `fn` which takes two arguments, but does not attribute variables to them due to the `nil` keyword. You could think of this definition as analogous to a function prototype in C.

The `ref Draw->Context` definition states that the variable is a reference to a variable of type `Context` within the module `Draw`. 

The `list of string` definition states that the variable is a list of strings.

### hello.b:10

	init(nil: ref Draw->Context, nil: list of string) {
	...
	}

This is a function definition. The function is named `init` and its arguments and return type(s) must match that of the prototype in the module definition. 

### hello.b:11

	sys := load Sys Sys->PATH;

This is a variable definition and initalization for the name `sys`.

The `:=` operator tells us that the variable's type is defined implicitly by the return value of the righthand side. 

The `load` keyword loads from a given module in the format `load Module path`. In this case, the path is provided by the module definition. If `Sys` were a module in our directory, we could load it via `load Sys "./sys.dis"`. The `Sys` module definition is provided inside Inferno at `/module/sys.m`. 

### hello.b:13

	sys->print("Hello World! ☺\n");

This line calls a function named `print`, from the `Sys` module, which is loaded into the variable `sys`. The argument provided is a unicode string. All strings in Limbo are considered to be valid unicode (utf-8). 

### hello.b:14

	exit;

The `exit` keyword terminates a thread and frees any resources belonging exclusively to it. 

## Demo

	; limbo hello.b
	; hello
	Hello World! ☺
	;

## Exercises

- Try removing the arguments to `init()`, what happens?
