`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 10:49:35 PM
// Design Name: 
// Module Name: full_adder8
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


module full_adder8( input [7:0] in0,
                    input [7:0] in1,
                    input c_in,
                    output [7:0] sum,
                    output c_out

    );
    wire w0,w1,w2,w3,w4,w5,w6;
    full_adder full_adder_0(.in0(in0[0]),
                            .in1(in1[0]),
                            .c_in(c_in),
                            .sum(sum[0]),
                            .c_out(w0)
    );
    full_adder full_adder_1(.in0(in0[1]),
                            .in1(in1[1]),
                            .c_in(w0),
                            .sum(sum[1]),
                            .c_out(w1)
    );
    full_adder full_adder_2(.in0(in0[2]),
                            .in1(in1[2]),
                            .c_in(w1),
                            .sum(sum[2]),
                            .c_out(w2)
    );
    full_adder full_adder_3(.in0(in0[3]),
                            .in1(in1[3]),
                            .c_in(w2),
                            .sum(sum[3]),
                            .c_out(w3)
    );
    full_adder full_adder_4(.in0(in0[4]),
                            .in1(in1[4]),
                            .c_in(w3),
                            .sum(sum[4]),
                            .c_out(w4)
    );
    full_adder full_adder_5(.in0(in0[5]),
                            .in1(in1[5]),
                            .c_in(w4),
                            .sum(sum[5]),
                            .c_out(w5)
    );
    full_adder full_adder_6(.in0(in0[6]),
                            .in1(in1[6]),
                            .c_in(w5),
                            .sum(sum[6]),
                            .c_out(w6)
    );
    full_adder full_adder_7(.in0(in0[7]),
                            .in1(in1[7]),
                            .c_in(w6),
                            .sum(sum[7]),
                            .c_out(c_out)
    );
endmodule
