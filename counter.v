`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hamza Ali
// 
// Create Date: 09/12/2023 02:22:50 PM
// Design Name: 
// Module Name: coun
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


module counter(
    input clk,
    input reset,
    output reg[7:0] Q
    );
    
    always@(posedge clk , negedge reset )
    begin
        if(!reset)
        Q <= 'b0;
        else
        Q <= Q + 1;     
    end
    
    
    
endmodule
