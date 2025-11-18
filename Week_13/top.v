module top(
    input btnC, btnU,
    output [6:0]led
);

    ripple_counter rip(
        .CLK(btnC),
        .reset(btnU),
        .Q(led[2:0])
    );
    
    modulo_counter mod(
        .CLK(btnC),
        .reset(btnU),
        .state(led[5:3]),
        .out(led[6])
    );

endmodule
