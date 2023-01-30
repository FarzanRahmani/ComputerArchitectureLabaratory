-- 1101_detector using moore machine
library ieee;
use ieee.std_logic_1164.all;

entity detector_1101 is
port(
    clk: in std_logic;
    reset: in std_logic;
    input: in std_logic;
    output: out std_logic
);
end detector_1101;

architecture moore of detector_1101 is
    -- type state is (s0, s1, s11, s110, s1101);
    -- signal present_state
    constant s0: std_logic_vector(3 downto 0) := "0000";
    constant s1: std_logic_vector(3 downto 0) := "0001";
    constant s11: std_logic_vector(3 downto 0) := "0011";
    constant s110: std_logic_vector(3 downto 0) := "0110";
    constant s1101: std_logic_vector(3 downto 0) := "1101";
    signal present_state: std_logic_vector(3 downto 0) := s0; -- rst="0000" as default

-- begin
--     process(clk) -- reset should be synchronous with clk
--     begin
--         if (clk == '1' and clk'event) then 
--             if (reset == '1') then
--                 present_state <= s0;
--             else
--                 case present_state is
--                     when s0 =>
--                         if input = '1' then
--                             present_state <= s1;
--                         end if;
--                     when s1 =>
--                         if input = '1' then
--                             present_state <= s11;
--                         else
--                             present_state <= s0;
--                         end if;
--                     when s11 =>
--                         if input = '0' then
--                             present_state <= s110;
--                         else
--                             present_state <= s11;
--                         end if;
--                     when s110 =>
--                         if input = '1' then
--                             present_state <= s1101;
--                         else
--                             present_state <= s0;
--                         end if;
--                     when s1101 =>
--                         present_state <= s0;
--                         if input = '1' then
--                             present_state <= s11;
--                         else
--                             present_state <= s0;
--                         end if;
--                     when others =>
--                         present_state <= s0;
--                 end case;
--             end if;
--         end if;
--     end process;

--     -- output <= present_state(3);
--     output <= '1' when present_state = s1101 else '0';

begin
    process(clk, reset)
    begin
        if reset = '1' then
            present_state <= s0;
        elsif rising_edge(clk) then
            case present_state is
                when s0 =>
                    if input = '1' then
                        present_state <= s1;
                    end if;
                when s1 =>
                    if input = '1' then
                        present_state <= s11;
                    else
                        present_state <= s0;
                    end if;
                when s11 =>
                    if input = '0' then
                        present_state <= s110;
                    else
                        present_state <= s11;
                    end if;
                when s110 =>
                    if input = '1' then
                        present_state <= s1101;
                    else
                        present_state <= s0;
                    end if;
                when s1101 =>
                    present_state <= s0;
                    if input = '1' then
                        present_state <= s11;
                    else
                        present_state <= s0;
                    end if;
                when others =>
                    present_state <= s0;
            end case;
        end if;
    end process;

    output <= present_state(3);


    end moore;