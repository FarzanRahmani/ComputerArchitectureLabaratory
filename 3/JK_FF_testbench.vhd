--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:24:07 11/05/2022
-- Design Name:   
-- Module Name:   E:/uni/5th term/computer architecture lab/class/3/week3/JK_FF_testbench.vhd
-- Project Name:  week3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JK_flip_flop
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
 
ENTITY JK_FF_testbench IS
END JK_FF_testbench;
 
ARCHITECTURE behavior OF JK_FF_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JK_flip_flop
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         Q : OUT  std_logic;
         Qbar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qbar : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JK_flip_flop PORT MAP (
          J => J,
          K => K,
          clk => clk,
          rst => rst,
          Q => Q,
          Qbar => Qbar
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   --stim_proc: process
   --begin		
      -- hold reset state for 100 ns.
   --   wait for 100 ns;	

   --    wait for clk_period*10;

      -- insert stimulus here 

   --   wait;
   --end process;
	
	Force: process
	begin
		J <= '0';
		K <= '0';
		rst <= '0';
		wait for 20 ns;

		J <= '0';
		K <= '1';
		rst <= '0';
		wait for 20 ns;

		J <= '1';
		K <= '0';
		rst <= '0';
		wait for 20 ns;

		J <= '1';
		K <= '1';
		rst <= '0';
		wait for 20 ns;

		J <= '1';
		K <= '1';
		rst <= '0';
		wait for 20 ns;

		J <= '0';
		K <= '0';
		rst <= '0';
		wait for 20 ns;

		J <= '0';
		K <= '0';
		rst <= '1';
		wait for 20 ns;
	end process;

END;
