# Channels

Limbo supports concurrent communication and synchronization between processes via channels and a few structures working in tandem with channels. 

The design for channels is inspired primarily by "Communicating Sequential Processes" (CSP) by Tony Hoare. 

Further reading on CSP: http://www.usingcsp.com/cspbook.pdf

## Source

### chans.b:33,36

This statement shows three channels being made.

`done` is an unbuffered channel which transports integer values.

`msgChan` is an unbuffered channel, instantiated using buffered channel syntax, which transports strings. 

`numChan` is a buffered channel which transports a tuple representing an integer pair. 

### chans.b:38

The `spawn` statement is used to create a new process running a given function, in this case `summer()`. 

### chans.b:40,45

This section loads number pairs from the variable `i` and the number 2 from 0 to 14, covering 15 total iterations. After the iterative statement completes, a (later discarded) value is passed to the channel `done`. The first (and only) value in `msgChan` is then read out and printed. 

Note: Writing to a channel whose buffer (or lack thereof) is currently full is a blocking operation. Similarly, reading from a channel whose buffer (or lack thereof) is currently empty is a blocking operation. 

### chans.b:13,28

The function `summer()` operates an infinite loop which operates a single `alt` statement which is similar to a switch-case statement which operates on the presence of values within a channel.

The three channels are used to coordinate operation between the two processes.

`num` is checked first and a tuple of values is pulled out: a value and a power to raise said value to. The `n^p` operation is shown as `n**p` in Limbo, with the result being added to sum's current value. 

`done` is checked after `num` has no more values in its buffer. If a value is found, the sum is stringified and passed down `msg` and the looping condition is unset. 

The default value, indicated by `*=>`, is used when no channels have a value, so we sleep the current process for 5ms to de-schedule ourselves in case some form of scheduling is holding up our communications. 

## Demo

	; limbo chans.b
	; chans
	Sum: 0
	Sum: 1
	Sum: 5
	Sum: 14
	Sum: 30
	Sum: 55
	Sum: 91
	Sum: 140
	Sum: 204
	Sum: 285
	Sum: 385
	Sum: 506
	Sum: 650
	Final sum: 650
	;

## Exercises

- Can you pass an ADT over a channel?
- What happens if you pass a `ref` type over a channel?
