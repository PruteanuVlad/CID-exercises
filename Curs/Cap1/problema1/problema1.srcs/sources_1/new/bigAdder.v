`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 01:03:22 PM
// Design Name: 
// Module Name: bigAdder
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


module bigAdder(    output  [15:0]  out,
                    output          crOut,
                    input   [15:0]  in0,
                    input   [15:0]  in1,
                    input           crIn    );
    wire    [2:0]   carry;
    fullAdder fullAdder_0(  .out(out[3:0]),
                            .crOut(carry[0]),
                            .in0(in0[3:0]),
                            .in1(in1[3:0]),
                            .crIn(crIn));
    fullAdder fullAdder_1(  .out(out[7:4]),
                            .crOut(carry[1]),
                            .in0(in0[7:4]),
                            .in1(in1[7:4]),
                            .crIn(carry[0]));
    fullAdder fullAdder_2(  .out(out[11:8]),
                            .crOut(carry[2]),
                            .in0(in0[11:8]),
                            .in1(in1[11:8]),
                            .crIn(carry[1]));
    fullAdder fullAdder_3(  .out(out[15:12]),
                            .crOut(crOut),
                            .in0(in0[15:12]),
                            .in1(in1[15:12]),
                            .crIn(carry[2]));
               
 
endmodule
