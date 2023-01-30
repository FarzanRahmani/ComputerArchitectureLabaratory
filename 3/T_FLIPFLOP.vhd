----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:53:06 11/05/2022 
-- Design Name: 
-- Module Name:    T_FLIPFLOP - Behavioral 
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

entity T_FLIPFLOP is
    Port ( T : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RES : in  STD_LOGIC;
           TEMP : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QB : out  STD_LOGIC);
end T_FLIPFLOP;

architecture Behavioral of T_FLIPFLOP is

begin

PROCESS(T,CLK,RES)

VARIABLE TEMP:STD_LOGIC:='0';

BEGIN

IF(RES='1')THEN
TEMP:='0';
ELSIF(RISING_EDGE(CLK))THEN
IF(T='1')THEN
TEMP:= NOT TEMP;

END IF;
END IF;
Q<= NOT TEMP;
QB<= TEMP;

END PROCESS;

end Behavioral;

