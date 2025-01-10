----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2025 01:13:08
-- Design Name: 
-- Module Name: TwoBitPARALLEL_ADDER - Behavioral
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

entity TwoBitPARALLEL_ADDER is
    Port ( A1 : in STD_LOGIC;
           A0 : in STD_LOGIC;
           B1 : in STD_LOGIC;
           B0 : in STD_LOGIC;
           C : out STD_LOGIC;
           S1 : out STD_LOGIC;
           S0 : out STD_LOGIC);
end TwoBitPARALLEL_ADDER;

architecture Behavioral of TwoBitPARALLEL_ADDER is

begin

    C <= (A1 and B1) or (A1 and A0 and B0) or (B1 and B0 and A0) ; 
    S1 <= A1 xor B1 xor (A0 and B0) ; 
    S0 <= A0 xor B0 ; 
    

end Behavioral;
