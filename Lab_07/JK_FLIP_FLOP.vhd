----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2025 11:45:21
-- Design Name: 
-- Module Name: JK_FLIP_FLOP - Behavioral
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

entity JK_FLIP_FLOP is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Rst : in STD_LOGIC;
           Q : out STD_LOGIC;
           Qn : out STD_LOGIC);
end JK_FLIP_FLOP;

architecture Behavioral of JK_FLIP_FLOP is

signal qc : STD_LOGIC ; 

begin 

    process(Clk , Rst , J , K ) 
begin

    if(Rst = '0' ) then 
        qc <= '0';
    elsif(Clk'Event and Clk ='1' ) then 
        if(J = '0' and K = '0') then 
            qc <= qc ; 
        elsif(J = '0' and K = '1' ) then 
            qc <= '0' ; 
        elsif(J = '1' and K = '0' ) then    
            qc <= '1' ;
        elsif(J = '1' and K = '1' ) then
            qc <= not qc ; 
        end if ;  
    end if ; 
    
    Q <= qc ; 
    Qn <= not qc ;  
        
        

end process ; 
end Behavioral;
