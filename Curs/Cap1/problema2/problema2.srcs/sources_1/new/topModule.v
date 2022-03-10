`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 02:23:09 PM
// Design Name: 
// Module Name: topModule
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


module topModule (
        output [7:0] out,
        input [7:0] in1,
        input [7:0] in2,
        input [7:0] in3 );
    wire [7:0] wire1 , wire2;
    bottomModule mod1(
                .out(wire1),
                .in1(in1),
                .in2(in2)),
                 mod2(
                .out(wire2),
                .in1(wire1),
                .in2(in3)),
                 mod3(
                .out(out),
                .in1(in3),
                .in2(wire2));
endmodule