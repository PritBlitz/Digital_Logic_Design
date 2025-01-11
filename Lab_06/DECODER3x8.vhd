----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2025 10:26:14
-- Design Name: 
-- Module Name: DECODER3x8 - Behavioral
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

entity DECODER3x8 is
    Port ( E : in STD_LOGIC;
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           Y0 : out STD_LOGIC;
           Y1 : out STD_LOGIC;
           Y2 : out STD_LOGIC;
           Y3 : out STD_LOGIC;
           Y4 : out STD_LOGIC;
           Y5 : out STD_LOGIC;
           Y6 : out STD_LOGIC;
           Y7 : out STD_LOGIC);
end DECODER3x8;

architecture Behavioral of DECODER3x8 is

begin

    Y0 <= (not ((not E ) and (not A) and (not B) and (not C))) ; 
    Y1 <= (not ((not E ) and (not A) and (not B) and (C))) ; 
    Y2 <= (not ((not E ) and (not A) and (B) and (not C))) ; 
    Y3 <= (not ((not E ) and (not A) and (B) and (C))) ; 
    Y4 <= (not ((not E ) and (A) and (not B) and (not C))) ; 
    Y5 <= (not ((not E ) and (A) and (not B) and (C))) ; 
    Y6 <= (not ((not E ) and (A) and (B) and (not C))) ; 
    Y7 <= (not ((not E ) and (A) and (B) and (C))) ; 
 

end Behavioral;
