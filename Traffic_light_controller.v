`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:25:02 05/10/2023 
// Design Name: 
// Module Name:    traffic_light_controller 
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
module traffic_light_controller(clk,rst,north_lights,east_lights,south_lights,west_lights);
input clk;
input rst;
output reg [2:0] north_lights;
output reg [2:0] east_lights;
output reg [2:0] south_lights;
output reg [2:0] west_lights;

reg [3:0] state,next_state;
reg [4:0] count;

// Declare state and next_state registers for each direction
parameter s0 = 4'b0000;
parameter s1 = 4'b0001;
parameter s2 = 4'b0010;
parameter s3 = 4'b0011;
parameter s4 = 4'b0100;
parameter s5 = 4'b0101;
parameter s6 = 4'b0110;
parameter s7 = 4'b0111;
parameter s8 = 4'b1000;


// Define traffic light states
parameter red = 3'b100;
parameter yellow = 3'b010;
parameter green = 3'b001;


always@(negedge rst, posedge clk)
begin
if (rst==1)
begin
state<=s0;
next_state<=s0;
count<=0;
end
end


always@(posedge clk)
begin
state=next_state;
case (state)
	s0:if(count<9)   ///// due to else part execution in one extra clk cycle,the time for each signal exceeds by 10ns. so we count for 1 less clk cycle from the desire clk cycle
		begin
		north_lights<=red;
		east_lights<=red;
		south_lights<=red;
		west_lights<=red;
		count<=count+1;
		next_state<=s0;
		end
		else         /// due to this else part execution in one extra cycle,the time for each signal exceeds by 10ns.
		begin
		count<=0;
		next_state<=s1;
		end
		
	s1:if(count<4)
	   begin
		north_lights<=yellow;
		east_lights<=red;
		south_lights<=red;
		west_lights<=red;
		count<=count+1;
		next_state<=s1;
		end
		else
		begin
		count<=0;
		next_state<=s2;
		end
		
	s2:if (count<29)
	   begin
		north_lights<=green;
		east_lights<=red;
		south_lights<=red;
		west_lights<=red;
		count<=count+1;
		next_state<=s2;
		end
		else
		begin
		count<=0;
		next_state<=s3;
		end
		
	s3:if(count<4)
	   begin
		north_lights<=red;
		east_lights<=yellow;
		south_lights<=red;
		west_lights<=red;
		count<=count+1;
		next_state<=s3;
		end
		else
		begin
		count<=0;
		next_state<=s4;
		end
		
	s4:if(count<29)
	   begin
		north_lights<=red;
		east_lights<=green;
		south_lights<=red;
		west_lights<=red;
		count<=count+1;
		next_state<=s4;
		end
		else
		begin
		count<=0;
		next_state<=s5;
		end
		
	s5:if (count<4)
	   begin
		north_lights<=red;
		east_lights<=red;
		south_lights<=yellow;
		west_lights<=red;
		count<=count+1;
		next_state<=s5;
		end
		else
		begin
		count<=0;
		next_state<=s6;
		end
		
	s6:if (count<29)
	   begin
		north_lights<=red;
		east_lights<=red;
		south_lights<=green;
		west_lights<=red;
		count<=count+1;
		next_state<=s6;
		end
		else
		begin
		count<=0;
		next_state<=s7;
		end
		
	s7:if (count<4)
	   begin
		north_lights<=red;
		east_lights<=red;
		south_lights<=red;
		west_lights<=yellow;
		count<=count+1;
		next_state<=s7;
		end
		else
		begin
		count<=0;
		next_state<=s8;
		end
		
	s8:if (count<29)
	   begin
		north_lights<=red;
		east_lights<=red;
		south_lights<=red;
		west_lights<=green;
		count<=count+1;
		next_state<=s8;
		end
		else
		begin
		count<=0;
		next_state<=s1;
		end
	default:next_state<=s0;
	endcase
end
endmodule
