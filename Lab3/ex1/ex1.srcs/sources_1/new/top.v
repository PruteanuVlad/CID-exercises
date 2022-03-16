`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 11:27:54 AM
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


module top(     input   in0,
                input   in1,
                input   sel,
                output  [3:0]   out0

    );
    
    
    mux_v0 mux_v0_0(.in0(in0),
                    .in1(in1),
                    .sel(sel),
                    .out0(out0[0])
    );
    
    mux_v1 mux_v1_0(.in0(in0),
                    .in1(in1),
                    .sel(sel),
                    .out0(out0[1])
    );
    
    mux_v2 mux_v2_0(.in0(in0),
                    .in1(in1),
                    .sel(sel),
                    .out0(out0[2])
    );
   
    mux_v3 mux_v3_0(.in0(in0),
                    .in1(in1),
                    .sel(sel),
                    .out0(out0[3])
    );
   
    
endmodule
