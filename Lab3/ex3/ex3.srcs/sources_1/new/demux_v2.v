`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2022 08:26:11 PM
// Design Name: 
// Module Name: demux_v2
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


module demux_v2(input sel,
                input in0,
                output reg out0,
                output reg out1

    );
    always @(*)
    begin
        if(sel==0)
            begin
                if(in0==0)
                    begin
                        out0 = 0;
                        out1 = 0;
                    end
                else
                    begin
                        out0 = 1;
                        out1 = 0;
                    end
             end     
         else
            begin
                if(in0==0)
                    begin
                        out0 = 0;
                        out1 = 0;
                    end
                else
                    begin
                        out0 = 0;
                        out1 = 1;
                    end
            end    
    end
endmodule
