`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 11:47:24 AM
// Design Name: 
// Module Name: special
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


module special(input [7:0] in0,
               input [7:0] in1,
               output  [7:0] out0

    );
    assign out0 = ((in0[0]==in1[0])&
                  (in0[7]==in1[7])&
                  (in0[0]==in0[7])) ? 1:0;
endmodule
