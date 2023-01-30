-- 1101_detector using moore machine test bench
library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity detector_1101_tb is
end detector_1101_tb;

architecture TB_ARCHITECTURE of detector_1101_tb is
	-- Component declaration of the tested unit
	component detector_1101
	port(
		clk : in STD_LOGIC;
		reset : in STD_LOGIC;
		input : in STD_LOGIC;
		output : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal clk : STD_LOGIC;
	signal reset : STD_LOGIC;
	signal input : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal output : STD_LOGIC;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : detector_1101
		port map (
			clk => clk,
			reset => reset,
			input => input,
			output => output
		);

        clk_process : process
        begin
            clk <= '0';
            wait for 10 ns;
            -- wait for clk_period/2;
            clk <= '1';
            wait for 10 ns;
            -- wait for clk_period/2;
        end process;
    
        input <= '1' after 20 ns, '1' after 40 ns, '0' after 60 ns, '1' after 80 ns,
                '0' after 100 ns, '0' after 120 ns, '1' after 140 ns, '0' after 160 ns;
        
        reset <= '0' after 100 ns, '1' after 140 ns;

	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_detector_1101 of detector_1101_tb is
	for TB_ARCHITECTURE
		for UUT : detector_1101
			use entity work.detector_1101(moore);
		end for;
	end for;
end TESTBENCH_FOR_detector_1101;

