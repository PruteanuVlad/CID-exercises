`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2022 01:34:23 PM
// Design Name: 
// Module Name: bigAdder_tb
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


module bigAdder_tb();

reg         clk;
reg [15:0]  a;
reg [15:0]  b;
reg         carryIn;
wire        carryOut;
wire    [15:0] c;

initial begin
        clk = 0;
        forever #1 clk = ~clk;
end        

initial begin
            carryIn = 0;
            a = 16'b1001_1001_0110_1010;
            b = 16'b1001_1001_0110_1010;
      #5    a = 16'b0000_0000_0000_0001;
            b = 16'b0000_0000_0000_0001;
      #5    a = 16'b0001_1001_1010_1010;
            b = 16'b0101_1101_0110_1010;
      #5    $stop;
end        



bigAdder dut (  .out(c[15:0]),
                .crOut(carryOut),
                .in0(a),
                .in1(b),
                .crIn(carryIn)    );


 

endmodule
