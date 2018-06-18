
module project0_demo(
   // output [7:0] Led,
	 input [7:0] sw,
	 input btns,
	 output [7:0] seg,
	 output [2:0] vgaRed,
	 output [2:0] vgaGreen,
	 output [1:0] vgaBlue,
	 output Hsync,
	 output Vsync,
	 output [7:0] Led,
	 output [3:0] an,
    input clk
    );
	 
	 reg [26:0] counter = 27'b000000000000000000000000000; 
	 reg [6:0] scounter = 0; 
	 reg [12:0] num = 0; 
	 reg divclk = 1'b0;
	 reg slclk = 1'b0;
	 
	 segdisplay test(
    .nb(num),
    .myclk(divclk),
	 .seg(seg),
	.an(an)
	 );
	vga vga(
    .clk(clk),
    .r(vgaRed),
   .g(vgaGreen),
    .b(vgaBlue),
    .hsync(Hsync),
    .vsync(Vsync),
    .rst(btns)
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
		if(scounter == 7'b0001111) begin
			scounter = 0;
			slclk = ~slclk;
		end
		else begin
			scounter = scounter + 1'b1;
		end	
	always @(posedge slclk)
	if(num == 12'b111111111111) begin
			num = 0;
		end
		else begin
			num = num + 1'b1;
		end	
		
assign Led = num;
endmodule
