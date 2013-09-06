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

entity i2c_slave is
  generic (
    SLAVE_ADDR1 : std_logic_vector(6 downto 0);
    SLAVE_ADDR2 : std_logic_vector(6 downto 0)
    );
  port (
    clk      : in    std_logic;
    rst      : in    std_logic;
    data_o   : out   std_logic_vector(7 downto 0);
    valid1   : out   std_logic;
    valid2   : out   std_logic;
    i2c_sdat : inout std_logic;
    i2c_sclk : inout std_logic
    );
end i2c_slave;

architecture bhv of i2c_slave is
  type I2C_STATES is (WAIT4IDLE, IDLE, ADDR, ACK_ADDR_1, ACK_ADDR_2, GET_DATA, ACK_DATA_1, ACK_DATA_2);


  type i2c_reg_type is record
    state        : I2C_STATES;
    sdat_reg     : std_logic_vector(2 downto 0);  -- cdc and edge reg
    sclk_reg     : std_logic_vector(2 downto 0);  -- cdc and edge reg
    sdat         : std_logic;
    sdat_oe      : std_logic;
    data_in      : std_logic_vector(7 downto 0);
    bit_cnt      : integer range 0 to 8;
    valid1       : std_logic;
    valid2       : std_logic;
    nack         : std_logic;
    active_slave : integer range 1 to 2;
  end record i2c_reg_type;

  signal r, rin : i2c_reg_type;

begin
  i2c_sdat <= r.sdat when r.sdat_oe = '1' else 'Z';
  i2c_sclk <= 'Z';

  i2c_comb : process (r, rst, i2c_sdat, i2c_sclk) is
    variable v        : i2c_reg_type;
    variable startbit : boolean;
  begin  -- process i2c_comb
    v          := r;
    v.sdat_reg := r.sdat_reg(1 downto 0) & i2c_sdat;
    v.sclk_reg := r.sclk_reg(1 downto 0) & i2c_sclk;
    v.valid1   := '0';
    v.valid2   := '0';
    v.nack     := '0';

    if r.sdat_reg(2 downto 1) = "10" and r.sclk_reg(2 downto 1) = "11" then
      startbit := true;
    else
      startbit := false;
    end if;

    --if r.sdat_reg(2 downto 1) = "01" and r.sclk_reg(2 downto 1) = "11" then
    --  v.stopbit := '1';
    --else
    --  v.stopbit := '0';
    --end if;


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
          v.state := ADDR;
        end if;
      when ADDR =>
        --clk data in on rising edge of sclk
        if r.sclk_reg(2 downto 1) = "01" then
          v.data_in := r.data_in(r.data_in'high-1 downto 0) & r.sdat_reg(1);
          v.bit_cnt := r.bit_cnt + 1;
        end if;
        if v.bit_cnt = 8 then
          v.bit_cnt := 0;
          if (v.data_in(7 downto 1) = SLAVE_ADDR1) then
            -- todo drive sda low, to ack the addr?
            v.active_slave := 1;
            v.state        := ACK_ADDR_1;
          elsif (v.data_in(7 downto 1) = SLAVE_ADDR2) then
            v.active_slave := 2;
            v.state        := ACK_ADDR_1;
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
            v.bit_cnt := 0;
-- todo send ack
            v.state   := ACK_DATA_1;
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
          if r.active_slave = 1 then
            v.valid1 := '1';
          end if;
          if r.active_slave = 2 then
            v.valid2 := '1';
          end if;
        end if;

      when ACK_DATA_2 =>
        if r.sclk_reg(2 downto 1) = "10" then
          v.sdat_oe := '0';
          v.state   := GET_DATA;
        end if;

      when others => null;
    end case;

    if rst = '1' then
      v.state := WAIT4IDLE;
    end if;

    data_o <= r.data_in;
    valid1 <= r.valid1;
    valid2 <= r.valid2;
    rin    <= v;
  end process i2c_comb;

  reg : process (clk) is
  begin  -- process reg
    if rising_edge(clk) then
      r <= rin;
    end if;
  end process reg;

end bhv;
