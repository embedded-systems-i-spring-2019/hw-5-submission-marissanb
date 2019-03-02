----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2019 04:40:24 PM
-- Design Name: 
-- Module Name: Prob_3 - Behavioral
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

entity Prob_3 is
  Port (
         A_1, A_2, B_1, B_2, D_1 : in std_logic;
         E_out: out std_logic
   );
end Prob_3;

architecture Flow of Prob_3 is

begin
E_out <= (A_1 AND A_2) OR (B_1 OR B_2) OR (B_2 AND NOT(D_1));

end Flow;
