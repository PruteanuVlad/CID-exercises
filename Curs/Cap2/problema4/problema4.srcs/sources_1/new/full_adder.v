`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2022 04:25:24 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(  input in0,
                    input in1,
                    input c_in,
                    output sum,
                    output c_out

    );
    wire w0,w1,w2,w3;
    xor xor_gate_0(w0,in0,in1);
    xor xor_gate_1(sum,w0,c_in);
    or or_gate_0(w1,in0,in1);
    and and_gate_0(w2,w1,c_in);
    and and_gate_1(w3,in0,in1);
    or or_gate_1(c_out,w2,w3);
endmodule
