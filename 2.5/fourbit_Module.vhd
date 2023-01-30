library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity four_bit_Module is
Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
B : in STD_LOGIC_VECTOR (3 downto 0);
Cin : in STD_LOGIC;
S : out STD_LOGIC_VECTOR (3 downto 0);
Cout : out STD_LOGIC);
end four_bit_Module;

architecture Behavioral of four_bit_Module is

component full_adder
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
Cout : out STD_LOGIC);
end component;
 
signal c1,c2,c3: STD_LOGIC;
begin

FA1: full_adder port map( A(0), B(0), Cin, S(0), c1);
FA2: full_adder port map( A(1), B(1), c1, S(1), c2);
FA3: full_adder port map( A(2), B(2), c2, S(2), c3);
FA4: full_adder port map( A(3), B(3), c3, S(3), Cout);

end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
 Port ( A : in STD_LOGIC;
 B : in STD_LOGIC;
 Cin : in STD_LOGIC;
 S : out STD_LOGIC;
 Cout : out STD_LOGIC);
end full_adder;

architecture fa of full_adder is

begin

 S <= A XOR B XOR Cin ;
 Cout <= (A AND B) OR (Cin AND A) OR (Cin AND B) ;

end fa;


