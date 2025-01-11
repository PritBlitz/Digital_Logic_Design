----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2025 09:10:17
-- Design Name: 
-- Module Name: TwoBitCOMPARATOR - Behavioral
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

entity TwoBitCOMPARATOR is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           AGB : out STD_LOGIC;
           ALB : out STD_LOGIC;
           AEB : out STD_LOGIC);
end TwoBitCOMPARATOR;

architecture Behavioral of TwoBitCOMPARATOR is

begin

    AGB <= (A and (not C)) or (A xnor C) or (B and (not D)) ; 
    ALB <= ((not A) and C) or ((A xnor C) and ((not B) and D)) ; 
    AEB <= (A xnor C) and (B xnor C) ; 

end Behavioral;
