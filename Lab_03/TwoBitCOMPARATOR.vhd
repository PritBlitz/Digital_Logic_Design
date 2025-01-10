----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.01.2025 23:21:03
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
    Port ( A : in STD_LOGIC_VECTOR(1 downto 0);
           B : in STD_LOGIC_VECTOR(1 downto 0);
           X : out STD_LOGIC;
           Y : out STD_LOGIC;
           Z : out STD_LOGIC);
end TwoBitCOMPARATOR;

architecture Behavioral of TwoBitCOMPARATOR is

begin 

    process(A , B) 
begin

    if( A > B ) then 
        X <= '0' ; 
        Y <= '0' ; 
        Z <= '1' ; 
    elsif(A = B) then 
        X <= '0' ; 
        Y <= '1' ; 
        Z <= '0' ; 
     else 
        X <= '1' ; 
        Y <= '0' ; 
        Z <= '0' ; 
     end if ; 

end process ; 
end Behavioral;


