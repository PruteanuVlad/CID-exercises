`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2022 05:01:38 PM
// Design Name: 
// Module Name: demux4
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


module demux4(input in,
              input [1:0] sel,
              output reg out0,
              output reg out1,
              output reg out2,
              output reg out3
    );
    
    always @(*)
    begin
        case(sel)
        0:
        begin
             out0 = in;
             out1 = 0;
             out2 = 0;
             out3 = 0;
        end
        1:
        begin
             out0 = 0;
             out1 = in;
             out2 = 0;
             out3 = 0;
        end
        2:
        begin
             out0 = 0;
             out1 = 0;
             out2 = in;
             out3 = 0;
        end
        3:
        begin
             out0 = 0;
             out1 = 0;
             out2 = 0;
             out3 = in;
        end
        endcase
    end
    
endmodule
