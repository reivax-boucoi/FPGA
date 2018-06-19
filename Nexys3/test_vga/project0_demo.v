module project0_demo(
    output vga_R,
    output vga_G,
    output vga_B,
	 output Vsync,
	 output Hsync,
	 output Led,
    input clk
    );
	 
reg [1:0] counter=2'b00;
reg divclk = 1'b0;
wire inDisplayArea;
wire [9:0] CounterX;
wire [8:0] CounterY;

hvsync_generator syncgen(.clk(divclk), .vga_h_sync(Hsync), .vga_v_sync(Vsync),
                            .inDisplayArea(inDisplayArea), .CounterX(CounterX), .CounterY(CounterY));

// Draw a border around the screen
wire border = (CounterX[9:3]==0) || (CounterX[9:3]==79) || (CounterY[8:3]==0) || (CounterY[8:3]==59);
wire R = border;
wire G = border;
wire B = border;

reg vga_R, vga_G, vga_B;
always @(posedge divclk)
begin
  vga_R <= R & inDisplayArea;
  vga_G <= G & inDisplayArea;
  vga_B <= B & inDisplayArea;
end
always @(posedge clk)
begin
	if(counter == 2'b11) begin
		counter = 2'b00;
		divclk = ~divclk;
	end
	else begin
		counter = counter + 1'b1;
	end
end

assign Led = divclk;
endmodule
