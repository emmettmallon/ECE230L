# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
- The half adder adds two single-bit binary numbers while the half subtractor subtracts two single-bit binary numbers. The half adder outputs a sum and a carry while the half subtractor outputs a difference and a borrow. Both use a XOR gate for the primary output, but the half adders carry uses an AND gate while the half subtractors borrow uses a NOT-AND combination.
### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
- The end-around carry of One's compliment is dificult to iimplement because a carry is generated from the MSB and must be "wrapped-around" and added to the LSB of the result.
### 3 - What is the edge case and problem with Two’s Complement number representation?
- Two's compliment is an efficient way for computers to represent signed integers, the edge case and problem is related to its asymmetrical range and the most negative number.
