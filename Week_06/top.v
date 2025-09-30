module top(
    input [7:0] sw,
    output [5:0] led
    );
    
    light light_inst(
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0])
       );
     
    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .carry(led[2])
       );
       
       wire C;
       
     full_adder inst(
        .A(sw[4]),
        .B(sw[6]),
        .Y(led[3]),
        .cin(0),
        .cout(C)
       );
        
     full_adder second(
        .A(sw[5]),
        .B(sw[7]),
        .Y(led[4]),
        .cin(C),
        .cout(led[5])
       ); 
        
        
        
endmodule