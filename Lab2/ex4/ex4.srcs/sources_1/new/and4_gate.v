`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2022 06:24:01 PM
// Design Name: 
// Module Name: and4_gate
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


module and4_gate(   input in0,
                    input in1,
                    input in2,
                    input in3,
                    output out0

    );
    wire w0,w1;
    and2_gate and2_gate_0(  .in0(in0),
                            .in1(in1),
                            .out0(w0)

    );
    and2_gate and2_gate_1(  .in0(in2),
                            .in1(in3),
                            .out0(w1)

    );
    and2_gate and2_gate_2(  .in0(w0),
                            .in1(w1),
                            .out0(out0)

    );
    
endmodule
