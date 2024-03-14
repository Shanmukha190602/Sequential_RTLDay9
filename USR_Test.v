`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 12:29:01
// Design Name: 
// Module Name: USR_Test
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


module USR_Test();

    reg clk,reset;
    reg [1:0] ctrl;
    reg [3:0] d;
    wire [3:0] q;
    
    USR Dut (.clk(clk), .ctrl(ctrl), .d(d), .q(q) );
    
    always #5 clk = ~clk; // Clock Generation of period 10 ns
    
    initial begin
        clk = 0; reset = 0; 
        #10 d = 4'b1101;
        ctrl = 2'b11; // 1101 data will be loaded into flip flops through MUX output 
        #20 ctrl = 2'b01; // 1101 data will be shifted left 
        #20 ctrl = 2'b10; // Shifted version of 1101 data will be shifted right
        d[3] = 0;
        #50 $finish;
    end
    
endmodule
