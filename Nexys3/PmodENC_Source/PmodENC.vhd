----------------------------------------------------------------------------------
-- Company: Digilent Inc 2011
-- Engineer: Michelle Yu  
-- Create Date:    14:52:09 08/17/2011 
--
-- Module Name:   PmodENC - Behavioral 
-- Project Name:  PmodENC
-- Target Devices: Nexys3
-- Tool versions: Xilinx ISE Design Suite 13.2
--
-- Description: 
--	This project changes the seven segment display when the position of rotary shaft
-- is changed. The number on the seven segment display is relative to the start position.
-- When the rotary button is pressed, the program resets. The switch controls whether 
-- the seven segment display turns on or off. LED 0 and 1 indicated the direction the 
-- rotary shaft is turned. LED 0 is on when the shaft is turned right, LED 1 is on when
-- the shaft is turned left.
--
-- Revision: 
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity PmodENC is
    Port (
			  clk: in std_logic;
           an : out  STD_LOGIC_VECTOR (3 downto 0);	-- controls the display digits
			  seg: out  STD_LOGIC_VECTOR (7 downto 0);	-- controls what digit to display 
			  sw: in STD_LOGIC_VECTOR (7 downto 0)		-- Led indicates the direction the shaft is being rotated 

			  );
end PmodENC;



architecture Behavioral of PmodENC is
	
component DisplayController is
	Port (
			  clk : in std_logic;
			  DispVal : in  STD_LOGIC_VECTOR (7 downto 0);
           anode: out std_logic_vector(3 downto 0);
           segOut : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;

begin
	
	C2: DisplayController port map (clk=>clk, DispVal=>sw, anode=>an, segOut=>seg );

end Behavioral;

