`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2022 06:24:01 PM
// Design Name: 
// Module Name: and2_gate
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


module and2_gate(   input in0,
                    input in1,
                    output out0

    );
    wire w0;
    nand2_gate nand2_gate_0(    .in0(in0),
                                .in1(in1),
                                .out0(w0)

    );
    nand2_gate nand2_gate_1(    .in0(w0),
                                .in1(w0),
                                .out0(out0)

    );
endmodule
