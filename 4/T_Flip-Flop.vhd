library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity T_FF is
  port(
  	T, reset, clk: in std_logic; 
    Q: inout std_logic
  );
end entity T_FF;

architecture Behavioral of T_FF is 
  begin
  process (reset, clk) is begin
      if reset = '1' then
     	 Q <= '0'; 
      elsif(rising_edge(clk)) then 
      	Q <= Q xor T;
      end if;
  end process;

end Behavioral;