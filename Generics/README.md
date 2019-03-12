# Generics

Limbo supports polymorphic types as well as a form of pseudo-unions and pseudo-interfaces as per C and Go respectively. 

Warning: This is an example about an undocumented feature of Limbo. All assertions or explanations provided are considered conjecture until proven otherwise. 

## Source

### generics.b:17,21

This is a polymorphic type. The type `T` is the generic type which will match whatever type is provided with a given instantiation/declaration of the `Rd` adt type. 

Note the method declaration format for the adt to operate on the variable instance the method is called upon. 

### generics.b:23,32

This is an adt with pick tags. An adt with pick tags is roughly equivalent to an interpretation of unions from C. 

If the variable type is instantiated with a `.Type` clause then the pick within the adt will be called looking for a match for `Type =>`. If the case is matched, then the contents of the case segment will be included with the related instantiation of the aforementioned variable. 

Note that there are two different calling formats for pick, in an adt, and in a function. 

### generics.b:34,44

This is a polymorphic adt which also possesses pick tags. 

Note that the member `w` is of type `T`, implying it is matched to the type with which the adt is intantiated. Additionally, pick tag types are separate from generic `T` types, as is shown later. 

### generics.b:46,50

This is an adt with a type definition declared which acts as a shortcut to a reference to an instance of said adt.

### generics.b:56,63

This section instantiates an `Rd` instance with `T` declared to be of type `ref Iobuf` for the variable `rd`. The `ws()` function reads from the provided `ref Iobuf` until a non-whitespace character is processed. 

`.ws()` is defined at: generics.b:103,109

Note that instances of polymorphic types are always prefixed with `ref`.

### generics.b:65,69

This section instantiates two variable instances of the `Num` type using `Int` and `String` as the pick type, respectively. The `stringify()` method is called on both, fulfilling the `string` output type for printing despite the differing pick tag declarations.

In this case, `stringify()` uses the pick switch to determine which variable to access and what string to output. 

Note that instances of types with pick tags are always prefixed with `ref`. 

### generics.b:71,83

This section uses both pick tags and polymorphic types at once.

The list `words` is a list of references to `Word` adt's with `Int` as its `T` type and `String` as its pick tag. 

The variable `sword` instantiates a reference to a `Word` adt with `Int` as its `T` type and `String` as its pick tag. 

The `ismember()` function applies an interface-like check as a `for { T => }` on its arguments looking for a fulfilling `eq()` function to determine whether two types are equivalent. 

`ismember()` is defined at: generics.b:132,144

`.eq()` is defined at: generics.b:111,114

### generics.b:85,87

This section takes in a list and reverses said list. 

Note that the `rev()` function doesn't care what type the list is a list of, it uses the type provided within its arguments. 

`rev()` is defined at: generics.b:154,161

### generics.b:89,98

The `pair()` function allows two separate types `T`, indicated as `T1` and `T2`. Both types can be used and are matched based on the order of types in its arguments. 

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

- Try changing the pick tag for one of the instances of `Num`, how does `stringify()` behave?
- Can you find a way to make the `eq()` function do a deep comparison of `Int`'s?
- Try removing the `.String` from the `words` definition, what happens?
- Try removing `ref` anywhere, see what happens.

## References

- https://github.com/caerwynj/inferno-lab/blob/master/78/README.md
- https://github.com/caerwynj/inferno-lab/blob/master/27/sexprs.b
- /appl/lib/lists.b
