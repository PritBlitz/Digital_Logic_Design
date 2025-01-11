----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2025 10:06:06
-- Design Name: 
-- Module Name: MUX2X1 - Behavioral
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

entity MUX2X1 is
    Port ( S : in STD_LOGIC;
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           Y : out STD_LOGIC);
end MUX2X1;

architecture Behavioral of MUX2X1 is

begin

    Y <= ((not S) and A ) or (S and B) ; 

end Behavioral;
