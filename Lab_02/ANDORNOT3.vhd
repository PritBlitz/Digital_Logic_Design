----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.01.2025 17:04:28
-- Design Name: 
-- Module Name: ANDORNOT3 - Behavioral
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

entity ANDORNOT3 is
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           R : out STD_LOGIC);
end ANDORNOT3;

architecture Behavioral of ANDORNOT3 is

begin

    R <= ((not X) and (not Y) and (not Z)) or ((not X) and Y and (not Z)) or (X and (not Y) and (not Z)) or ( X and Y and (not Z)) ; 

end Behavioral;
