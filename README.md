# Limbo by Example

These are programming examples in the spirit of [gobyexample](https://github.com/mmcgrana/gobyexample), but targeted to the Limbo programming language. 

These examples are tested on the [purgatorio](http://code.9front.org/hg/purgatorio/) fork of the Inferno operating system.

Examples will, if they reference lines in source within an explanation, utilize a plumbable string (see: plumb(1)) which indicates the line - or range of lines - which the explanation references.

Examples are composed in acme(1) which allows you to right click these strings to jump to the relevant source lines. 

The `;` rune indicates a command to be run from the Inferno sh(1) shell. 

## Building

If a given example provides a mkfile:

	; mk

Otherwise, there will only be one file, a Limbo source file which can be built with:

	; limbo file.b

You could then run said file with:

	; file

## Index

- [Hello World](./HelloWorld)
- [Values](./Values)
- [Constants](./Constants)

## References

- [The Limbo Programming Language](http://doc.cat-v.org/inferno/4th_edition/limbo_language/limbo)
- [Inferno Programming with Limbo](http://www.gemusehaken.org/ipwl/)
- [A Descent into Limbo](http://doc.cat-v.org/inferno/4th_edition/limbo_language/descent)
- [Limbo Programming](http://www.vitanuova.com/inferno/papers/limbomore.html)
- [Inferno Lab](https://github.com/caerwynj/inferno-lab/)
