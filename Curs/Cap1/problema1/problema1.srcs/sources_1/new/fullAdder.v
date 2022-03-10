`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 12:47:24 PM
// Design Name: 
// Module Name: fullAdder
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


module fullAdder(   output [3:0]    out,
                    output          Crout,
                    input  [3:0]    in0,
                    input  [3:0]    in1,
                    input           crIn);
                     
    wire    [4:0]   sum;
    assign sum = in0 + in1 + crIn;
    assign out = sum[3:0];
    assign crOut = sum[4];     
endmodule
