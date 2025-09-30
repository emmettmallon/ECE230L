module full_adder(
    input A, B, cin,
    output Y, cout
);

    assign Y = (A ^ B ^ cin);
    assign cout = (B & cin) |
                  (A & B) |
                  (A & cin);
                  
endmodule