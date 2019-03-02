----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2019 04:32:09 PM
-- Design Name: 
-- Module Name: Prob_2_2 - Behavioral
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

entity Prob_2_2 is
  Port (
        A_1, A_2, B_1, B_2, D_1 : in std_logic;
        E_out: out std_logic
   );
end Prob_2_2;

architecture Behavioral of Prob_2_2 is

begin

    ifmodel: process (A_1,A_2,B_1,B_2,D_1) is
    begin
    if (A_1 = '1') AND (A_2 = '1') then
        E_out <= '1';
    elsif (B_2 = '1') AND (D_1 = '0') then
        E_out <= '1';
    elsif (B_1 = '1') OR (B_2 = '1') then
        E_out <= '1';
    else
        E_out <= '0';
    end if;
  
    end process ifmodel;

end Behavioral;
