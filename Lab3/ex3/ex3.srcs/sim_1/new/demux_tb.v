`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2022 08:55:00 PM
// Design Name: 
// Module Name: demux_tb
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


module demux_tb(

    );
    
    
    reg sel;
    reg in0;
    reg clock;
    wire [3:0] out0;
    wire [3:0] out1;
    
    
    
    
    demux_top dut(.sel(sel),
                  .in0(in0),
                  .out0(out0),
                  .out1(out1)
    );
    initial 
    begin
        clock = 0;
        forever #10 clock = ~clock;
    end
    
    
    
    initial 
    begin
        sel = 0;
        in0 = 0; 
        #10
        in0 = 1;
        #10
        sel = 1;
        in0 = 0;
        #10
        in0 = 1;
        #10
        $stop();
    end
    
    
    
    
    
    
    
    
    
endmodule
