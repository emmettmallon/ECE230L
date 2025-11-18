# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
- It makes a high and a low state, so it'll do one full wave. It has to do 2 full counts to reach 1Hz.
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
- On the first cycle, all the logic from the flip-flops will end up putting a 1 on every input.
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
- A 3-bit ring counter.
