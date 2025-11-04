module top(
    input [3:0]sw,
    input btnC,
    output [5:0]led
);

    d_flop flip(
        .D(sw[0]),
        .CLK(btnC),
        .Q(led[0]),
        .nQ(led[1])
     );
     
     jk_flop flop(
        .J(sw[1]),
        .K(sw[2]),
        .CLK(btnC),
        .Q(led[2]),
        .nQ(led[3])
     );
     
     t_flop floppy(
        .T(sw[3]),
        .CLK(btnC),
        .Q(led[4]),
        .nQ(led[5])
     );

endmodule
