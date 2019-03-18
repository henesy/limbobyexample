# Command-Line Arguments

Inferno has a dedicated module for processing commandline flags and arguments, arg(2). 

## Source

### args.b:17,22



### args.b:24,37



Note: After the processing of all flags, `argv` is re-set from the value contained within `arg` to remove the elements (if any) utilized by flags and their arguments. 

### args.b:41,51



## Demo

	; limbo args.b
	; args -h
	usage: args [-r] [-c mark] words...
	; args a b c d
	Argc after flags: 4
	→  a
	→  b
	→  c
	→  d
	; args -r a b c d
	Argc after flags: 4
	→  d
	→  c
	→  b
	→  a
	; args -c 'quack: ' a b c d
	Argc after flags: 4
	quack:  a
	quack:  b
	quack:  c
	quack:  d
	; args -r -c '-> ' d c b a
	Argc after flags: 4
	->  a
	->  b
	->  c
	->  d
	; 
