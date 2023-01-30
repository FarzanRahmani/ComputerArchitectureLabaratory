----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:29:20 10/30/2022 
-- Design Name: 
-- Module Name:    D_flip_flop - Behavioral 
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

entity D_flip_flop is
    Port ( d : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end D_flip_flop;

architecture Behavioral of D_flip_flop is

-- begin
--	q <= '0' when reset='1' else
--	d when clk'event and clk='1';
	-- d when clk'event and clk='1' else UNAFFECTED

-- end Behavioral;

begin
	process(reset, clk)
	begin
		if (reset = '1') then
			q <= '0';
		else if (clk'event and clk='0') then
			q <= d;
		end if;
		end if;
	end process;
end Behavioral;
