`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2022 12:11:01 PM
// Design Name: 
// Module Name: sub2_tb
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


module sub2_tb(

    );
    reg in0,in1,b_in;
    wire d, b_out;
    reg clock;
    sub2 dut(.in0(in0),
             .in1(in1),
             .b_in(b_in),
             .diff(d),
             .b_out(b_out)

    );
    initial
    begin
        clock = 0;
        forever #10 clock = ~clock;
    end
    
    initial
    begin
        in0 = 0;
        in1 = 0;
        b_in = 0;
        #10
        in0 = 0;
        in1 = 0;
        b_in = 1;
        #10
        in0 = 0;
        in1 = 1;
        b_in = 0;
        #10
        in0 = 0;
        in1 = 1;
        b_in = 1;
        #10
        in0 = 1;
        in1 = 0;
        b_in = 0;
        #10
        in0 = 1;
        in1 = 0;
        b_in = 1;
        #10
        in0 = 1;
        in1 = 1;
        b_in = 0;
        #10
        in0 = 1;
        in1 = 1;
        b_in = 1;
        #10
        $stop();
    end
endmodule
