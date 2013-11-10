-------------------------------------------------------------------------------
-- Title      : Testbench for design "ledctrl"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : ledctrl_tb.vhd
-- Author     :   <alex@alex_laptop>
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
-- 2013-11-09  0.1      alex	Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use work.rgbmatrix_pkg.all;
-------------------------------------------------------------------------------

entity ledctrl_tb is

end entity ledctrl_tb;

-------------------------------------------------------------------------------

architecture testbench of ledctrl_tb is

  -- component ports
  signal clk      : std_logic := '1';                                -- [in]
  signal rst      : std_logic;                                -- [in]
  signal clk_out  : std_logic;                                -- [out]
  signal rgb1     : std_logic_vector(2 downto 0);             -- [out]
  signal rgb2     : std_logic_vector(2 downto 0);             -- [out]
  signal led_addr : std_logic_vector(2 downto 0);             -- [out]
  signal lat      : std_logic;                                -- [out]
  signal oe       : std_logic;                                -- [out]
  signal addr     : std_logic_vector(ADDR_WIDTH-1 downto 0);  -- [out]
  signal data     : std_logic_vector(DATA_WIDTH-1 downto 0);  -- [in]

  -- clock
  --signal clk_in : std_logic := '1';
  signal stop_clk : std_logic := '0';   -- set this to '1' when done

begin  -- architecture testbench

  -- component instantiation
  DUT: entity work.ledctrl
    port map (
      clk      => clk,                  -- [in  std_logic]
      rst      => rst,                  -- [in  std_logic]
      clk_out  => clk_out,              -- [out std_logic]
      rgb1     => rgb1,                 -- [out std_logic_vector(2 downto 0)]
      rgb2     => rgb2,                 -- [out std_logic_vector(2 downto 0)]
      led_addr => led_addr,             -- [out std_logic_vector(2 downto 0)]
      lat      => lat,                  -- [out std_logic]
      oe       => oe,                   -- [out std_logic]
      addr     => addr,      -- [out std_logic_vector(ADDR_WIDTH-1 downto 0)]
      data     => data);     -- [in  std_logic_vector(DATA_WIDTH-1 downto 0)]

  -- clock generation
  clk <= not clk after 10 ns when stop_clk /= '1' else '0';
  rst <= '0', '1' after 20 ns, '0' after 30 ns;
  
  -- waveform generation
  WaveGen_Proc: process
  begin
    -- insert signal assignments here
    wait for 10 us;
    -- stop clock from toggling
    stop_clk <= '1';
    wait;
  end process WaveGen_Proc;

  process
  begin
    -- insert signal assignments here
    wait for 50 ns;
    data <= (others => '1');
    wait for 50 ns;
    data <= (others => '0');
    wait for 50 ns;
    data <= (others => '1');
    wait for 50 ns;
    data <= (others => '0');
    wait for 50 ns;
    wait;
  end process;
--TODO: data should be changed according to the addr signal from ledctrl.
end architecture testbench;

-------------------------------------------------------------------------------

configuration ledctrl_tb_testbench_cfg of ledctrl_tb is
  for testbench
  end for;
end ledctrl_tb_testbench_cfg;

-------------------------------------------------------------------------------
