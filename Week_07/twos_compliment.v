module twos_compliment (
        input [7:0] A,
        output [7:0] Y
);

wire [7:0] carry;


full_adder one(
        .A(~A[0]),
        .B(1'b0),
        .cin(1),
        .Y(Y[0]),
        .cout(carry[0])
     );
     
     full_adder two(
        .A(~A[1]),
        .B(1'b0),
        .cin(carry[0]),
        .Y(Y[1]),
        .cout(carry[1])
     );
     
     full_adder three(
        .A(~A[2]),
        .B(1'b0),
        .cin(carry[1]),
        .Y(Y[2]),
        .cout(carry[2])
     );
     
     full_adder four(
        .A(~A[3]),
        .B(1'b0),
        .cin(carry[2]),
        .Y(Y[3]),
        .cout(carry[3]) //around!
     );
    
     full_adder five(
        .A(~A[4]),
        .B(1'b0),
        .cin(carry[3]),
        .Y(Y[4]),
        .cout(carry[4])
     );
     
     full_adder six(
        .A(~A[5]),
        .B(1'b0),
        .cin(carry[4]),
        .Y(Y[5]),
        .cout(carry[5])
     );
     
     full_adder seven(
        .A(~A[6]),
        .B(1'b0),
        .cin(carry[5]),
        .Y(Y[6]),
        .cout(carry[6])
     );
     
     full_adder eight(
        .A(~A[7]),
        .B(1'b0),
        .cin(carry[6]),
        .Y(Y[7]),
        .cout(carry[7])
     );
endmodule