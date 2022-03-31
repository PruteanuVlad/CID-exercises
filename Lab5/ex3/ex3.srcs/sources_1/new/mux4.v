`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2022 05:01:38 PM
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


module mux4(input in0,
            input in1,
            input in2,
            input in3,
            input [1:0] sel,
            output out
    );
    wire mux2_0_out;
    wire mux2_1_out;
    
    mux2 mux2_0(.in0(in0),
                .in1(in1),
                .sel(sel[0]),
                .out(mux2_0_out)
    );
    
    mux2 mux2_1(.in0(in2),
                .in1(in3),
                .sel(sel[0]),
                .out(mux2_1_out)
    );
    
    mux2 mux2_2(.in0(mux2_0_out),
                .in1(mux2_1_out),
                .sel(sel[1]),
                .out(out)
    );
endmodule
