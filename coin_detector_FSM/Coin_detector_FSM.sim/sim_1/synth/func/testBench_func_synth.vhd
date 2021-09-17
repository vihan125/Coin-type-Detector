-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Wed Sep 15 14:42:41 2021
-- Host        : DESKTOP-A59NAC1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Vihan/coin_detector_FSM/Coin_detector_FSM.sim/sim_1/synth/func/testBench_func_synth.vhd
-- Design      : coin_FSM
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity coin_FSM is
  port (
    clock : in STD_LOGIC;
    X : in STD_LOGIC;
    Y : in STD_LOGIC;
    Z : in STD_LOGIC;
    P1 : out STD_LOGIC;
    P5 : out STD_LOGIC;
    P2 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of coin_FSM : entity is true;
end coin_FSM;

architecture STRUCTURE of coin_FSM is
  signal P1_OBUF : STD_LOGIC;
  signal P1_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal P2_OBUF : STD_LOGIC;
  signal P5_OBUF : STD_LOGIC;
  signal X_IBUF : STD_LOGIC;
  signal Y_IBUF : STD_LOGIC;
  signal Z_IBUF : STD_LOGIC;
  signal clock_IBUF : STD_LOGIC;
  signal clock_IBUF_BUFG : STD_LOGIC;
  signal s : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \s[0]_i_2_n_0\ : STD_LOGIC;
  signal \s[1]_i_2_n_0\ : STD_LOGIC;
  signal \s[6]_i_2_n_0\ : STD_LOGIC;
  signal \s[6]_i_3_n_0\ : STD_LOGIC;
  signal \s[6]_i_4_n_0\ : STD_LOGIC;
  signal \s_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_reg_n_0_[6]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of P1_OBUF_inst_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s[6]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s[6]_i_4\ : label is "soft_lutpair1";
begin
P1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => P1_OBUF,
      O => P1
    );
P1_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => P1_OBUF_inst_i_2_n_0,
      I1 => \s_reg_n_0_[4]\,
      I2 => \s_reg_n_0_[1]\,
      I3 => \s_reg_n_0_[6]\,
      I4 => \s_reg_n_0_[5]\,
      I5 => \s_reg_n_0_[0]\,
      O => P1_OBUF
    );
P1_OBUF_inst_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \s_reg_n_0_[2]\,
      I1 => \s_reg_n_0_[3]\,
      O => P1_OBUF_inst_i_2_n_0
    );
P2_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => P2_OBUF,
      O => P2
    );
P2_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \s_reg_n_0_[5]\,
      I1 => \s_reg_n_0_[0]\,
      I2 => \s_reg_n_0_[6]\,
      I3 => \s_reg_n_0_[1]\,
      I4 => \s_reg_n_0_[4]\,
      I5 => P1_OBUF_inst_i_2_n_0,
      O => P2_OBUF
    );
P5_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => P5_OBUF,
      O => P5
    );
P5_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \s_reg_n_0_[0]\,
      I1 => \s_reg_n_0_[5]\,
      I2 => \s_reg_n_0_[6]\,
      I3 => \s_reg_n_0_[1]\,
      I4 => \s_reg_n_0_[4]\,
      I5 => P1_OBUF_inst_i_2_n_0,
      O => P5_OBUF
    );
X_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => X,
      O => X_IBUF
    );
Y_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Y,
      O => Y_IBUF
    );
Z_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Z,
      O => Z_IBUF
    );
clock_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clock_IBUF,
      O => clock_IBUF_BUFG
    );
clock_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clock,
      O => clock_IBUF
    );
\s[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBFBBBFB"
    )
        port map (
      I0 => \s[0]_i_2_n_0\,
      I1 => \s[6]_i_2_n_0\,
      I2 => \s[1]_i_2_n_0\,
      I3 => Z_IBUF,
      I4 => Y_IBUF,
      I5 => X_IBUF,
      O => s(0)
    );
