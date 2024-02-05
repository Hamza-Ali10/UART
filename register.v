`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2023 04:54:56 PM
// Design Name: 
// Module Name: register
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


module register(
   input clk , load , reset ,
   input [7:0] D ,
   output reg [7:0] Q 
    );
    always @ ( negedge clk or negedge reset) begin 
    
        
        if (!reset) 
            Q <= 'b0 ;
        else if (load)
            Q <= D ;
        else 
            Q <= Q ;
    
    
    end
endmodule
