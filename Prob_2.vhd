----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2019 04:00:45 PM
-- Design Name: 
-- Module Name: Prob_2 - Behavioral
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


entity Prob_2 is
  Port (
        A_1, A_2, B_1, B_2, D_1 : in std_logic;
        E_out: out std_logic
   );
end Prob_2;

architecture Behavioral of Prob_2 is
signal AA : std_logic_vector(1 downto 0);
signal BB: std_logic_vector(1 downto 0);
signal BD: std_logic_vector(1 downto 0);
signal Ao: std_logic;
signal Bo: std_logic;
signal Co: std_logic;


begin
    AA <= A_1 & A_2;
    BB <= B_1 & B_2;
    BD <= B_2 & D_1;
    
    
    ckt2: process (AA, BB, BD) is
    begin
        case (AA) is
        when "11" => E_out <= '1';
        when others => Ao <= '0';
        end case;
        
        case (BB) is
        when "10" => E_out <= '1';
        when "01" => E_out <= '1';
        when "11" => E_out <= '1';
        when others => Bo <= '0';
        end case;
        
        case (BD) is
        when "10" => E_out <= '1';
        when others => Co <= '0';
        end case;     
    
    E_out <= Ao OR Bo OR Co;
    end process ckt2;
    
    
 end Behavioral;
