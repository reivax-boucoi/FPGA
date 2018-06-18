
module project0_demo(
   // output [7:0] Led,
	 input [7:0] sw,
	 output [7:0] seg,
	 output [7:0] Led,
	 output [3:0] an,
    input clk
    );
	 
	 reg [26:0] counter = 27'b000000000000000000000000000; 
	 reg [10:0] scounter = 0; 
	 reg [4:0] num = 0; 
	 reg divclk = 1'b0;
	 reg slclk = 1'b0;
	 
	 segdisplay test(
    .nb(num),
    .myclk(divclk),
	 .seg(seg),
	.an(an)
	 );
	 
	 always @(posedge clk)
		if(counter == 27'b00000000011111111111111111) begin
			counter = 27'b000000000000000000000000000;
			divclk = ~divclk;
		end
		else begin
			counter = counter + 1'b1;
		end
		 always @(posedge divclk)
		if(scounter == 10'b0011111111) begin
			scounter = 0;
			slclk = ~slclk;
		end
		else begin
			scounter = scounter + 1'b1;
		end	
	always @(posedge slclk)
	if(num == 4'b1111) begin
			num = 0;
		end
		else begin
			num = num + 1'b1;
		end	
		
assign Led = num;
endmodule
