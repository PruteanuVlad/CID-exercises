`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 02:45:03 PM
// Design Name: 
// Module Name: syst2
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


module syst2(   input [7:0] in1,
                input [7:0] in2,
                output [7:0] out1,
                output [7:0] out2

    );
    wire [7:0] w1;
    syst3 syst3_1(  .in(in2),
                    .out(w1)
    );
    
    syst4 syst4_1(  .in1(in1),
                    .in2(w1),
                    .out(out1)
    );
    syst4 syst4_2(  .in1(w1),
                    .in2(in2),
                    .out(out2)
    );
     
 
 
 
    
    
endmodule
