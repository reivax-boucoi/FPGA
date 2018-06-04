module project0_demo(
    output [7:0] Led,
	 output [7:0] seg,
	 output [3:0] an,
    input clk,
	 input [7:0] Sw
    );
	 
	 reg [21:0] counter = 22'b0000000000000000000000; 
	 reg divclk = 1'b0;
	 reg [7:0] caseCounter = 8'b00000000;
	 reg [7:0] LedReg;
	 reg [7:0] SegReg;
	 reg [7:0] SwReg;

////clock divider////	 
	 always @(posedge clk)
		if(counter == 22'b1111111111111111111111) begin
			counter = 22'b0000000000000000000000;
			divclk = ~divclk;
		end
		else begin
			counter = counter + 1'b1;
		end
		
	always @(posedge divclk) 
		if(caseCounter == 8'b11111111) begin
			caseCounter = 8'b00000000;
		end
		else begin
			caseCounter = caseCounter + 1'b1;
		end
	
	 always @(posedge divclk)
	 LedReg = caseCounter & Sw;
	 
	 
assign Led = LedReg;	
assign an = 4'hF;
assign seg = SegReg;

endmodule
