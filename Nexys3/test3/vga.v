
	 
always @(posedge clk) 
	if(clkcnt == 2'b11) begin
		clkcnt = 2'b00;
		divclk=~divclk;
	end
	else begin
		clkcnt = clkcnt + 1'b1;
	end
	
	always @(posedge divclk)
		if(hcounter == 767) begin
			hcounter = 0;
			if(vcounter == 511) begin
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
		gval=3'b101;
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
