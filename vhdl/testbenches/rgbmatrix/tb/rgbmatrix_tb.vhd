-------------------------------------------------------------------------------
-- Title      : Testbench for design "rgbmatrix"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : rgbmatrix_tb.vhd
-- Author     :   <dasdgw@karel.dhcp.heaven>
-- Company    : frankalicious
-- Created    : 2013-11-09
-- Last update: 2013-11-10
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2013 frankalicious
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2013-11-09  0.1      dasdgw  Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use work.util_pkg.all;
use work.rgbmatrix_pkg.all;

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
  signal clk      : std_logic := '1';
  signal stop_clk : std_logic := '0';   -- set this to '1' when done

  constant rgbmatrix_log : log_type := (false, true, "rgbmatrix.log");

  procedure rgbmatrix_dbg(msg : in string) is
  begin
    printf(rgbmatrix_log, msg);
  end procedure rgbmatrix_dbg;

begin  -- architecture testbench

  -- component instantiation
  DUT : entity work.rgbmatrix
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

  clk_in <= clk;

  -- clock generation
  clk <= not clk after 10 ns when stop_clk /= '1' else '0';

  -- generate reset signal
  rst_n <= '1', '0' after 100 ns, '1' after 200 ns;

  -- waveform generation
  WaveGen_Proc : process
  begin
    -- insert signal assignments here

    wait for 10 us;

    -- stop clock from toggling
    stop_clk <= '1';
    wait;
  end process WaveGen_Proc;

-- purpose: report the configuration
  rpt_cfg : process is
  begin  -- process rpt_cfg
--    wait until stop_clk = '1';
    info(rgbmatrix_log);
    rgbmatrix_dbg("ledrgbmatrix configuration");
    rgbmatrix_dbg("--------------------------");
    rgbmatrix_dbg("interface: " & IFACE);
--    rgbmatrix_dbg(" 1" & SLAVE_ADDR1);
--    rgbmatrix_dbg(" 1" & SLAVE_ADDR2);
    rgbmatrix_dbg("NUM_PANELS:      " & integer'image(NUM_PANELS));
    rgbmatrix_dbg("PIXEL_DEPTH:     " & integer'image(PIXEL_DEPTH));
    rgbmatrix_dbg("PANEL_WIDTH:     " & integer'image(PANEL_WIDTH));
    rgbmatrix_dbg("PANEL_HEIGHT:    " & integer'image(PANEL_HEIGHT));
    rgbmatrix_dbg("DATA_WIDTH:      " & integer'image(DATA_WIDTH));
    rgbmatrix_dbg("ADDR_WIDTH:      " & integer'image(ADDR_WIDTH));
    rgbmatrix_dbg("IMG_WIDTH:       " & integer'image(IMG_WIDTH));
    rgbmatrix_dbg("IMG_WIDTH_LOG2:  " & integer'image(IMG_WIDTH_LOG2));
    wait;
  end process rpt_cfg;

end architecture testbench;

-------------------------------------------------------------------------------

configuration rgbmatrix_tb_testbench_cfg of rgbmatrix_tb is
  for testbench
  end for;
end rgbmatrix_tb_testbench_cfg;

-------------------------------------------------------------------------------
