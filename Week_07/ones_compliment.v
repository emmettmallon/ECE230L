module ones_compliment (
        input [3:0] A,
        input [3:0] B,
        output [3:0] Y
);

 wire [3:0] carry;
 wire [3:0] AplusB;
 
    full_adder one(
        .A(A[0]),
        .B(B[0]),
        .cin(0),
        .Y(AplusB[0]),
        .cout(carry[0])
     );
     
     full_adder two(
        .A(A[1]),
        .B(B[1]),
        .cin(carry[0]),
        .Y(AplusB[1]),
        .cout(carry[1])
     );
     
     full_adder three(
        .A(A[2]),
        .B(B[2]),
        .cin(carry[1]),
        .Y(AplusB[2]),
        .cout(carry[2])
     );
     
     full_adder four(
        .A(A[3]),
        .B(B[3]),
        .cin(carry[2]),
        .Y(AplusB[3]),
        .cout(carry[3]) //around!
     );
    
    wire [3:0] final_sum;
    wire [3:0] new_carry;
    
     full_adder five(
        .A(AplusB[0]),
        .B(1'b0),
        .cin(carry[3]),
        .Y(final_sum[0]),
        .cout(new_carry[0])
     );
     
     full_adder six(
        .A(AplusB[1]),
        .B(1'b0),
        .cin(new_carry[0]),
        .Y(final_sum[1]),
        .cout(new_carry[1])
     );
     
     full_adder seven(
        .A(AplusB[2]),
        .B(1'b0),
        .cin(new_carry[1]),
        .Y(final_sum[2]),
        .cout(new_carry[2])
     );
     
     full_adder eight(
        .A(AplusB[3]),
        .B(1'b0),
        .cin(new_carry[2]),
        .Y(final_sum[3]),
        .cout(new_carry[3])
     );
endmodule