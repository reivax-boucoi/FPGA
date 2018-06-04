`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:16 07/28/2013 
// Design Name: 
// Module Name:    project0_demo 
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
module project0_demo(
    output [7:0] Led,
	 output [7:0] seg,
	 output [3:0] an,
    input clk
    );
	 
	 reg [26:0] counter = 27'b000000000000000000000000000; 
	 reg divclk = 1'b0;
	 reg [3:0] caseCounter = 4'b000;
	 reg [7:0] LedReg;
	 reg [7:0] SegReg;

////clock divider////	 
	 always @(posedge clk)
		if(counter == 27'b00111111111111111111111111) begin
			counter = 27'b000000000000000000000000000;
			divclk = ~divclk;
		end
		
		else begin
			counter = counter + 1'b1;
		end
		
	always @(posedge divclk) 
		if(caseCounter == 4'b1111) begin
			caseCounter = 4'b0000;
		end
		else begin
			caseCounter = caseCounter + 1'b1;
		end
		
	always @(posedge divclk)	
   case (caseCounter)
      4'b0000 : begin
						SegReg = 8'b00000011;
						LedReg = 8'b00000001;
               end
      4'b0001 : begin
                  SegReg = 8'b10011111;
						LedReg = 8'b00000010;
               end
      4'b0010 : begin
                  SegReg = 8'b00100101;
						LedReg = 8'b00000100;
               end
      4'b0011 : begin
                  SegReg = 8'b00001101;
						LedReg = 8'b00001000;
               end
      4'b0100 : begin
                  SegReg = 8'b10011001; 
						LedReg = 8'b00010000; 
               end
      4'b0101 : begin
                  SegReg = 8'b01001001;
						LedReg = 8'b00100000;
               end
      4'b0110 : begin
                  SegReg = 8'b01000001;
						LedReg = 8'b01000000; 
               end
      4'b0111 : begin
                  SegReg = 8'b00011111;
						LedReg = 8'b10000000;
               end
      4'b1000 : begin
                  SegReg = 8'b00000001;
						LedReg = 8'b01000000;
               end
      4'b1001 : begin
                  SegReg = 8'b00001001;
						LedReg = 8'b00100000;
               end
      default: begin
                  SegReg = 8'b11111111;
						LedReg = 8'b00000000;
               end
   endcase
	
assign Led = LedReg;	
assign an = 4'b1110;
assign seg = SegReg;

endmodule
