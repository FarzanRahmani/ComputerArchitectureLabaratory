--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:44:19 10/30/2022
-- Design Name:   
-- Module Name:   E:/uni/5th term/computer architecture lab/class/3/week3/D_flip_flop_test.vhd
-- Project Name:  week3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: D_flip_flop
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY D_flip_flop_test IS
END D_flip_flop_test;
 
ARCHITECTURE behavior OF D_flip_flop_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT D_flip_flop
    PORT(
         d : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: D_flip_flop PORT MAP (
          d => d,
          reset => reset,
          clk => clk,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	d <= '1', 'X' after 22 ns, '1' after 24 ns, 'U' after 35ns, '1' after 40 ns;
	reset <= '1' after 50 ns, '0' after 60 ns;
 

   -- Stimulus process
--   stim_proc: process
--   begin		
      -- hold reset state for 100 ns.
--      wait for 100 ns;	

--      wait for clk_period*10;

      -- insert stimulus here 

--      wait;
--   end process;

END;
