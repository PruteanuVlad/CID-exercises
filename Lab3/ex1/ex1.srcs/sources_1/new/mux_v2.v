`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 11:27:06 AM
// Design Name: 
// Module Name: mux_v2
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


module mux_v2(  input   in0,
                input   in1,
                input   sel,
                output  reg out0

    );
    
    
    always  @(*)
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
        endcase
    end
endmodule
