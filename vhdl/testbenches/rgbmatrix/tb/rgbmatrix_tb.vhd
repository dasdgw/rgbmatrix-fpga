-------------------------------------------------------------------------------
-- Title      : Testbench for design "rgbmatrix"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : rgbmatrix_tb.vhd
-- Author     :   <dasdgw@karel.dhcp.heaven>
-- Company    : frankalicious
-- Created    : 2013-11-09
-- Last update: 2013-11-09
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2013 frankalicious
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2013-11-09  0.1      dasdgw	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-------------------------------------------------------------------------------

entity rgbmatrix_tb is

end entity rgbmatrix_tb;

-------------------------------------------------------------------------------

architecture testbench of rgbmatrix_tb is

  -- component ports
  signal clk_in   : std_logic;          -- [in]
  signal rst_n    : std_logic;          -- [in]
  signal clk_out  : std_logic;          -- [out]
  signal r1       : std_logic;          -- [out]
  signal r2       : std_logic;          -- [out]
  signal b1       : std_logic;          -- [out]
  signal b2       : std_logic;          -- [out]
  signal g1       : std_logic;          -- [out]
  signal g2       : std_logic;          -- [out]
  signal a        : std_logic;          -- [out]
  signal b        : std_logic;          -- [out]
  signal c        : std_logic;          -- [out]
  signal lat      : std_logic;          -- [out]
  signal oe       : std_logic;          -- [out]
  signal i2c_sdat : std_logic;          -- [inout]
  signal i2c_sclk : std_logic;          -- [inout]

  -- clock
  signal clk : std_logic := '1';
  signal stop_clk : std_logic := '0';   -- set this to '1' when done

begin  -- architecture testbench

  -- component instantiation
  DUT: entity work.rgbmatrix
    port map (
      clk_in   => clk_in,               -- [in  std_logic]
      rst_n    => rst_n,                -- [in  std_logic]
      clk_out  => clk_out,              -- [out std_logic]
      r1       => r1,                   -- [out std_logic]
      r2       => r2,                   -- [out std_logic]
      b1       => b1,                   -- [out std_logic]
      b2       => b2,                   -- [out std_logic]
      g1       => g1,                   -- [out std_logic]
      g2       => g2,                   -- [out std_logic]
      a        => a,                    -- [out std_logic]
      b        => b,                    -- [out std_logic]
      c        => c,                    -- [out std_logic]
      lat      => lat,                  -- [out std_logic]
      oe       => oe,                   -- [out std_logic]
      i2c_sdat => i2c_sdat,             -- [inout std_logic]
      i2c_sclk => i2c_sclk);            -- [inout std_logic]

  -- clock generation
  clk <= not clk after 10 ns when stop_clk /= '1' else '0';

  -- waveform generation
  WaveGen_Proc: process
  begin
    -- insert signal assignments here
    
    -- stop clock from toggling
    stop_clk <= '1';
    wait;
  end process WaveGen_Proc;

  

end architecture testbench;

-------------------------------------------------------------------------------

configuration rgbmatrix_tb_testbench_cfg of rgbmatrix_tb is
  for testbench
  end for;
end rgbmatrix_tb_testbench_cfg;

-------------------------------------------------------------------------------
