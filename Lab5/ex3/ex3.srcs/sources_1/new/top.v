`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2022 05:01:38 PM
// Design Name: 
// Module Name: top
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


module top( input in0,
            input in1,
            input in2,
            input in3,
            input [1:0] sel,
            input [3:0] data,
            output out0,
            output out1,
            output out2,
            output out3
    );
    wire mux4_0_out;
    wire parity_calc_0_out;
    wire [1:0] mux2_2b_0_out;
    wire out0,out1,out2,out3;
    
    
    
    mux4 mux4_0(.in0(in0),
                .in1(in1),
                .in2(in2),
                .in3(in3),
                .sel(sel),
                .out(mux4_0_out)
    );
    
    parity_calc parity_calc_0(.in(data),
                              .out(parity_calc_0_out)
    );
    
     mux2_2b mux2_2b_0(.in0(~sel),
                       .in1(sel),
                       .sel(parity_calc_0_out),
                       .out(mux2_2b_0_out)
    );
    
    demux4 demux4_0(.in(mux4_0_out),
           .sel(mux2_2b_0_out),
           .out0(out0),
           .out1(out1),
           .out2(out2),
           .out3(out3)
    );
    
endmodule
