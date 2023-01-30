----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:07:41 04/19/2022 
-- Design Name: 
-- Module Name:    piso_shift_register - Behavioral 
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

entity piso_shift_register is
		generic(n : positive := 4);
		port(input : in std_logic_vector(n-1 downto 0);
	   clk: in std_logic;
	   output : out std_logic);
end piso_shift_register;

architecture Behavioral of piso_shift_register is

begin

	process(clk)
		variable temp_out : std_logic_vector(n-1 downto 0);
	begin
		if rising_edge(clk) then
			temp_out := input;
			output <= temp_out(n-1); 
		end if;
	end process;

end Behavioral;

