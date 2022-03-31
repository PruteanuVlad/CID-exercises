`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2022 12:09:05 PM
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
    reg [15:0] instruction;
    reg [7:0] data0;
    reg [7:0] data1;
    wire overflow_flag;
    wire zero_flag;
    wire [7:0] out0;
    wire [7:0] out1;
    wire [7:0] out2;
    wire [7:0] out3;
    
  
    top dut(.instruction(instruction),
            .data0(data0),
            .data1(data1),
            .overflow_flag(overflow_flag),
            .out0(out0),
            .out1(out1),
            .out2(out2),
            .out3(out3), 
            .zero_flag(zero_flag)
    );
    
    
    initial
    begin
        instruction = 0;
        data0 = 0;
        data1 = 0;
        #10
        instruction = 16'hffff;
        data0 = 0;
        data1 = 0;
        #10
        data0 = 255;
        data1 = 255;
        #10
        instruction = 16'b00_00_10_00000000;
        data0 = 1;
        data1 = 1;
        #5
        data0 = 2;
        #5
        data1 = 3;
        #5
        data0 = 0;
        #5
        data1 = 0;
        #5
        instruction = 0;
        #20
        instruction = 0;
        data0 = 0;
        data1 = 0;
        #5
        instruction = 0;
        data0 = 255;
        data1 = 1;
        #5
        instruction = 16'b00_01_00_0000000000;
        data0 = 0;
        data1 = 0;
        
        
        
    end
    
    
    initial
    begin
        #200
        $stop();
    end
    
endmodule
