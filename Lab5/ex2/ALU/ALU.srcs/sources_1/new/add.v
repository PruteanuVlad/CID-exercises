`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 11:33:59 AM
// Design Name: 
// Module Name: add
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


module add( input wire [7:0] in0,
            input wire [7:0] in1,
            output wire [7:0] out0,
            output wire carry_out
    );
    
    assign {carry_out,out0} = in0 + in1; 
    
endmodule
