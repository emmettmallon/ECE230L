module ripple_counter(
    input CLK, reset,
    output wire[2:0] Q
);
    t_flop s0(
        .T(1'b1),
        .CLK(CLK),
        .reset(reset),
        .Q(Q[0])
    );
    
    t_flop s1(
        .T(1'b1),
        .CLK(Q[0]),
        .reset(reset),
        .Q(Q[1])
    );
    
    t_flop s2(
        .T(1'b1),
        .CLK(Q[1]),
        .reset(reset),
        .Q(Q[2])
    );
endmodule