\s[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CFC8CFC8CFC88A8"
    )
        port map (
      I0 => \s_reg_n_0_[1]\,
      I1 => X_IBUF,
      I2 => Y_IBUF,
      I3 => Z_IBUF,
      I4 => \s_reg_n_0_[3]\,
      I5 => \s_reg_n_0_[2]\,
      O => \s[0]_i_2_n_0\
    );
\s[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A000000080"
    )
        port map (
      I0 => \s[6]_i_2_n_0\,
      I1 => \s_reg_n_0_[1]\,
      I2 => Z_IBUF,
      I3 => Y_IBUF,
      I4 => X_IBUF,
      I5 => \s[1]_i_2_n_0\,
      O => s(1)
    );
\s[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_reg_n_0_[6]\,
      I1 => \s_reg_n_0_[5]\,
      I2 => \s_reg_n_0_[0]\,
      I3 => \s_reg_n_0_[4]\,
      O => \s[1]_i_2_n_0\
    );
\s[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CC000000800000"
    )
        port map (
      I0 => \s_reg_n_0_[1]\,
      I1 => Z_IBUF,
      I2 => Y_IBUF,
      I3 => X_IBUF,
      I4 => \s[6]_i_2_n_0\,
      I5 => \s_reg_n_0_[2]\,
      O => s(2)
    );
\s[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F300000080000000"
    )
        port map (
      I0 => \s_reg_n_0_[2]\,
      I1 => X_IBUF,
      I2 => Y_IBUF,
      I3 => Z_IBUF,
      I4 => \s[6]_i_2_n_0\,
      I5 => \s_reg_n_0_[3]\,
      O => s(3)
    );
\s[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \s[6]_i_2_n_0\,
      I1 => \s_reg_n_0_[1]\,
      I2 => Z_IBUF,
      I3 => Y_IBUF,
      I4 => X_IBUF,
      O => s(4)
    );
\s[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \s[6]_i_2_n_0\,
      I1 => \s_reg_n_0_[2]\,
      I2 => X_IBUF,
      I3 => Y_IBUF,
      I4 => Z_IBUF,
      O => s(5)
    );
\s[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \s[6]_i_2_n_0\,
      I1 => \s_reg_n_0_[3]\,
      I2 => Z_IBUF,
      I3 => Y_IBUF,
      I4 => X_IBUF,
      O => s(6)
    );
\s[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \s_reg_n_0_[0]\,
      I1 => \s_reg_n_0_[1]\,
      I2 => \s_reg_n_0_[2]\,
      I3 => \s[6]_i_3_n_0\,
      I4 => \s[6]_i_4_n_0\,
      O => \s[6]_i_2_n_0\
    );
\s[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0116"
    )
        port map (
      I0 => \s_reg_n_0_[3]\,
      I1 => \s_reg_n_0_[4]\,
      I2 => \s_reg_n_0_[5]\,
      I3 => \s_reg_n_0_[6]\,
      O => \s[6]_i_3_n_0\
    );
\s[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEE8"
    )
        port map (
      I0 => \s_reg_n_0_[3]\,
      I1 => \s_reg_n_0_[4]\,
      I2 => \s_reg_n_0_[5]\,
      I3 => \s_reg_n_0_[6]\,
      O => \s[6]_i_4_n_0\
    );
\s_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => '1',
      D => s(0),
      Q => \s_reg_n_0_[0]\,
      R => '0'
    );
\s_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => '1',
      D => s(1),
      Q => \s_reg_n_0_[1]\,
      R => '0'
    );
\s_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => '1',
      D => s(2),
      Q => \s_reg_n_0_[2]\,
      R => '0'
    );
\s_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => '1',
      D => s(3),
      Q => \s_reg_n_0_[3]\,
      R => '0'
    );
\s_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => '1',
      D => s(4),
      Q => \s_reg_n_0_[4]\,
      R => '0'
    );
\s_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => '1',
      D => s(5),
      Q => \s_reg_n_0_[5]\,
      R => '0'
    );
\s_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => '1',
      D => s(6),
      Q => \s_reg_n_0_[6]\,
      R => '0'
    );
end STRUCTURE;
