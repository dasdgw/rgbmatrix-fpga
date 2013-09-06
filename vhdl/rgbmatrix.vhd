-- Adafruit RGB LED Matrix Display Driver
-- Top Level Entity
-- 
-- Copyright (c) 2012 Brian Nezvadovitz <http://nezzen.net>
-- This software is distributed under the terms of the MIT License shown below.
-- 
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to
-- deal in the Software without restriction, including without limitation the
-- rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
-- sell copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
-- 
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
-- 
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
-- FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
-- IN THE SOFTWARE.

library ieee;
use ieee.std_logic_1164.all;

use work.rgbmatrix_pkg.all;             -- Constants & Configuration

entity rgbmatrix is
  port (
    clk_in   : in    std_logic;
    rst_n    : in    std_logic;
    clk_out  : out   std_logic;
    r1       : out   std_logic;
    r2       : out   std_logic;
    b1       : out   std_logic;
    b2       : out   std_logic;
    g1       : out   std_logic;
    g2       : out   std_logic;
    a        : out   std_logic;
    b        : out   std_logic;
    c        : out   std_logic;
    lat      : out   std_logic;
    oe       : out   std_logic;
    i2c_sdat : inout std_logic;
    i2c_sclk : inout std_logic
    );
end rgbmatrix;

architecture str of rgbmatrix is
  -- Reset signals
  signal rst, rst_p, jtag_rst_out : std_logic;

  -- Memory signals
  signal addr          : std_logic_vector(ADDR_WIDTH-1 downto 0);
  signal data_incoming : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal data_outgoing : std_logic_vector(DATA_WIDTH-1 downto 0);
  signal rgb           : std_logic_vector(DATA_WIDTH/6-1 downto 0);
  signal waddr         : std_logic_vector(ADDR_WIDTH downto 0);
-- Flags
  signal valid1        : std_logic;
  signal valid2        : std_logic;
  signal tck           : std_logic;
begin

  -- Reset button is an "active low" input, invert it so we can treat is as
  -- "active high", then OR it with the JTAG reset command output signal.
  rst_p <= not rst_n;
  rst   <= rst_p or jtag_rst_out;

  -- LED panel controller
  U_LEDCTRL : entity work.ledctrl
    port map (
      rst         => rst_p,
      clk         => clk_in,  --! can't use tck here. tck seems not to be a
      --continues clock
      -- Connection to LED panel
      clk_out     => clk_out,
      rgb1(2)     => r1,
      rgb1(1)     => g1,
      rgb1(0)     => b1,
      rgb2(2)     => r2,
      rgb2(1)     => g2,
      rgb2(0)     => b2,
      led_addr(2) => c,
      led_addr(1) => b,
      led_addr(0) => a,
      lat         => lat,
      oe          => oe,
      -- Connection with framebuffer
      addr        => addr,
      --  data => x"FF0000FF0000"           -- too bright!
--      data => addr(0)& addr(0) & addr(0) & addr(0) & x"F00001F0000"
      data        => data_outgoing
      );

  -- Virtual JTAG interface
  jtag : if IFACE = "jtag" generate
    U_JTAGIFACE : entity work.jtag_iface
      port map (
        rst     => rst_p,
        rst_out => jtag_rst_out,
        output  => data_incoming,
        valid   => valid1,
        tck     => tck
        );

    -- Special memory for the framebuffer
    jtag_memory : entity work.jtag_memory
      port map (
        rst    => rst,
        -- Writing side
        clk_wr => valid1,
        input  => data_incoming,
        -- Reading side
        clk_rd => clk_in,
        addr   => addr,
        output => data_outgoing
        );

  end generate jtag;

  i2c : if IFACE = "i2c" generate
    --i2c_iface_1 : entity work.i2c_iface
    --  generic map (
    --    SLAVE_ADDR => SLAVE_ADDR)       -- [std_logic_vector(6 downto 0)]
    --  port map (
    --    clk      => clk_in,             -- [in  std_logic]
    --    rst      => rst_p,              -- [in  std_logic]
    --    rst_out  => jtag_rst_out,       -- [out std_logic]
    --    waddr    => waddr,  -- [out std_logic_vector(ADDR_WIDTH downto 0)]
    --    output   => rgb,  --data_incoming,  -- [out std_logic_vector(DATA_WIDTH-1 downto 0)]
    --    valid    => data_valid,         -- [out std_logic]
    --    i2c_sdat => i2c_sdat,           -- [inout std_logic]
    --    i2c_sclk => i2c_sclk);          -- [inout std_logic]

    i2c_slave_1 : entity work.i2c_slave
      generic map (
        SLAVE_ADDR1 => SLAVE_ADDR1,     -- [std_logic_vector(6 downto 0)]
        SLAVE_ADDR2 => SLAVE_ADDR2)     -- [std_logic_vector(6 downto 0)]
      port map (
        clk      => clk_in,             -- [in  std_logic]
        rst      => rst_p,              -- [in  std_logic]
        data_o   => rgb,                -- [out std_logic_vector(7 downto 0)]
        valid1   => valid1,             -- [out std_logic]
        valid2   => valid2,             -- [out std_logic]
        i2c_sdat => i2c_sdat,           -- [inout std_logic]
        i2c_sclk => i2c_sclk);          -- [inout std_logic]

    -- Special memory for the framebuffer
    i2c_memory_1 : entity work.i2c_memory
      port map (
        rst    => valid2,
        -- Writing side
        clk_wr => clk_in,
        wr     => valid1,
--        waddr  => waddr,
        input  => rgb,                  --data_incoming,
        -- Reading side
        clk_rd => clk_in,
        addr   => addr,
        output => data_outgoing
        );

  end generate i2c;


end str;
