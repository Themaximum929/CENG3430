library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
    Port (  sel, in1, in2: in std_logic;
            out1: out std_logic
         );
end MUX;

architecture Behavioral of MUX is
begin
    process (sel, in1, in2)
        begin
            if sel = '0' then
                out1 <= in1;
            else
                out1 <= in2;
            end if;
    end process;
end Behavioral;
