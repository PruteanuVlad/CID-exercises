`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 12:03:14 PM
// Design Name: 
// Module Name: mux_v3
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


module mux_v3(  input in0,
                input in1,
                input sel,
                output out0

    );
    
    assign out0 = (sel==0) ? in0 : in1;
endmodule
