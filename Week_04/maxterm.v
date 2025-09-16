module maxterm (
    input A, B, C, D,
    output Y
);

assign Y = (~B | ~D) &
           (~A | ~D) &
           (D | C | B);

endmodule
