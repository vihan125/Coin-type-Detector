----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/15/2021 12:31:04 PM
-- Design Name: 
-- Module Name: coin_FSM - Behavioral
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

entity coin_FSM is
  Port (
    clock: in STD_LOGIC;
    
    X : in STD_LOGIC;
    Y : in STD_LOGIC;
    Z : in STD_LOGIC;
    
    P1 : out STD_LOGIC;
    P5 : out STD_LOGIC;
    P2 : out STD_LOGIC
   );
end coin_FSM;

architecture Behavioral of coin_FSM is
    signal s: STD_LOGIC_VECTOR(6 downto 0);
begin
    process(clock)
    begin
        if rising_edge(clock) then
            case s is
                when "0000001" =>
                    if (X = '0' and Y = '0' and Z = '1') then
                        s <= "0000010";
                    else
                        s <= "0000001";
                    end if;
                when "0000010" =>
                    if (X = '0' and Y = '0' and Z = '1') then
                        s <= "0000010";
                    elsif (X = '0' and Y = '1' and Z = '1') then
                        s <= "0000100";
                    elsif (X = '0' and Y = '0' and Z = '0') then
                        s <= "0010000";  
                    else
                        s <= "0000001";                
                    end if;
                when "0000100" =>
                        if (X = '0' and Y = '0' and Z = '1') or (X = '0' and Y = '1' and Z = '1')then
                            s <= "0000100";
                        elsif (X = '0' and Y = '0' and Z = '0') then
                            s <= "0100000";
                        elsif (X = '1' and Y = '1' and Z = '1') then
                            s <= "0001000";   
                        else
                            s <= "0000001";                
                        end if;            
                when "0001000" =>
                        if (X = '0' and Y = '0' and Z = '1') or (X = '0' and Y = '1' and Z = '1') or (X = '1' and Y = '1' and Z = '1')then
                            s <= "0001000";
                        elsif (X = '0' and Y = '0' and Z = '0') then
                            s <= "1000000";   
                        else
                            s <= "0000001";                
                        end if; 
                when "0010000" =>
                        if (X = '0' and Y = '0' and Z = '1') then
                            s <= "0000010"; 
                        else
                            s <= "0000001";                
                        end if;
                when "0100000" =>
                        if (X = '0' and Y = '0' and Z = '1') then
                            s <= "0000010"; 
                        else
                            s <= "0000001";                
                        end if;                                   
                when "1000000" =>
                        if (X = '0' and Y = '0' and Z = '1') then
                            s <= "0000010"; 
                        else
                            s <= "0000001";                
                        end if; 
                when others => s <= "0000001";
            end case;
        end if; 
    end process;
    
    P1 <= '1' when s = "0010000" else '0';
    P5 <= '1' when s = "0100000" else '0';
    P2 <= '1' when s = "1000000" else '0';
    
end Behavioral;
