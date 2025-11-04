module t_flop(
    input T, CLK,
    output Q, nQ
);

    jk_flop flop(
        .J(T),
        .K(T),
        .CLK(CLK),
        .Q(Q),
        .nQ(nQ)
     ); 

endmodule
