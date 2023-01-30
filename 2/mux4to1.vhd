----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:54 10/23/2022 
-- Design Name: 
-- Module Name:    mux4to1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux4to1 is
    Port ( n0 : in  STD_LOGIC;
           n1 : in  STD_LOGIC;
           n2 : in  STD_LOGIC;
           n3 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           o : out  STD_LOGIC);
end mux4to1;

architecture Behavioral of mux4to1 is
    component mux_2to1 is
		 Port ( in0 : in  STD_LOGIC;
           in1 : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           outp : out  STD_LOGIC);
      end component mux_2to1 ;
	signal m0,m1 : STD_LOGIC;
begin
	
mux_2to1_ins1 : mux_2to1 port map ( in0 => n0, in1 => n1, sel => s0, outp => m0); 
mux_2to1_ins2 : mux_2to1 port map ( in0 => n2, in1 => n3, sel => s0, outp => m1);
mux_2to1_ins3 : mux_2to1 port map ( in0 => m0, in1 => m1, sel => s1, outp => o);
end Behavioral;

