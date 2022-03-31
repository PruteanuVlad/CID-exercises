`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2022 08:26:11 PM
// Design Name: 
// Module Name: demux_top
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


module demux_top(input sel,
                 input in0,
                 output [3:0] out0,
                 output [3:0] out1

    );
    
     demux_v0 demux_v0_0(.sel(sel),
                         .in0(in0),
                         .out0(out0[0]),
                         .out1(out1[0])
    );
    
    demux_v1 demux_v1_0(.sel(sel),
                         .in0(in0),
                         .out0(out0[1]),
                         .out1(out1[1])
    );
    
    
    demux_v2 demux_v2_0(.sel(sel),
                         .in0(in0),
                         .out0(out0[2]),
                         .out1(out1[2])
    );
    
    demux_v3 demux_v3_0(.sel(sel),
                         .in0(in0),
                         .out0(out0[3]),
                         .out1(out1[3])
    );
endmodule
