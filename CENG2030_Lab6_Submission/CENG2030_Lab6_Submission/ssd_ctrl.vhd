library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ssd_ctrl is
    Port (
        -- TODO-1: Create the input/output ports
        clk: in std_logic;
        data_in: in std_logic_vector(7 downto 0);
        sel: buffer std_logic := '0';
        ssd: out std_logic_vector(6 downto 0) 
        );
       
end ssd_ctrl;

architecture Behavioral of ssd_ctrl is
    -- TODO-4: Create the component of clk_div
    component clk_div is
        generic (
          N: integer
        );
        Port (
          clk_in: in std_logic;
          clk_out: out std_logic
        );
  end component; 
    -- Add any signals if needed
    
    signal digit: std_logic_vector(3 downto 0);
    signal clk100Hz: std_logic;
begin
    process(digit) begin
        case digit is
            when "0000" => ssd <= "1111110"; 
            when "0001" => ssd <= "0110000"; 
            when "0010" => ssd <= "1101101";
            when "0011" => ssd <= "1111001";
            when "0100" => ssd <= "0110011"; 
            when "0101" => ssd <= "1011011"; 
            when "0110" => ssd <= "1011111"; 
            when "0111" => ssd <= "1110000"; 
            when "1000" => ssd <= "1111111"; 
            when "1001" => ssd <= "1111011"; 
            when "1010" => ssd <= "1110111"; 
            when "1011" => ssd <= "0011111"; 
            when "1100" => ssd <= "1001110"; 
            when "1101" => ssd <= "0111101"; 
            when "1110" => ssd <= "1001111"; 
            when "1111" => ssd <= "1000111"; 
            when others => ssd <= "0000000";
         end case;
    end process;

    process (clk100Hz) begin
        if (rising_edge(clk100Hz)) then
            if (sel = '0') then
                sel <= '1';
            elsif (sel = '1') then
                sel <= '0';
            else
                sel <= '0';
            end if;
         end if;
     end process;     
   
   process (clk100Hz) begin
        if (rising_edge(clk100Hz)) then
            if (sel = '0') then
                digit <= data_in(7 downto 4);
            elsif (sel = '1') then
                digit <= data_in(3 downto 0);
            else
                digit <= digit;
            end if;
        end if;
    end process;
    
    -- TODO-5 : Port map the clk_div component (100MHz --> 100Hz)
    clk_div_inst: clk_div 
    generic map(
        N => 500000
    ) port map(
        clk_in => clk,
        clk_out => clk100Hz
    );


    -- TODO-6: Time-multiplexing (Create as many process as you want, OR use both sequential and combinational statement)
    -- digit <= data_in(3 downto 0);
end Behavioral;
