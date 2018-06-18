`timescale 1ns / 1ps

module segdisplay(
    input [8:0] nb,
    input myclk,
	 output [7:0] seg,
	 output [3:0] an
    );


	 reg [1:0] muxcnt = 2'b00;
	 reg [7:0] LedReg;
	 reg [3:0] anReg;
	 reg [7:0] SegReg;
	 
	always @(posedge myclk) 
	if(muxcnt == 2'b11) begin
		muxcnt = 2'b00;
	end
	else begin
		muxcnt = muxcnt + 1'b1;
	end
	
	always @(posedge myclk)	
	case(muxcnt)
	2'b00 : begin
		anReg=4'b1110;
		end
	2'b01 : begin
		anReg=4'b1101;
		end
	2'b10 : begin
		anReg=4'b1011;
		end
	2'b11 : begin
		anReg=4'b0111;
		end
		endcase
		
	
	
	always @(posedge myclk)	
   case (nb)
      4'b0000 : begin
						SegReg = 8'b00000011;
               end
      4'b0001 : begin
                  SegReg = 8'b10011111;
               end
      4'b0010 : begin
                  SegReg = 8'b00100101;
               end
      4'b0011 : begin
                  SegReg = 8'b00001101;
               end
      4'b0100 : begin
                  SegReg = 8'b10011001; 
               end
      4'b0101 : begin
                  SegReg = 8'b01001001;
               end
      4'b0110 : begin
                  SegReg = 8'b01000001; 
               end
      4'b0111 : begin
                  SegReg = 8'b00011111;
               end
      4'b1000 : begin
                  SegReg = 8'b00000001;
               end
      4'b1001 : begin
                  SegReg = 8'b00001001;
               end
      4'b1010 : begin
                  SegReg = 8'b00010001;
               end
      4'b1011 : begin
                  SegReg = 8'b11000001;
               end
      4'b1100 : begin
                  SegReg = 8'b01100011;
               end
      4'b1101 : begin
                  SegReg = 8'b10000101;
               end
      4'b1110 : begin
                  SegReg = 8'b01100001;
               end
      4'b1111 : begin
                  SegReg = 8'b01110001;
               end
      default: begin
                  SegReg = 8'b11111111;
               end
   endcase
		
assign an = anReg;
assign seg = SegReg;
endmodule
