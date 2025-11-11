# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Compare and contrast One Hot and Binary encodings
- Both of these encodings use equations and implementations of a d flip flop to get to the end result. The one hot uses each state individually and uses the same number of flip flops as states. Then we make an equation for each state to send it to the correct state when w=0 or 1. Binary uses binary and you use the same number of flip flops as there are bits. Then you use the equatons you make to define the state it is currently in using binary.
### Which method did your team find easier, and why?
-One hot felt easier because the equations were easier to find and it broke down each state is its own d flip flop and the equations were used only to send each state to the state it would be in when w=0 or 1.
### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
In the lab we just did, there were 5 different states. If there were other things running on the FPGA as well as this state machine, binary would be better to run because it only took one switch and 3 leds. One hot used the same switch but 5 leds instead of 3. If you were wanting to utilize your resources better, binary would be the way to go because you would have extra leds available to use for other things.
