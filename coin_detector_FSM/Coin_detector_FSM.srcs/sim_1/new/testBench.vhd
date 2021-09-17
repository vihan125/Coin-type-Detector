----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/15/2021 02:19:24 PM
-- Design Name: 
-- Module Name: testBench - Behavioral
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

entity testBench is
--  Port ( );
end testBench;

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
  
  component coin_FSM is
      Port (
          clock : IN STD_LOGIC;
          X     : IN STD_LOGIC;
          Y     : IN STD_LOGIC;
          Z     : IN STD_LOGIC;
          P1    : OUT STD_LOGIC;
          P2    : OUT STD_LOGIC;
          P5    : OUT STD_LOGIC
          );
  end component;

begin

uut : coin_FSM port map(
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

