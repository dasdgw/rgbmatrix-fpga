-------------------------------------------------------------------------------
-- Title      : Testbench for design "heartbeat"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : heartbeat_tb.vhd
-- Author     :   <alex@alex_laptop>
-- Company    : frankalicious
-- Created    : 2013-07-20
-- Last update: 2013-07-20
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2013 frankalicious
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2013-07-20  0.1      alex	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity heartbeat_tb is

end entity heartbeat_tb;

-------------------------------------------------------------------------------

architecture testbench of heartbeat_tb is

  -- component ports
  signal OSC_50_B3B : std_logic;                     -- [in]
  signal LED        : std_logic_vector(3 downto 0);  -- [out]

  -- clock
  signal clk : std_logic := '1';
  signal stop_clk : std_logic := '0';   -- set this to '1' when done

begin  -- architecture testbench

  -- component instantiation
  DUT: entity work.heartbeat
    port map (
      OSC_50_B3B => OSC_50_B3B,         -- [in  std_logic]
      LED        => LED);               -- [out std_logic_vector(3 downto 0)]

  -- clock generation
  clk <= not clk after 10 ns when stop_clk /= '1' else '0';
  OSC_50_B3B <= clk;
  
  -- waveform generation
  WaveGen_Proc: process
  begin
    -- insert signal assignments here
    
    -- stop clock from toggling
    --stop_clk <= '1';
    wait;
  end process WaveGen_Proc;

  

end architecture testbench;

-------------------------------------------------------------------------------

configuration heartbeat_tb_testbench_cfg of heartbeat_tb is
  for testbench
  end for;
end heartbeat_tb_testbench_cfg;

-------------------------------------------------------------------------------
