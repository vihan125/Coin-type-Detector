----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/15/2021 09:27:18 PM
-- Design Name: 
-- Module Name: FSM_OneHot - Behavioral
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

entity FSM_OneHot is
  Port (
        clock : in STD_LOGIC;
        X : in STD_LOGIC;
        Y : in STD_LOGIC;
        Z : in STD_LOGIC;
        P1 : out STD_LOGIC;
        P5 : out STD_LOGIC;
        P2 : out STD_LOGIC
   );
end FSM_OneHot;

architecture Behavioral of FSM_OneHot is

    component D_FlipFlop
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           q : out STD_LOGIC);
    end component;
    
    signal y0 : STD_LOGIC;
    signal y1 : STD_LOGIC;
    signal y2 : STD_LOGIC;
    signal y3 : STD_LOGIC;
    signal y4 : STD_LOGIC;
    signal y5 : STD_LOGIC;
    signal y6 : STD_LOGIC;
    
    signal d0 : STD_LOGIC:= '1';
    signal d1 : STD_LOGIC:= '0';
    signal d2 : STD_LOGIC:= '0';
    signal d3 : STD_LOGIC:= '0';
    signal d4 : STD_LOGIC:= '0';
    signal d5 : STD_LOGIC:= '0';
    signal d6 : STD_LOGIC:= '0';
    
begin

    d0 <= '1' when (y1 = 'U' or y4 = 'U' or y5 = 'U' or y6 = 'U') else (y0 or y4 or y5 or y6) and ((not X) and (not Y) and (not Z));
    d1 <= '0' when (y0 = 'U' or y1 = 'U' or y4 = 'U' or y5 = 'U' or y6 = 'U') else (y0 or y1) and ((not X) and (not Y) and Z) ;
    d2 <= '0' when (y1 = 'U' or y2 = 'U') else (y2 and (not X) and (not Y) and Z) or ((y1 or y2)and((not X) and Y and Z)) ;
    d3 <= '0' when (y2 = 'U' or y3 = 'U') else (y3 and (not X) and (not Y) and Z) or (y3 and (not X) and Y and Z) or ((y2 or y3)and(X and Y and Z)) ;
    d4 <= '0' when (y1 = 'U') else y1 and (not X) and (not Y) and (not Z) ;
    d5 <= '0' when (y2 = 'U') else y2 and (not X) and (not Y) and (not Z) ;
    d6 <= '0' when (y3 = 'U') else y3 and (not X) and (not Y) and (not Z) ;
    
    FF_0 : D_FlipFlop
    port map ( d => d0,
               clk => clock,
               q => y0 
    );

    FF_1 : D_FlipFlop
    port map ( d => d1 ,
               clk => clock,
               q => y1 
    );
    
    FF_2 : D_FlipFlop
    port map ( d => d2 ,
               clk => clock,
               q => y2 
    );
    
    FF_3 : D_FlipFlop
    port map ( d => d3 ,
               clk => clock,
               q => y3 
    );
    
    FF_4 : D_FlipFlop
    port map ( d => d4 ,
               clk => clock,
               q => y4 
    );
    
    FF_5 : D_FlipFlop
    port map ( d => d5 ,
               clk => clock,
               q => y5 
    );
    
    FF_6 : D_FlipFlop
    port map ( d => d6 ,
               clk => clock,
               q => y6 
    );

    P1 <= y4;
    P5 <= y5;
    P2 <= y6;
    
end Behavioral;
