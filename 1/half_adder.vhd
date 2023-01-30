----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:20:16 10/16/2022 
-- Design Name: 
-- Module Name:    half_adder - Behavioral 
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

entity half_adder is
    Port ( ah : in  STD_LOGIC;
           bh : in  STD_LOGIC;
           sh : out  STD_LOGIC;
           ch : out  STD_LOGIC);
end half_adder;

architecture Behavioral of half_adder is
component xor_gate is
port(
a,b :in STD_LOGIC;
c :out STD_LOGIC);
end component xor_gate;
component and_gate is
port(
a,b :in STD_LOGIC;
c :out STD_LOGIC);
end component and_gate;
begin
xor_ins : xor_gate port map (a => ah, b => bh , c => sh);
and_ins : and_gate port map (a => ah, b => bh , c => ch);
end Behavioral;

