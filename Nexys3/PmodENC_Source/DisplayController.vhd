----------------------------------------------------------------------------------
-- Company: Digilent Inc 2011
-- Engineer: Michelle Yu  
-- Create Date: 13:28:41 08/18/2011 
--
-- Module Name:    DisplayController - Behavioral 
-- Project Name: 	 PmodENC
-- Target Devices: Nexys 3 
-- Tool versions: Xilinx ISE Design Suite 13.2
--
-- Description: 
-- This module defines a DisplayController that controls the seven segment display to work with 
-- the output of the Encoder
--
-- Revision: 
-- Revision 0.01 - File Created
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DisplayController is
    Port ( 
			  clk : in std_logic;
			  --output from the Encoder
			  DispVal : in  STD_LOGIC_VECTOR (7 downto 0);
			  --controls the display digits
			  anode: out std_logic_vector(3 downto 0);
			  --controls which digit to display
           segOut : out  STD_LOGIC_VECTOR (7 downto 0)); 
end DisplayController;

architecture Behavioral of DisplayController is
signal sclk: std_logic_vector (18 downto 0);
signal seg: std_logic_vector (6 downto 0);
begin
	 process(clk)
		begin 
			if clk'event and clk = '1' then
				-- 0ms
				if sclk = "0000000000000000000" then --units
					anode<="1110";
					segOut <= "1" & seg;
					sclk <= sclk +1;
				-- 1ms
				elsif sclk = "0011000011010100000" then --tens
					segOut <= "1" & seg;
					anode<="1101";
					sclk <= sclk +1;
				-- 2ms
				elsif sclk = "0110000110101000000" then --hundreds
					segOut <= "0" & seg ;
					anode<="1011";
					sclk <= sclk +1;
				-- 3ms
				elsif sclk = "1001001001111100000" then --thousands
					segOut <= "1" & seg;
					anode<="0111";
					sclk <= sclk +1;
				--	4ms
				elsif sclk = "1100001101010000000" then --reset
					sclk <= "0000000000000000000";
				else
					sclk <= sclk +1;
				end if;
					
			end if;
	end process;
	
	 with DispVal select
		seg <=  	  "1000000" when "00000000", --0
					  "1111001" when "00000001", --1
					  "0100100" when "00000010", --2
					  "0110000" when "00000011", --3
					  "0011001" when "00000100", --4
					  "0010010" when "00000101", --5
					  "0000010" when "00000110", --6
					  "1111000" when "00000111", --7
					  "0000000" when "00001000", --8
					  "0010000" when "00001001", --9
					  "0111111" when others;
	
end Behavioral;

