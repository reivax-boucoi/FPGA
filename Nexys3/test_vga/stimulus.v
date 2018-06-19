`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:06:55 06/19/2018
// Design Name:   project0_demo
// Module Name:   /media/user/Data/Documents/FPGA/Nexys3/test_vga/stimulus.v
// Project Name:  test3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: project0_demo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stimulus;

	// Inputs
	reg clk;
	wire Led;

	// Outputs
	wire vga_R;
	wire vga_G;
	wire vga_B;
	wire Vsync;
	wire Hsync;

	// Instantiate the Unit Under Test (UUT)
	project0_demo uut (
		.vga_R(vga_R), 
		.vga_G(vga_G), 
		.vga_B(vga_B), 
		.Vsync(Vsync), 
		.Hsync(Hsync), 
		.Led(Led),
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		while(1)
		begin
		  #10;
		  clk <= ~ clk;
		  end
		// Add stimulus here

	end
      
endmodule

