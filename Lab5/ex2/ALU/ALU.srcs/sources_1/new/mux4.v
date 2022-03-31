`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 11:33:59 AM
// Design Name: 
// Module Name: mux4
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


module mux4(input [7:0] in0,
            input [7:0] in1,
            input [7:0] in2,
            input [7:0] in3,
            input [1:0] sel,
            output reg [7:0] out0
     

    );
    
    always @(*)
    begin
        case(sel)
            0:
                begin
                out0 = in0;
                end
            1:
                begin
                out0 = in1;
                end    
            2:
                begin
                out0 = in2;
                end
            3:
                begin
                out0 = in3;
                end
            default:
                begin
                out0 = 0;
                end
        endcase
    end
    
    
    
    
endmodule
