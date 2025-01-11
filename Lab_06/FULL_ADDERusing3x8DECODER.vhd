----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2025 10:43:21
-- Design Name: 
-- Module Name: FULL_ADDERusing3x8DECODER - Behavioral
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

entity FULL_ADDERusing3x8DECODER is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           S : out STD_LOGIC;
           Cout : out STD_LOGIC);
end FULL_ADDERusing3x8DECODER;

architecture Behavioral of FULL_ADDERusing3x8DECODER is
    signal Y0 , Y1 , Y2 , Y3 , Y4 , Y5 , Y6 , Y7 : STD_LOGIC ; 
begin

    Y0 <= (not A) and (not B ) and (not C ) ; 
    Y1 <= (not A) and (not B ) and (C) ; 
    Y2 <= (not A) and (B) and (not C ) ; 
    Y3 <= (not A) and (B ) and (C ) ; 
    Y4 <= (A) and (not B ) and (not C ) ; 
    Y5 <= (A) and (not B ) and (C ) ; 
    Y6 <= (A) and (B ) and (not C ) ; 
    Y7 <= (A) and (B ) and (C ) ; 
    S <= Y1 or Y2 or Y4 or Y7 ; 
    Cout <= Y3 or Y5 or Y6 or Y7 ; 

end Behavioral;
