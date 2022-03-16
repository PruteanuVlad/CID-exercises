`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 10:58:34 PM
// Design Name: 
// Module Name: full_adder8_tb
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


module full_adder8_tb(

    );
    
    
    reg [7:0] a;
    reg [7:0] b;
    reg carry_in;
    wire [7:0] sum;
    wire carry_out;
    
    
    full_adder8 dut(.in0(a),
                .in1(b),
                .c_in(carry_in),
                .sum(sum),
                .c_out(carry_out)
    );
    
    
    initial
    begin
        a = 0;
        b = 0;
        carry_in = 0;
        #10
        a = 10;
        b = 11;
        carry_in = 1;
        #10
        a = 300;
        b = 300;
        carry_in = 0;
        #10
        a = 300;
        b = 300;
        carry_in = 0;
        #10
        a = -1;
        b = 1;
        carry_in = 0;
        #10
        a = -1;
        b = 0;
        carry_in = 1;
        #10
        $stop();
    end
    
endmodule
