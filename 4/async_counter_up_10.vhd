----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:46:05 11/13/2022 
-- Design Name: 
-- Module Name:    async_counter_up_10 - Behavioral 
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

entity async_counter_up_10 is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0) := "0000");
end async_counter_up_10;

architecture Behavioral of async_counter_up_10 is

COMPONENT JK_FF  
   PORT(  
			  J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  rst : in STD_LOGIC;
           Q : out  STD_LOGIC;
           Qbar : out  STD_LOGIC     
     );  
   END COMPONENT;

signal temp : std_logic_vector(3 downto 0) := "0000";

begin

 d0 : JK_FF  
     port map (  
       rst  => reset,  
       clk  => clock,  
       J      => '1',  
       K      => '1',        
		 Q      => temp(0)  
     );  

 d1 : JK_FF  
     port map (  
       rst  => reset,  
       clk  => clock,  
       J      => temp(0) and not temp(3),  
       K      => temp(0) and not temp(3),      
       Q      => temp(1)  
     );  

 d2 : JK_FF  
     port map (  
       rst  => reset,  
       clk  => clock,  
       J      => temp(0) and temp(1),  
       K      => temp(0) and temp(1),  
       Q      => temp(2)  
     );  

 d3 : JK_FF  
     port map (  
       rst  => reset,  
       clk  => clock,  
       J      => (temp(0) and temp(3)) or (temp(2) and (temp(0) and temp(1)) ),  
       K      => (temp(0) and temp(3)) or (temp(2) and (temp(0) and temp(1)) ),  
       Q      => temp(3)  
     );  

 count(3) <= temp(3);  
 count(2) <= temp(2);  
 count(1) <= temp(1);  
 count(0) <= temp(0); 
 
end Behavioral;

