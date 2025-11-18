module modulo_counter(
    input CLK, reset,
    output [2:0] state,
    output out
);

    wire[2:0] Q;
    wire[2:0] D;
    wire Q_div;
    wire next_div;
    wire[2:0] plus1;
    wire Cout;
    
    d_flop d0(
        .D(D[0]),
        .CLK(CLK),
        .reset(reset),
        .Q(Q[0])
    );
    
    d_flop d1(
        .D(D[1]),
        .CLK(CLK),
        .reset(reset),
        .Q(Q[1])
    );
    
    d_flop d2(
        .D(D[2]),
        .CLK(CLK),
        .reset(reset),
        .Q(Q[2])
    );
    
    assign state = Q;

    three_bit_adder add(
        .A(state),
        .B(3'b001),
        .S(plus1),
        .Cout(Cout)
    );
    
    wire tc;
    assign tc = (state == 3'b101);
    assign D = tc ? 3'b000 : plus1;
    assign next_div = tc ? ~Q_div : Q_div;
    
    d_flop div(
        .D(next_div),
        .CLK(CLK),
        .reset(reset),
        .Q(Q_div)
    );
    
    assign out = Q_div;
    
endmodule
