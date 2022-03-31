`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2022 05:01:38 PM
// Design Name: 
// Module Name: mux2
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


module mux2(input in0,
            input in1,
            input sel,
            output reg out
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
