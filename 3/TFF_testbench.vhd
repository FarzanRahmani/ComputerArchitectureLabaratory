--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:57:18 11/05/2022
-- Design Name:   
-- Module Name:   E:/uni/5th term/computer architecture lab/class/3/week3/TFF_testbench.vhd
-- Project Name:  week3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: T_FLIPFLOP
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
 
ENTITY TFF_testbench IS
END TFF_testbench;
 
ARCHITECTURE behavior OF TFF_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT T_FLIPFLOP
    PORT(
         T : IN  std_logic;
         CLK : IN  std_logic;
         RES : IN  std_logic;
         TEMP : IN  std_logic;
         Q : OUT  std_logic;
         QB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal T : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RES : std_logic := '0';
   signal TEMP : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QB : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: T_FLIPFLOP PORT MAP (
          T => T,
          CLK => CLK,
          RES => RES,
          TEMP => TEMP,
          Q => Q,
          QB => QB
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   --stim_proc: process
   --begin		
      -- hold reset state for 100 ns.
   --   wait for 100 ns;	

   --   wait for CLK_period*10;

      -- insert stimulus here 

    --  wait;
   --end process;
	
	stim: process
	begin

	RES <= '0';

	T <= '0';
	wait for 20 ns;

	T <= '1';
	wait for 20 ns;

	end process;

END;
