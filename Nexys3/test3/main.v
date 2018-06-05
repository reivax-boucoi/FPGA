
module main(
    input clk,
    input [7:0] sw,
    output [7:0] an,
    output [7:0] seg
    );

	reg [21:0] counter = 22'b0000000000000000000000; 
	reg divclk = 1'b0;
	reg [2:0] caseCounter = 3'b111;
	reg [7:0] SegReg = 8'b00000000;
	 
	 always @(posedge clk)
		if(counter == 22'b1111111111111111111111) begin
			counter = 22'b0000000000000000000000;
			divclk = ~divclk;
		end
		else begin
			counter = counter + 1'b1;
		end
		
	always @(posedge divclk) 
		if(caseCounter == 3'b111) begin
			caseCounter = 0;
		end
		else begin
			caseCounter = caseCounter + 1'b1;
		end
		case(caseCounter)

assign an = 4'hF;
assign seg = SegReg;

endmodule
