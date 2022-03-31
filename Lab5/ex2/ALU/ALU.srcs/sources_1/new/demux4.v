`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 11:33:59 AM
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


module demux4(input [7:0] in0,
              input [1:0] sel,
              output reg [7:0] out0,
              output reg [7:0] out1,
              output reg [7:0] out2,
              output reg [7:0] out3
    );
    
    
    
    always @(*)
    begin
        case(sel)
            0:
                begin
                out0 = in0;
                out1 = 0;
                out2 = 0;
                out3 = 0;
                end
            1:
                begin
                out0 = 0;
                out1 = in0;
                out2 = 0;
                out3 = 0;
                end    
            2:
                begin
                out0 = 0;
                out1 = 0;
                out2 = in0;
                out3 = 0;
                end
            3:
                begin
                out0 = 0;
                out1 = 0;
                out2 = 0;
                out3 = in0;
                end
            default:
                begin
                out0 = 0;
                out1 = 0;
                out2 = 0;
                out3 = 0;
                end
        endcase
    end
endmodule
