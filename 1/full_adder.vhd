----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:31:41 10/16/2022 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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

entity full_adder is
    Port ( af : in  STD_LOGIC;
           bf : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sf : out  STD_LOGIC;
           cf : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

 signal c1 : STD_LOGIC;
 signal c2 : STD_LOGIC;
 signal s1 : STD_LOGIC;
 
 component half_adder is
 port (
 ah, bh: in  STD_LOGIC;
 sh, ch: out  STD_LOGIC);
 end component half_adder;
 
 component or_gate is
	port(
	a,b :in STD_LOGIC;
	c :out STD_LOGIC);
	end component or_gate;

begin
  half_adder1_ins : half_adder port map ( ah => af, bh => bf, ch => c1, sh => s1); 
  half_adder2_ins : half_adder port map ( ah => s1, bh => cin, ch => c2, sh => sf);
  or_ins : or_gate port map (a => c2, b => c1, c => cf);  
end Behavioral;

