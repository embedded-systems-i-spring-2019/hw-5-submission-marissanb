----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2019 05:19:21 PM
-- Design Name: 
-- Module Name: Prob_7_2 - Behavioral
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

entity Prob_7_2 is
  Port (
        S: in std_logic_vector(0 to 2);
        E: in std_logic;
        D: out std_logic_vector(0 to 7)
   );
end Prob_7_2;

architecture Behavioral of Prob_7_2 is

begin

    ifmodel: process (E) is
    begin
    if E = '1' then
        if S = "000" then
            D <= "10000000";
        elsif S = "001" then
            D <= "01000000";
        elsif S = "010" then
            D <= "01000000";
        elsif S = "011" then
            D <= "00010000";
        elsif S = "100" then
            D <= "00001000";
        elsif S = "101" then
            D <= "00000100";
        elsif S = "110" then
            D <= "00000010";
        elsif S = "111" then
            D <= "00000001";
        else
            D <= (others => '0');
        end if;
    else
        D <= (others => '0');
    end if;
    end process ifmodel;

end Behavioral;
