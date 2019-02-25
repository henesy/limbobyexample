# Limbo by Example

Programming examples in the spirit of [gobyexample](https://github.com/mmcgrana/gobyexample), but targeted to the Limbo programming language. 

These exercises are tested on the [purgatorio](http://code.9front.org/hg/purgatorio/) fork of the Inferno operating system.

The `;` rune in examples indicates a command to be run from the Inferno sh(1) shell. 

## Building

If a given example provides a mkfile:

	; mk

Otherwise, there will only be one file, a Limbo source file which can be built with:

	; limbo file.b

You could then run said file with:

	; file

## Index

[Hello World](./HelloWorld)

## References

- [The Limbo Programming Language](http://doc.cat-v.org/inferno/4th_edition/limbo_language/limbo)
- [Inferno Programming with Limbo](http://www.gemusehaken.org/ipwl/)
- [A Descent into Limbo](http://doc.cat-v.org/inferno/4th_edition/limbo_language/descent)
- [Limbo Programming](http://www.vitanuova.com/inferno/papers/limbomore.html)
