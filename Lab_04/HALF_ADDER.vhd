----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2025 00:17:27
-- Design Name: 
-- Module Name: HALF_ADDER - Behavioral
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

entity HALF_ADDER is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           S : out STD_LOGIC;
           C : out STD_LOGIC);
end HALF_ADDER;

architecture Behavioral of HALF_ADDER is

begin

    S <= X xor Y ; 
    C <= X and Y ; 

end Behavioral;
