# Generics

Limbo supports polymorphic types as well as a form of pseudo-unions and pseudo-interfaces as per C and Go respectively. 

Warning: This is an example about an undocumented feature of Limbo. All assertions or explanations provided are considered conjecture until proven otherwise. 

## Source

### generics.b:17,21



### generics.b:23,32



### generics.b:34,44



### generics.b:46,50



### generics.b:56,63



`.ws()` is defined at: generics.b:103,109

### generics.b:65,69



### generics.b:71,83



`ismember()` is defined at: generics.b:132,144

`.eq()` is defined at: generics.b:111,114

### generics.b:85,87



`rev()` is defined at: generics.b:154,161

### generics.b:89,98



`pair()` is defined at: generics.b:146,152

## Demo

	; generics
	Type something: asdf
	Broke on 'a'
	5
	Five
	Found 9!
	Head was: :(
	Head is: ☺
	Head of plist: ( hello, { :(, 7 } )
	; 

## Exercises

- Can you find a way to make the `eq()` function do a deep comparison of `Int`'s?
- Try removing the `.String` from the `words` definition, what happens?
- Try removing `ref anywhere, see what happens.

## References

- https://github.com/caerwynj/inferno-lab/blob/master/78/README.md
- https://github.com/caerwynj/inferno-lab/blob/master/27/sexprs.b
- /appl/lib/lists.b
