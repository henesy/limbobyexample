# Loops

Looping in Limbo is similar to looping in C. Supported loop formats are for, while, and do-while. 

## Source

### loops.b:18,23

	for(i := 0; i < 10; i++){
		if(i % 2 == 0)
			continue;

		print("%d\n", i * i);
	}

A for loop consists of an initialization, qualification, operation, and post-iteration sequence. 

Before the loop begins, but before the initial check, `i := 0` is run.

After each loop iteration, `i++` is performed, then `i < 10` is checked. 

The `continue` keyword, from the point it is called, skips to the next loop iteration. In this case, `continue` is called if `i` is an even number. If `i` is an odd number, `i²` is printed. 

Note that the `continue` keyword does not skip the post-iteration operation. 

### loops.b:28,29

	while(n)
		print("%d\n", n--);

A while loop will check the qualifier for whether to enter another iteration, then, perform its operation. This loop will print the value of `n` in the range [7,1]. 

Note that in this case the braces are omitted.

### loops.b:33,36

	do{
		print("%d\n", ++n);
		break;
	}while(1);

A do-while loop will perform its operation, then check the qualifier for whether to enter another iteration. In this case, the qualifier is a constant which is quantified as a true value, so, this loop would iterate forever.

The `break` keyword interrupts iterative processing. In this case, it terminates the loop immediately after the print on its first iteration. 

Note that we reuse the value of `n`, In this case, the incremented value of `n` is printed, as when the preceding loop ends, the value of `n` is 0. 

## Demo

	; limbo loops.b
	; loops
	== for
	1
	9
	25
	49
	81
	== while
	7
	6
	5
	4
	3
	2
	1
	== do
	1
	; 

## Exercises

- Try reversing the ++/-- operators in different places, what happens?
- Try omitting various portions of the for loop syntax, what happens?
- Is `for(;;);` an infinite loop?
- Make the condition for a loop something similar to --n, how many iterations does it run for?
