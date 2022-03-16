`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/15/2022 11:36:32 AM
// Design Name: 
// Module Name: top_tb
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


module top_tb(

    );
    
    reg sel;
    reg in0;
    reg in1;
    wire [3:0] out0;
    
    top dut(.in0(in0),
            .in1(in1),
            .sel(sel),
            .out0(out0)
    );
    
    initial
    begin
        in0 = 0;
        forever #10 in0 = ~in0;
    end
    
    
    initial
    begin
        sel = 0;
        in1 = 0;
        #30
        in1 = 1;
        #10
        in1 = 0;
        #10
        in1 = 1;
        #30
        sel = 1;
        #30
        in1 = 0;
        #20
        in1 = 1;
        #20
        $stop();
        
        
        
    
    end
    
    
endmodule
