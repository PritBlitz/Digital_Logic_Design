----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2025 11:03:50
-- Design Name: 
-- Module Name: PRIORITY_ENCODER - Behavioral
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

entity PRIORITY_ENCODER is
    Port ( D3 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D0 : in STD_LOGIC;
           X : out STD_LOGIC;
           Y : out STD_LOGIC;
           V : out STD_LOGIC);
end PRIORITY_ENCODER;

architecture Behavioral of PRIORITY_ENCODER is

begin

    X <= D3 or D2  ; 
    Y <= D3 or ((not D2) and D1) ; 
    V <= D0 or D1 or D2 or D3 ; 

end Behavioral;
