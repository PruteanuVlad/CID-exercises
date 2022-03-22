`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2022 01:32:24 PM
// Design Name: 
// Module Name: subn_tb
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


module subn_tb(

    );
    
    reg [7:0] in0;
    reg [7:0] in1;
    reg b_in;
    wire [7:0] d;
    wire b_out;
    reg clock;
    subn
    #(
        .n(8)
    )
    dut
    (
        .in0(in0),
        .in1(in1),
        .b_in(b_in),
        .d(d),
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
        in0 = 10;
        in1 = 2;
        b_in = 0;
        #10
        in0 = 11;
        in1 = 5;
        b_in = 1;
        #10
        in0 = 2;
        in1 = 15;
        b_in = 0;
        #10
        in0 = 6;
        in1 = 15;
        b_in = 1;
        #10
        $stop();
    end
    
endmodule
