`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 12:17:02
// Design Name: 
// Module Name: USR
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


module USR(
    input clk, reset,
    input [1:0] ctrl,
    input [3:0] d,
    output [3:0] q
    );
    
    reg [3:0] r_curr, r_next;
     //Current State logic
    always @ (posedge clk, posedge reset) 
    
    if (reset) // If reset is there
        r_curr <= 0;
    else
        r_curr <= r_next;
        
    // Next State Logic
    
    always @*
        case (ctrl)
            2'b00: r_next = r_curr; // hold state 
            2'b01: r_next = {r_curr[2:0], d[0]}; // Left Shift operation
            2'b10: r_next = {d[3], r_curr[2:1]}; // Right Shift operation
            2'b11: r_next = d; // Parallel Loading data
        endcase
    
    assign q = r_curr; // Output to see
endmodule
