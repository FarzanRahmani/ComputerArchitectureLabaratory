----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:12:30 10/23/2022 
-- Design Name: 
-- Module Name:    decoder2to4 - Behavioral 
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

entity decoder2to4 is
port(
input : in std_logic_vector (1 downto 0) ;
output: out std_logic_vector (3 downto 0) := "0000");
end entity decoder2to4;

architecture Behavioral of decoder2to4 is

begin
output (0) <= '1' when input="00" else '0';
output (1) <= '1' when input="01" else '0';
output (2) <= '1' when input="10" else '0';
output (3) <= '1' when input="11" else '0';

end Behavioral;

