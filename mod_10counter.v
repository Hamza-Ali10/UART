`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hamza Ali
// 
// Create Date: 09/12/2023 02:24:41 PM
// Design Name: 
// Module Name: mod_10counter
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


module mod_10counter(
    input clk,
    input reset,
    output reg [3:0] Q,
    output en 
    );
     
     always@(posedge clk , negedge reset )
       begin
           if(!reset)
           Q <= 'b0;
           else if(Q == 9)
           Q <= 'b0;
           else
           Q <= Q + 1;     
       end
       
      assign en = { Q == 9};
         
endmodule
