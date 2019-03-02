----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2019 04:56:27 PM
-- Design Name: 
-- Module Name: Prob_6_2 - Behavioral
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

entity Prob_6_2 is
  Port (
         X: in std_logic_vector(7 downto 0);
        SEL: in std_logic_vector(2 downto 0);
        Y : out std_logic
   );
end Prob_6_2;

architecture Behavioral of Prob_6_2 is

begin

    ifmodel: process(SEL) is
    begin
        if (SEL = "000") then
            Y <= X(0);
        elsif (SEL = "001") then
            Y <= X(1);
        elsif (SEL = "010") then
            Y <= X(2);
        elsif (SEL = "011") then
            Y <= X(4);
        elsif (SEL = "100") then
            Y <= X(4);
        elsif (SEL = "101") then
            Y <= X(5);
        elsif (SEL = "110") then
            Y <= X(6);
        elsif (SEL = "111") then
            Y <= X(7);
        else
            Y <= '0';
        end if;
    
    end process ifmodel;


end Behavioral;
