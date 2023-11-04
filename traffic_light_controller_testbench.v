`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:02:18 09/14/2023
// Design Name:   traffic_light_controller
// Module Name:   /home/ise/traffic_light_controller/traffic_light_controller_testbench.v
// Project Name:  traffic_light_controller
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: traffic_light_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module traffic_light_controller_testbench;
reg clk;
reg rst;
wire [2:0] north_lights;
wire [2:0] east_lights;
wire [2:0] south_lights;
wire [2:0] west_lights;

traffic_light_controller uut (clk,rst,north_lights,east_lights,south_lights,west_lights);
initial 
begin
$monitor($time,"clk=%b,rst=%b,north_lights=%b,east_lights=%b,south_lights=%b,west_lights=%b",clk,rst,north_lights,east_lights,south_lights,west_lights);
end

initial
begin
clk=1'b1;
forever
#10 clk=~clk;
end

initial 
begin
rst=1'b1;
#20 rst=1'b0;
end

initial 
begin
#2000 $finish;
end
endmodule
