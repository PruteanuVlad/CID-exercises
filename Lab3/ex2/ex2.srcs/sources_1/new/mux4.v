`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 12:23:28 PM
// Design Name: 
// Module Name: mux4
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


module mux4(    input in0,
                input in1,
                input in2,
                input in3,
                input sel0,
                input sel1,
                output out0

    );
    wire w0;
    wire w1;
    mux2 mux2_0(.in0(in0),
                .in1(in1),
                .sel(sel0),
                .out0(w0)
    );
    mux2 mux2_1(.in0(in2),
                .in1(in3),
                .sel(sel0),
                .out0(w1)
    );
    mux2 mux2_2(.in0(w0),
                .in1(w1),
                .sel(sel1),
                .out0(out0)
    );
endmodule
