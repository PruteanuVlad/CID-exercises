`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2022 12:32:43 PM
// Design Name: 
// Module Name: and4_1b
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


module and4_1b( input in0,
                input in1,
                input in2,
                input in3,
                output out0

    );
    assign out0 = in0 & in1 & in2 & in3;
endmodule
