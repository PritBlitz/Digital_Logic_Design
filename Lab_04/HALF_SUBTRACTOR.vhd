----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2025 00:21:12
-- Design Name: 
-- Module Name: HALF_SUBTRACTOR - Behavioral
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

entity HALF_SUBTRACTOR is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           D : out STD_LOGIC;
           B : out STD_LOGIC);
end HALF_SUBTRACTOR;

architecture Behavioral of HALF_SUBTRACTOR is

begin

    D <= X xor Y ; 
    B <= (not X ) and Y ; 

end Behavioral;
