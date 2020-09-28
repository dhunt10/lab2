`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 09:03:38 AM
// Design Name: 
// Module Name: eightbit_palu
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


module eightbit_palu(input [7:0] a, [7:0] b, [1:0] sel, output reg ovf, reg [7:0] f);

always @ (a, b, sel)
    begin
    
    ovf = 0;
    case(sel)
        2'b00: {ovf, f} = a + b;
        2'b01: f = ~b;
        2'b10: f = a & b;
        2'b11: f = a | b;
        default: f = 8'bxxxxxxxx;
    endcase
    end
endmodule
