# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
- Structural Verilog can be used to implement latches, it is just not ideal because there are difficulties with timing analysis, resource utilization, and debugging make it an undesireable approach. 
### What is the meaning of always @(*) in a sensitivity block?
- It tells the simulation software to automatically include all signals that are read inside the always block, it is useful for describing combinational logic.
### What importance is memory to digital circuits?
- Memory is importand to digital circuits because it allows them to store and recall data, which is essential for creating sequential circuits.
