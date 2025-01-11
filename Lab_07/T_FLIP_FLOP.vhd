----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2025 12:04:09
-- Design Name: 
-- Module Name: T_FLIP_FLOP - Behavioral
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

entity T_FLIP_FLOP is
    Port ( Rst : in STD_LOGIC;
           Clk : in STD_LOGIC;
           T : in STD_LOGIC;
           Q :  buffer STD_LOGIC;
           Qn : buffer STD_LOGIC);
end T_FLIP_FLOP;

architecture Behavioral of T_FLIP_FLOP is

begin

    Qn <= not Q ; 
    process(T , Clk , Rst ) 
begin 

    if(Rst = '0') then 
        Q <= '0' ; 
    elsif(rising_edge(Clk)) then 
        if(T = '1' ) then 
            Q <= not Q ; 
        end if ;
    end if ; 

end process ; 
end Behavioral;
