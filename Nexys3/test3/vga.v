module vga(
    input clk,
    output [2:0] r,
    output [2:0] g,
    output [1:0] b,
    output hsync,
    output vsync,
    input rst
    );
	 
	 reg [1:0] clkcnt = 2'b00;
	 reg [10:0] hcounter = 0;
	 reg [10:0] vcounter = 0;
	 reg [2:0] rval = 0;
	 reg [2:0] gval = 0;
	 reg [1:0] bval = 0;
	 reg divclk = 0;
	 
always @(posedge clk) 
	if(clkcnt == 2'b11) begin
		clkcnt = 2'b00;
		divclk=~divclk;
	end
	else begin
		clkcnt = clkcnt + 1'b1;
	end
	
	always @(posedge divclk)
		if(hcounter == 799) begin
			hcounter = 0;
			if(vcounter == 524) begin
				vcounter = 0;
			end
			else begin
				vcounter = vcounter + 1;
			end
		end
		else begin
			hcounter = hcounter + 1;
		end
	
	
	
	
	always @(posedge divclk)
	if(vcounter>35 && vcounter <515 && hcounter >144 && hcounter < 784)begin
		rval=3'b111;
	end
	else begin
		rval=3'b000;
		bval=2'b00;
		gval=3'b000;
	end
	
	
assign r=rval;
assign b=bval;
assign g=gval;
assign	vsync=(vcounter>=0 && vcounter <2);
assign	hsync=(hcounter>=0 && hcounter <96);
	
endmodule
