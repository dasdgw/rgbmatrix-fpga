-- Adafruit RGB LED Matrix Display Driver
-- Special memory for the framebuffer with separate read/write clocks
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

-- For more information on how to infer RAMs on Altera devices see this page:
-- http://quartushelp.altera.com/current/mergedProjects/hdl/vhdl/vhdl_pro_ram_inferred.htm

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all;

use work.rgbmatrix_pkg.all;

entity avs_memory is
  port (
    rst    : in  std_logic;
    clk_wr : in  std_logic;
    wr     : in  std_logic;
    waddr  : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
    input  : in  std_logic_vector(31 downto 0);
    clk_rd : in  std_logic;
    addr   : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
    output : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end avs_memory;

architecture bhv of avs_memory is
  -- Internal signals
  --signal waddr: integer range 0 to 2**ADDR_WIDTH;
--  signal waddr : unsigned(ADDR_WIDTH downto 0);


  -- Inferred RAM storage signal
  type ram is array(2**ADDR_WIDTH-1 downto 0) of std_logic_vector(DATA_WIDTH/6-1 downto 0);
  signal ram1r, ram1g, ram1b : ram := (others => (others => '1'));
  signal ram2r, ram2g, ram2b : ram;

begin

  -- Create an adder to calculate the next write address
  --next_waddr <= std_logic_vector(unsigned(waddr) + 1);

  -- Write process for the memory
  process(clk_wr)
  begin
    if(rising_edge(clk_wr)) then
      if wr = '1' then
-- store input at the current write address
        if waddr(waddr'high) = '0' then
          ram1r(to_integer(unsigned(waddr))) <= input(1*PIXEL_DEPTH-1 downto 0);
          ram1g(to_integer(unsigned(waddr))) <= input(2*PIXEL_DEPTH-1 downto PIXEL_DEPTH);
          ram1b(to_integer(unsigned(waddr))) <= input(3*PIXEL_DEPTH-1 downto 2*PIXEL_DEPTH);
        else
          ram2r(to_integer(unsigned(waddr))) <= input(1*PIXEL_DEPTH-1 downto 0);
          ram2g(to_integer(unsigned(waddr))) <= input(2*PIXEL_DEPTH-1 downto PIXEL_DEPTH);
          ram2b(to_integer(unsigned(waddr))) <= input(3*PIXEL_DEPTH-1 downto 2*PIXEL_DEPTH);
        end if;
      end if;
    end if;
  end process;

-- Read process for the memory
  process(clk_rd)
  begin
    if(rising_edge(clk_rd)) then
      output <= ram2r(to_integer(unsigned(addr))) &
                ram2g(to_integer(unsigned(addr))) &
                ram2b(to_integer(unsigned(addr))) &
                ram1r(to_integer(unsigned(addr))) &
                ram1g(to_integer(unsigned(addr))) &
                ram1b(to_integer(unsigned(addr)));
    end if;
  end process;

end bhv;
