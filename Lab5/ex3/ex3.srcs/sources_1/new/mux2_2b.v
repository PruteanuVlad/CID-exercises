`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2022 05:36:58 PM
// Design Name: 
// Module Name: mux2_2b
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


module mux2_2b(input [1:0] in0,
               input [1:0] in1,
               input sel,
               output reg [1:0] out    

    );
    always @(*)
    begin
        if(sel==0)
        begin
            out = in0;
        end
        else
        begin
            out = in1;
        end
        
    end
    
    
endmodule
