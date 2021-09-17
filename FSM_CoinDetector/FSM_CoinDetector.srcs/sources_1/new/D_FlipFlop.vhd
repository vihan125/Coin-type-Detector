----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/15/2021 09:12:14 PM
-- Design Name: 
-- Module Name: D_FlipFlop - Behavioral
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

entity D_FlipFlop is
  Port (
    Q : out std_logic;    
    Clk :in std_logic;
    D :in  std_logic
   );
end D_FlipFlop;

architecture Behavioral of D_FlipFlop is

begin
    process(Clk)
        begin 
            if(rising_edge(Clk)) then
                Q <= D; 
            end if;       
        end process;
end Behavioral;
