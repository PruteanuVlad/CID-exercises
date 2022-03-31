`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 11:33:59 AM
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


module top(input [15:0] instruction,
           input [7:0] data0,
           input [7:0] data1,
           output overflow_flag,
           output [7:0] out0,
           output [7:0] out1,
           output [7:0] out2,
           output [7:0] out3,
           output zero_flag
    );
    wire [7:0] add_0_out;
    wire [7:0] mux4_0_out;
    wire [7:0] mux4_1_out;
    wire [7:0] mux4_2_out;
    wire [7:0] special_out;
    
    add add_0(.in0(data0),
              .in1(data1),
              .out0(add_0_out),
              .carry_out(overflow_flag)
    );
    
    mux4 mux4_0 (.in0(data0>>data1),
                 .in1(data0<<data1),
                 .in2(add_0_out),
                 .in3(data0-data1),
                 .sel(instruction[11:10]),
                 .out0(mux4_0_out)
    );
    
    mux4 mux4_1 (.in0(data0&data1),
                 .in1(data0|data1),
                 .in2((~data0 & data1)|(data0 & ~data1)),
                 .in3(1),
                 .sel(instruction[11:10]),
                 .out0(mux4_1_out)
    );
    
    mux4 mux4_2 (.in0(mux4_0_out),
                 .in1(mux4_1_out),
                 .in2(0),
                 .in3(special_out),
                 .sel(instruction[13:12]),
                 .out0(mux4_2_out)
    );
    
    special special_0(.in0(data0),
                      .in1(data1),
                      .out0(special_out)

    );
    
    comp_eq comp_eq_0(.in0(mux4_2_out),
                      .in1(0),
                      .out0(zero_flag)
    );
    
    demux4 demux4_0(.in0(mux4_2_out),
                    .sel(instruction[15:14]),
                    .out0(out0),
                    .out1(out1),
                    .out2(out2),
                    .out3(out3)
    );
    
    
    
    
endmodule
