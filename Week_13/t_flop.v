module t_flop(
    input T, CLK, reset,
    output Q
);

    d_flop flop(
        .D(~Q),
        .CLK(CLK & T),
        .reset(reset),
        .Q(Q)
    );

endmodule
