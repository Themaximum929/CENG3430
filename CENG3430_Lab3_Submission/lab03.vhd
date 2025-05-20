library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity lab03 is
    Port ( sel, reset, clk: in std_logic;
           D: in std_logic_vector(3 downto 0);
           Q: buffer std_logic_vector(7 downto 0)
           );
end lab03;

architecture Behavioral of lab03 is
    component D_FF Port(
            clk, reset, D: in STD_LOGIC;
            Q: buffer STD_LOGIC);
    end component;
    component MUX Port(
            sel, in1, in2: in std_logic;
            out1: out std_logic);
    end component;
    
    signal m : std_logic_vector(3 downto 0);
    signal z : std_logic := '0';
    
begin
    mux1: MUX port map(sel, z, D(0), m(0));
    mux2: MUX port map(sel, Q(0), D(1), m(1));
    mux3: MUX port map(sel, Q(1), D(2), m(2));
    mux4: MUX port map(sel, Q(2), D(3), m(3)); 
    
    D_FF1: D_FF port map(clk, reset, m(0), Q(0));
    D_FF2: D_FF port map(clk, reset, m(1), Q(1));
    D_FF3: D_FF port map(clk, reset, m(2), Q(2));
    D_FF4: D_FF port map(clk, reset, m(3), Q(3)); 
    D_FF5: D_FF port map(clk, reset, Q(3), Q(4));
    D_FF6: D_FF port map(clk, reset, Q(4), Q(5));
    D_FF7: D_FF port map(clk, reset, Q(5), Q(6));
    D_FF8: D_FF port map(clk, reset, Q(6), Q(7));
end Behavioral;
