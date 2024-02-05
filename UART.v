`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hamza Ali
// 
// Create Date: 09/17/2023 11:54:20 AM
// Design Name: 
// Module Name: UART
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


module UART(
    input clk,
    input reset,
    output [7:0] data
    );
    
    wire s1;
    
    UART_TX TX(
    .clk(clk),
    .reset(reset),
    .Tx(s1)
    );
    
    UART_RX RX(
    .clk(clk),
    .reset(reset),
    .Rx(s1),
    .data(data)
    );
   
endmodule
