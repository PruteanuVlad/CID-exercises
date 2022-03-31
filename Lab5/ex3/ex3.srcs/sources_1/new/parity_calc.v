`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2022 05:01:38 PM
// Design Name: 
// Module Name: parity_calc
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


module parity_calc(input [3:0] in,
                   output reg out

    );
    always@(*)
    begin
        if(in % 2 == 0)
            begin
                out = 0;
            end
        else
            begin
                out = 1;
            end   
        
    end
endmodule
