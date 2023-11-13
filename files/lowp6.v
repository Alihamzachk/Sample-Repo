`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:57:28 11/23/2016 
// Design Name: 
// Module Name:    lowp2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module tb;
reg CLK,RESET;
reg A1;
wire [3:0] OUT;
reg [15:0] my_memory [10:0];
integer i;

Mannual_Filter dut
(
.a1(A1),
.clk(CLK),
.reset(RESET),
.out(OUT)
);


always begin
 #10 CLK = ~CLK;
 end

initial 
begin 
$readmemh("Noise_Data.xls",my_memory);
#100;
for(i=0;i<1226;i= i+1)
begin
$display("%h" ,my_memory[i]);
end
end 
endmodule
