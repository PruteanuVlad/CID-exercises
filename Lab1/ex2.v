`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2022 09:35:33 PM
// Design Name: 
// Module Name: ex2
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


module ex2();

reg clock;

initial begin
        clock = 1;
        forever #1 clock = ~clock;
end
reg [7:0] data;
integer index;
initial begin
        data = 0;
        for(index = 0; index < 11; index = index + 1) begin
        @(posedge clock) data <= data + 1;
        end
        #20 $stop();
end






endmodule
