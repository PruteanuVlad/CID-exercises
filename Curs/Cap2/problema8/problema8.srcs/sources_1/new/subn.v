`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2022 11:04:31 AM
// Design Name: 
// Module Name: subn
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


module subn
    #(
        parameter n=4
    )
    (
        input [n-1:0] in0,
        input [n-1:0] in1,
        input b_in,
        output [n-1:0] d,
        output b_out

    );
    wire [n:0] w;
    genvar i;
    assign w[0] = b_in;
    generate 
        for(i = 0; i < n; i = i+1)
            begin
                sub2 sub(.in0(in0[i]),
                         .in1(in1[i]),
                         .b_in(w[i]),
                         .diff(d[i]),
                         .b_out(w[i+1])
                );
            end
    endgenerate
    assign b_out = w[n];
endmodule
