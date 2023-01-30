----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:38:31 11/13/2022 
-- Design Name: 
-- Module Name:    JK_FF - Behavioral 
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

entity JK_FF is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  rst : in STD_LOGIC;
           Q : out  STD_LOGIC;
           Qbar : out  STD_LOGIC);
end JK_FF;

architecture Behavioral of JK_FF is

begin

	process(clk, rst)
		variable qn : std_logic;
		begin
		if(rst = '1')then
			qn := '0';
		elsif(clk'event and clk = '1')then
		if(J='0' and K='0')then
			qn := qn;
		elsif(J='0' and K='1')then
			qn := '0';
		elsif(J='1' and K='0')then
			qn := '1';
		elsif(J='1' and K='1')then
			qn := not qn;
		else
			null;
		end if;
		else
			null;
		end if;
		Q <= qn;
		Qbar <= not qn;

	end process;

end Behavioral;

