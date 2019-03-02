----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2019 05:07:34 PM
-- Design Name: 
-- Module Name: Prob_7_1 - Behavioral
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

entity Prob_7_1 is
  Port (
        S: in std_logic_vector(0 to 2);
        E: in std_logic;
        D: out std_logic_vector(0 to 7)
   );
end Prob_7_1;

architecture Behavioral of Prob_7_1 is

begin

    casemodel: process(E) is
    begin
    case (E) is
        when '1' => case(S) is
                        when "000" => D <= "10000000";
                        when "001" => D <= "01000000";
                        when "010" => D <= "00100000";
                        when "011" => D <= "00010000";
                        when "100" => D <= "00001000";
                        when "101" => D <= "00000100";
                        when "110" => D <= "00000010";
                        when "111" => D <= "00000001";
                        when others => D <= (others => '0');
                        end case;
        when others => D <= (others => '0');
    end case;
    
    end process casemodel;


end Behavioral;
