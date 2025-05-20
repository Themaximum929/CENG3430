library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_div is
    generic(
        N: integer
    );
    Port (
        clk_in: in std_logic;
        clk_out: buffer std_logic := '0'
         );
end clk_div;

architecture Behavioral of clk_div is
    signal counter: integer := 0;
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if counter = N - 1 then
                clk_out <= not clk_out;
                counter <= 0;
            else
                counter <= counter + 1; 
            end if; 
        end if;
    end process;
end Behavioral;
