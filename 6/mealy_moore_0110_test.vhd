LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_moore_mealy IS
END tb_moore_mealy;

ARCHITECTURE behavior OF tb_moore_mealy IS 
   signal input, reset, clk : std_logic := '0';
   signal output_moore, output_mealy : std_logic := '0';
   constant clk_period : time := 20 ns;
BEGIN
 
	UUT1 : ENTITY WORK.moore_detector(Behavioral) PORT MAP (input,reset,clk,output_moore);
	UUT2 : ENTITY WORK.mealy_detector(Behavioral) PORT MAP (input,reset,clk,output_mealy);
	
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	input <= '1' after 20 ns, '0' after 60 ns, '1' after 80 ns,
			 '0' after 100 ns, '1' after 120 ns, '0' after 160 ns;
	reset <= '1' after 140 ns;
END;
