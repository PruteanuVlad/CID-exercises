`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 11:25:16 AM
// Design Name: 
// Module Name: mux_v1
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


module mux_v1(  input   in0,
                input   in1,
                input   sel,
                output  reg out0

    );
    
    always  @(*)
    begin
        if(sel == 0)
            begin
                out0 = in0;
            end
        else
            begin
                out0 = in1;
            end
         
    end
endmodule
