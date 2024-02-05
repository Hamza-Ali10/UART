`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hamza Ali
// 
// Create Date: 09/12/2023 02:20:30 PM
// Design Name: 
// Module Name: trans
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


module UART_TX(
    input clk,
    input reset,
    output Tx
    );
    
    wire [7:0] data;
    wire en;
    wire [3:0] selection;
    
    Max_TX max(
    .start_bit(1'b0),
    .data(data),
    .end_bit(1'b1),
    .sel(selection),
    .Tx(Tx)
    );
    
    mod_10counter counter10(
    .clk(clk),
    .reset(reset),
    .Q(selection),
    .en(en)
    );
    
    counter counter8bit(
    .clk(en),
    .reset(reset),
    .Q(data)
    );
  
endmodule
