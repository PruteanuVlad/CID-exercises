`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2022 05:12:50 PM
// Design Name: 
// Module Name: equal_n
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


module equal_n #(parameter n = 8)
    (   input [n-1:0]  in0,
        input [n-1:0]  in1,
        output         out0
        
    );
    assign out0 = (in0==in1);
endmodule
