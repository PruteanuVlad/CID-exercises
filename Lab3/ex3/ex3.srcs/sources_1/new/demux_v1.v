`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2022 08:26:11 PM
// Design Name: 
// Module Name: demux_v1
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


module demux_v1(input sel,
                input in0,
                output out0,
                output out1

    );
    assign out0 = !sel ? (in0 ? 1 : 0) : 0;
    assign out1 = sel ? (in0 ? 1 : 0) : 0;
endmodule
