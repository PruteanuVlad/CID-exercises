`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 02:45:36 PM
// Design Name: 
// Module Name: topSyst
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


module topSyst( input [7:0] in1,
                input [7:0] in2,
                input [7:0] in3,
                output  [7:0] out1,
                output  [7:0] out2

    );
    wire [7:0] w1, w2;
    syst1 syst1_0(  .in1(in1),
                    .in2(in2),
                    .out(w1)
    );
    syst1 syst1_1(  .in1(in2),
                    .in2(in3),
                    .out(w2)
    );
    syst2 syst2_0(  .in1(w1),
                    .in2(w2),
                    .out1(out1),
                    .out2(out2)
    );
    
    
    
endmodule
