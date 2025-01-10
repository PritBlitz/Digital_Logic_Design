----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.01.2025 23:46:47
-- Design Name: 
-- Module Name: XORusingNAND - Behavioral
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

entity XORusingNAND is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
end XORusingNAND;

architecture Behavioral of XORusingNAND is
    signal Y0 , Y1 , Y2 : STD_LOGIC ; 
begin

    Y0 <= A nand B ; 
    Y1 <= A nand Y0 ; 
    Y2 <= B nand Y0 ; 
    Y <= Y1 nand Y2 ; 

end Behavioral;
