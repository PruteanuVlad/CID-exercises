`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 11:27:54 AM
// Design Name: 
// Module Name: mux_v0
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


module mux_v0(  input in0,
                input in1,
                input sel,
                output out0

    );
    assign out0 = (in0 & ~sel) | (in1 & sel);
endmodule
