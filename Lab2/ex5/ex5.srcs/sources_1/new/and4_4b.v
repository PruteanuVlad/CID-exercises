`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2022 12:32:43 PM
// Design Name: 
// Module Name: and4_4b
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


module and4_4b( input [3:0] in0,
                input [3:0] in1,
                input [3:0] in2,
                input [3:0] in3,
                output [3:0] out0

    );
    and4_1b and4_1b_0(  .in0(in0[0]),
                        .in1(in1[0]),
                        .in2(in2[0]),
                        .in3(in3[0]),
                        .out0(out0[0])

    );
    
    and4_1b and4_1b_1(  .in0(in0[1]),
                        .in1(in1[1]),
                        .in2(in2[1]),
                        .in3(in3[1]),
                        .out0(out0[1])

    );
    
    and4_1b and4_1b_2(  .in0(in0[2]),
                        .in1(in1[2]),
                        .in2(in2[2]),
                        .in3(in3[2]),
                        .out0(out0[2])

    );
    
    and4_1b and4_1b_3(  .in0(in0[3]),
                        .in1(in1[3]),
                        .in2(in2[3]),
                        .in3(in3[3]),
                        .out0(out0[3])

    );
    
endmodule
