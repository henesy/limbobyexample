# Spawn

Limbo supports the creation of processes operating on a given function via the `spawn` statement. Functions passed to spawn cannot have a return value.

Inferno processes share memory with their parent processes which spawn them, bar the process's respective stack. Inferno processes are pre-emptively scheduled by the Inferno kernel. These processes are analogous, but not equivocal to, threads in unix-like systems. 

Synchronization between processes is recommended to be done through [channels](../Channels).

For further reading on potential inspirations for Inferno processes, see [rfork(2)](http://man.cat-v.org/9front/2/fork).

## Source

### spawn.b:31,40

This section spawns four processes all of which will attempt to print to their standard output. Two functions spawn running the `quacker()` function and two function spawn running the `summer()` function with varying arguments. 

Note: The call to `sleep()` in this context within the `init()` function. 

## Demo

	; limbo spawn.b
	; spawn
	quack!
	Sum (2): 0
	quack!
	Sum (3): 0
	Sum (2): 1
	Sum (3): 1
	Sum (2): 3
	Sum (3): 3
	Final sum (2): 3
	Sum (3): 6
	Final sum (3): 6
	; 

## Exercises

- How many different orders do you see the print statements occur in?
- What happens if you remove the sleep?
