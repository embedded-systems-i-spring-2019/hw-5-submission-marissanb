----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2019 04:49:06 PM
-- Design Name: 
-- Module Name: Prob_6_1 - Behavioral
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

--Chapter 8, Problem 6 using case statements

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Prob_6_1 is
  Port (
        X: in std_logic_vector(7 downto 0);
        SEL: in std_logic_vector(2 downto 0);
        Y : out std_logic
   );
end Prob_6_1;

architecture Behavioral of Prob_6_1 is

begin

    casemodel: process(SEL) is
    begin
    case (SEL) is
        when "000" => Y <= X(0);
        when "001" => Y <= X(1);
        when "010" => Y <= X(2);
        when "011" => Y <= X(3);
        when "100" => Y <= X(4);
        when "101" => Y <= X(5);
        when "110" => Y <= X(0);
        when "111" => Y <= X(0);
        when others => Y <= '0';
    end case; 
        
    end process casemodel;

end Behavioral;
