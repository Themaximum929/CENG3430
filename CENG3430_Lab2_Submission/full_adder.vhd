----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/23/2024 02:13:27 PM
-- Design Name: 
-- Module Name: full_adder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder is
    Port ( A, B, Cin: in STD_LOGIC;
           Sum, Cout: out STD_LOGIC );
end full_adder;

architecture Behavioral of full_adder is
    signal XOR1, AND1, AND2: STD_LOGIC;
begin
    -- Output for Sum
    XOR1 <= A xor B;
    Sum <= XOR1 xor Cin;
    
    -- Output for Cout
    AND1 <= XOR1 and Cin;
    AND2 <= A and B;
    Cout <= AND1 or AND2;
    
end Behavioral;
