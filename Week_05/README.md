# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Explain the role of the Top Level file.
- The top.v file defines the highest level of hierarchy in a design, providing a complete representation of the system.
### 2 - Explain the function of the Constraints file.
- The constraint.xdc file essentially bridges the gap the logical element in the code and the physical element of the FPGA board.
### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?
- Yes, because it was a lot easier to group the maxterms in circuit_a because there were a lot grouped together, and it was easier to get the minterms in circuit_b.
