-- Adafruit RGB LED Matrix Display Driver
-- I2C Interface for the display ram
-- 
-- Copyright (c) 2012 Michael Frank
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

--! enable weak pullups for SDAT and SCLK

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.rgbmatrix_pkg.all;

entity i2c_iface is
  generic (
    SLAVE_ADDR : std_logic_vector(6 downto 0)
    );
  port (
    clk      : in    std_logic;
    rst      : in    std_logic;
    rst_out  : out   std_logic;
    output   : out   std_logic_vector(DATA_WIDTH-1 downto 0);
    valid    : out   std_logic;
    i2c_sdat : inout std_logic;
    i2c_sclk : inout std_logic
    );
end i2c_iface;

architecture bhv of i2c_iface is
  type I2C_STATES is (WAIT4IDLE, IDLE, ADDR, ACK_ADDR_1, ACK_ADDR_2, GET_DATA, ACK_DATA_1, ACK_DATA_2);


  type i2c_reg_type is record
    state    : I2C_STATES;
    sdat_reg : std_logic_vector(2 downto 0);  -- cdc and edge reg
    sclk_reg : std_logic_vector(2 downto 0);  -- cdc and edge reg
    sdat     : std_logic;
    sdat_oe  : std_logic;
    data_in  : std_logic_vector(DATA_WIDTH-1 downto 0);
    bit_cnt  : integer range 0 to 8;
    byte_cnt : integer range 0 to DATA_WIDTH/8;
    valid    : std_logic;
    rst_out  : std_logic;
    startbit : std_logic;
    stopbit  : std_logic;
    nack     : std_logic;
  end record i2c_reg_type;

  signal r, rin : i2c_reg_type;

begin
  i2c_sdat <= r.sdat when r.sdat_oe = '1' else 'Z';
  i2c_sclk <= 'Z';

  i2c_comb : process (r, i2c_sdat, i2c_sclk) is
    variable v : i2c_reg_type;
  begin  -- process i2c_comb
    v          := r;
    v.sdat_reg := r.sdat_reg(1 downto 0) & i2c_sdat;
    v.sclk_reg := r.sclk_reg(1 downto 0) & i2c_sclk;
    v.valid    := '0';
    v.rst_out  := '0';
    v.nack     := '0';

    if r.sdat_reg(2 downto 1) = "10" and r.sclk_reg(2 downto 1) = "11" then
      v.startbit := '1';
    else
      v.startbit := '0';
    end if;

    if r.sdat_reg(2 downto 1) = "01" and r.sclk_reg(2 downto 1) = "11" then
      v.stopbit := '1';
    else
      v.stopbit := '0';
    end if;


    case r.state is
      when WAIT4IDLE =>
        --wait until sda and sclk are high
        if r.sdat_reg(2 downto 1) = "11" and r.sclk_reg(2 downto 1) = "11" then
          v.state := IDLE;
        end if;
        v.sdat    := '1';
        v.sdat_oe := '0';
        v.bit_cnt := 0;
      when IDLE =>
        --wait until falling_edge on sda while sclk remains high
        if r.sdat_reg(2 downto 1) = "10" and r.sclk_reg(2 downto 1) = "11" then
          v.state   := ADDR;
          v.rst_out := '1';
        end if;
      when ADDR =>
        --clk data in on rising edge of sclk
        if r.sclk_reg(2 downto 1) = "01" then
          v.data_in := r.data_in(r.data_in'high-1 downto 0) & r.sdat_reg(1);
          v.bit_cnt := r.bit_cnt + 1;
        end if;
        if v.bit_cnt = 8 then
          v.bit_cnt := 0;
          if v.data_in(7 downto 1) = SLAVE_ADDR then
            -- todo drive sda low, to ack the addr?
            v.state := ACK_ADDR_1;
          else
            v.nack  := '1';
            v.state := WAIT4IDLE;
          end if;
        end if;
      when ACK_ADDR_1 =>
        if v.sclk_reg(2 downto 1) = "10" then
-- drive sdat low (until next falling edge?)
          v.sdat    := '0';
          v.sdat_oe := '1';
          v.state   := ACK_ADDR_2;
        end if;
      when ACK_ADDR_2 =>
        if v.sclk_reg(2 downto 1) = "10" then
          v.sdat_oe := '0';
          v.state   := GET_DATA;
        end if;
      when GET_DATA =>
        --clk data in on rising edge of sclk
        if v.sclk_reg(2 downto 1) = "01" then
          v.data_in := r.data_in(r.data_in'high-1 downto 0) & r.sdat_reg(1);
          v.bit_cnt := r.bit_cnt + 1;
          if v.bit_cnt = 8 then
            v.bit_cnt  := 0;
-- todo send ack
            --inc byte_cnt
            v.byte_cnt := r.byte_cnt+1;
            v.state    := ACK_DATA_1;
            if v.byte_cnt = 6 then
              v.byte_cnt := 0;
              v.valid    := '1';
            end if;
          end if;
        -- stop from master
        elsif r.sclk_reg(2 downto 1) = "11" and r.sdat_reg(2 downto 1) = "01" then
          v.state := WAIT4IDLE;
        end if;
      when ACK_DATA_1 =>
        if r.sclk_reg(2 downto 1) = "10" then
          v.sdat    := '0';
          v.sdat_oe := '1';
          v.state   := ACK_DATA_2;
        end if;
      when ACK_DATA_2 =>
        if r.sclk_reg(2 downto 1) = "10" then
          v.sdat_oe := '0';
          v.state   := GET_DATA;
        end if;
      when others => null;
    end case;

    output  <= r.data_in;
    valid   <= r.valid;
    rst_out <= r.rst_out;
    rin     <= v;
  end process i2c_comb;

  reg : process (clk) is
  begin  -- process reg
    if rising_edge(clk) then
      if rst = '1' then
        r.state <= WAIT4IDLE;
      else
        r <= rin;
      end if;
    end if;
  end process reg;

end bhv;
