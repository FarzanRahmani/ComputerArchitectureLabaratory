--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:28:08 04/19/2022
-- Design Name:   
-- Module Name:   G:/IUST_4002/CA Lab/azMemari5/SIPO_shift_reg/SIPO_shift_reg_test.vhd
-- Project Name:  SIPO_shift_reg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SIPO_shift_reg
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
 
ENTITY SIPO_shift_reg_test IS
END SIPO_shift_reg_test;
 
ARCHITECTURE behavior OF SIPO_shift_reg_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SIPO_shift_reg
	 generic(n : positive := 4);
    PORT(
         input : IN  std_logic;
         clk : IN  std_logic;
         output : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal output : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SIPO_shift_reg GENERIC MAP(n => 4) PORT MAP (
          input => input,
          clk => clk,
          output => output
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
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		input <= '1','0' after 15 ns, '1' after 25 ns, '0' after 40 ns, '1' after 100 ns, '1' after 120 ns;
      wait;
   end process;

END;
