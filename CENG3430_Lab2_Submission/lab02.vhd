library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab02 is
    Port (
        A: in std_logic_vector(2 downto 0) := "000";
        B: in std_logic_vector(2 downto 0) := "000";
        Cin: in std_logic;
        Sum: out std_logic_vector(3 downto 0) := "0000");
end lab02;

architecture Behavioral of lab02 is
    component full_adder 
    Port(   A, B, Cin: in STD_LOGIC;
           Sum, Cout: out STD_LOGIC );
    end component;
           
    signal Cout: std_logic_vector(1 downto 0):= "00";

begin
    full_adder1: full_adder port map( A => A(0), B => B(0), Cin => Cin, Sum => Sum(0), Cout => Cout(0));
    full_adder2: full_adder port map( A => A(1), B => B(1), Cin => Cout(0), Sum => Sum(1), Cout => Cout(1));
    full_adder3: full_adder port map( A => A(2), B => B(2), Cin => Cout(1), Sum => Sum(2), Cout => Sum(3));

end Behavioral;
