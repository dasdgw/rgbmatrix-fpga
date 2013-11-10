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

entity i2c_memory is
  port (
    rst    : in  std_logic;
    clk_wr : in  std_logic;
    wr     : in  std_logic;
-- warum nicht (PIXEL_DEPTH-1 downto 0);?
    input  : in  std_logic_vector(DATA_WIDTH/6-1 downto 0);
    clk_rd : in  std_logic;
    addr   : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
    output : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end i2c_memory;

architecture bhv of i2c_memory is
  -- Internal signals
  --signal waddr: integer range 0 to 2**ADDR_WIDTH;
  signal waddr : unsigned(ADDR_WIDTH downto 0);


  -- Inferred RAM storage signal
  type ram is array(2**ADDR_WIDTH-1 downto 0) of std_logic_vector(DATA_WIDTH/6-1 downto 0);
  --signal ram1r: ram:=(others => (others => '1'));
  signal ram1r        : ram := (others => x"FF");
  signal ram1g, ram1b : ram;
  signal ram2r        : ram := (1      => x"00", others => x"FF");
  signal ram2g, ram2b : ram;
  signal rgb          : integer range 1 to 3;
begin

  -- Create an adder to calculate the next write address
  --next_waddr <= std_logic_vector(unsigned(waddr) + 1);

  -- Write process for the memory
  process(clk_wr)
  begin
    if(rising_edge(clk_wr)) then
      if rst = '1' then
        waddr <= (others => '0');
        rgb   <= 1;
      elsif wr = '1' then
        if rgb < 3 then
          rgb <= rgb+1;
        else
          rgb   <= 1;
          waddr <= waddr + 1;
        end if;
-- store input at the current write address
        if waddr(waddr'high) = '0' then
          if rgb = 1 then
            ram1r(to_integer(waddr(waddr'high-1 downto 0))) <= input;
          end if;
          if rgb = 2 then
            ram1g(to_integer(waddr(waddr'high-1 downto 0))) <= input;
          end if;
          if rgb = 3 then
            ram1b(to_integer(waddr(waddr'high-1 downto 0))) <= input;
          end if;
        else
          if rgb = 1 then
            ram2r(to_integer(waddr(waddr'high-1 downto 0))) <= input;
          end if;
          if rgb = 2 then
            ram2g(to_integer(waddr(waddr'high-1 downto 0))) <= input;
          end if;
          if rgb = 3 then
            ram2b(to_integer(waddr(waddr'high-1 downto 0))) <= input;
          end if;
        end if;
--        waddr <= next_waddr;  -- allow the write address to increment    
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
