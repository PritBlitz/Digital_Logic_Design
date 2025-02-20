----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.01.2025 23:11:02
-- Design Name: 
-- Module Name: NANDtoINVERTOR - Behavioral
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

entity NANDtoINVERTOR is
    Port ( A : in STD_LOGIC;
           A_not : out STD_LOGIC);
end NANDtoINVERTOR;

architecture Behavioral of NANDtoINVERTOR is

begin

    A_not <= A nand A ; 


end Behavioral;
