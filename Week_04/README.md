# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

We learned how to make a K-map from a truth table and be able to make a minterm and maxterm equation from the K-map and be able to implement it onto a Basys3 board.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
- The ability for K-maps to wrap around the edges is a consequence of labeling the rows and columns. This specific ordering ensures that cells on opposite edges are logically adjacent, meaning their corresponding binary values differ by only a single bit.
### Why are the names Sum of Products and Products of Sums?
- The names come from their logical operations. A Sum of Products combines ANDed (product) terms with an OR (sum) operation, while a Product of Sums combines ORed (sum) terms with an AND (product) operation.
### Open the test.v file – how are we able to check that the signals match using XOR?
- We can check if the signals match in test.v by using if-statements to match by leveraging the property that the XOR of two identical bits is 0 and the XOR of two different bits is 1.
