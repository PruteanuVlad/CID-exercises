`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2022 11:04:31 AM
// Design Name: 
// Module Name: sub2
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


module sub2(    input in0,
                input in1,
                input b_in,
                output diff,
                output b_out

    );
    
    wire w0,w1,w2,w3,w4,w5,w6,w7;
    
    not not_0(w0,in0);
    xor xor_0(w1,in1,b_in);
    and and_0(w2,in1,b_in);
    and and_1(w3,w0,w1);
    not not_1(w4,w1);
    and and_2(w5,in0,w4);
    or or_0(diff,w5,w3);
    or or_1(b_out,w3,w2);
    
endmodule
