--adapted from : zainalabedin navabi, 
--"vhdl modular design and synthesis of cores and systems",
--mcgraw-hill, 3rd edition, 2007.
library ieee;
use ieee.std_logic_1164.all;
entity moore_detector is
port (input, reset, clk : in std_logic; 
		output : out std_logic);
end entity ;
architecture Behavioral of moore_detector is
	type state is (rst, got0, got01, got011, got0110);
	signal present_state : state := rst;
	--constant rst : std_logic_vector(1 downto 0) := "00"; 
	--constant got1  : std_logic_vector(1 downto 0) := "01"; 
	--constant got10 : std_logic_vector(1 downto 0) := "10"; 
	--constant got101: std_logic_vector(1 downto 0) := "11"; 
	--signal present_state : std_logic_vector(1 downto 0) := "00"; --rst="00" as default
begin
process (clk) --reset should be synchronous with clk
begin
	if (clk = '1' and clk'event) then
		if reset = '1' then
			present_state <= rst;
		else
			case present_state is
				when rst =>
					if input = '0' then 
						present_state <= got0;
					else 
						present_state <= rst;
					end if;
				when got0 =>
					if input = '1' then 
						present_state <= got01;
					else 
						present_state <= got0;
					end if;
				when got01 =>
					if input = '1' then 
						present_state <= got011;
					else 
						present_state <= got0; 
					end if;
				when got011 =>
					if input = '1' then 
						present_state <= rst;
					else 
						present_state <= got0110; 
					end if;
				when got0110 =>
					if input = '1' then
						present_state <= got01;
					else
						present_state <= rst;
					end if;
				when others => 
					present_state <= rst;
			end case;
		end if;
	end if;
end process;

	output <= '1' when present_state = got0110 else '0';
	
end Behavioral;
