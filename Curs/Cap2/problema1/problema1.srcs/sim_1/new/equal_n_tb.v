`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2022 05:46:04 PM
// Design Name: 
// Module Name: equal_n_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module equal_n_tb(

    );
    localparam  n = 8;
    reg [n-1:0] a;
    reg [n-1:0] b;
    wire c;
    equal_n equal_n_0 
    (   .in0(a),
        .in1(b),
        .out0(c)
        
    );
    initial begin
        a = 1;
        b = 0;
        #2
        a = 2;
        b = 2;
        #2
        a = 3;
        b = 0;
        #2
        $stop();
    end
endmodule
