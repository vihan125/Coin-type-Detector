----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/16/2021 12:58:57 AM
-- Design Name: 
-- Module Name: TestBench - Behavioral
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

entity TestBench is
--  Port ( );
end TestBench;

architecture Behavioral of testBench is
  -- Inputs
  signal Clock :  STD_LOGIC := '1'; --default value for clock
  signal X     :  STD_LOGIC;
  signal Y     :  STD_LOGIC;
  signal Z     :  STD_LOGIC;
      
  -- Outputs
  signal P1    :  STD_LOGIC;
  signal P2    :  STD_LOGIC;
  signal P5    :  STD_LOGIC;
  
  component FSM_OneHot is
      Port (
          clock : in STD_LOGIC;
          X     : in STD_LOGIC;
          Y     : in STD_LOGIC;
          Z     : in STD_LOGIC;
          P1    : out STD_LOGIC;
          P2    : out STD_LOGIC;
          P5    : out STD_LOGIC
          );
  end component;

begin

uut : FSM_OneHot port map(
  clock => Clock,
  X => X,
  Y => Y,
  Z => Z,
  P1 => P1,
  P2 => P2,
  P5 => P5
);

Clock <=  '1' after 2.5 ns when Clock = '0' else
       '0' after 2.5 ns when Clock = '1';

tb : process
    begin
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '1';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '1';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '1';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '1';
    Y <= '1';
    X <= '0';
    wait for 5ns;
    Z <= '1';
    Y <= '1';
    X <= '0';
    wait for 5ns;
    Z <= '1';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait for 5ns; 
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait for 5ns; 
    Z <= '1';
    Y <= '0';
    X <= '0';
    wait for 5ns; 
    Z <= '1';
    Y <= '1';
    X <= '0';
    wait for 5ns; 
    Z <= '1';
    Y <= '1';
    X <= '1';
    wait for 5ns;
    Z <= '1';
    Y <= '1';
    X <= '1';
    wait for 5ns;
    Z <= '1';
    Y <= '1';
    X <= '0';
    wait for 5ns; 
    Z <= '1';
    Y <= '0';
    X <= '0';
    wait for 5ns; 
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait for 5ns; 
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait for 5ns; 
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait for 5ns; 
    Z <= '1';
    Y <= '0';
    X <= '0';
    wait for 5ns; 
    Z <= '1';
    Y <= '1';
    X <= '0';
    wait for 5ns; 
    Z <= '1';
    Y <= '0';
    X <= '0';
    wait for 5ns; 
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait for 5ns; 
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '1';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '1';
    Y <= '1';
    X <= '0';
    wait for 5ns;
    Z <= '1';
    Y <= '1';
    X <= '1';
    wait for 5ns;
    Z <= '1';
    Y <= '1';
    X <= '0';
    wait for 5ns;
    Z <= '1';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '1';
    Y <= '0';
    X <= '0';
    wait for 5ns; 
    Z <= '1';
    Y <= '1';
    X <= '0';
    wait for 5ns; 
    Z <= '1';
    Y <= '1';
    X <= '0';
    wait for 5ns; 
    Z <= '1';
    Y <= '1';
    X <= '0';
    wait for 5ns; 
    Z <= '1';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait for 5ns;
    Z <= '0';
    Y <= '0';
    X <= '0';
    wait;
end process;
    
end Behavioral;
