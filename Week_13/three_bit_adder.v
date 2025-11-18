module three_bit_adder(
    input [2:0] A,
    input [2:0] B,
    output [2:0] S,
    output Cout
);

    wire C1, C2;
    
    full_adder FA0(
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0),
        .Y(S[0]),
        .Cout(C1)
    );
    
    full_adder FA1(
        .A(A[1]),
        .B(B[1]),
        .Cin(C1),
        .Y(S[1]),
        .Cout(C2)
    );
    
    full_adder FA2(
        .A(A[2]),
        .B(B[2]),
        .Cin(C2),
        .Y(S[2]),
        .Cout(Cout)
    );

endmodule
