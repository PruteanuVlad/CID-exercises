`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2022 05:50:24 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb(

    );
    reg in0, in1, in2 ,in3;
    reg [1:0] sel;
    reg [3:0] data;
    wire out0, out1, out2, out3;
    top dut(.in0(in0),
            .in1(in1),
            .in2(in2),
            .in3(in3),
            .sel(sel),
            .data(data),
            .out0(out0),
            .out1(out1),
            .out2(out2),
            .out3(out3)
    );
    initial
    begin
        in0 = 0;
        in1 = 0;
        in2 = 0;
        in3 = 0;
        sel = 0;
        data = 0;
        #10
        sel = 1;
        data = 1;
        #10
        in0 = 1;
        in1 = 1;
        in2 = 1;
        in3 = 1;
        sel = 2;
        data = 2;
        #5
        sel = 3;
        data = 3;
        #5
        sel = 2;
        data = 4;
        #5
        sel = 0;
        data = 5;
        #5
        in0 = 0;
        in2 = 0;
        in3 = 0;
        data = 6;
        #5
        data = 7;
        #5
        in0 = 1;
        in3 = 1;
        data = 0;
    end
    
    
    initial
    begin
        #90
        $stop();
    end
    
endmodule
