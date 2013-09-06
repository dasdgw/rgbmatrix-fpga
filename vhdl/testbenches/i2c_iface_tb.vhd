-------------------------------------------------------------------------------
-- Title      : Testbench for design "i2c_iface"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : i2c_iface_tb.vhd
-- Author     :   <dasdgw@karel.dhcp.heaven>
-- Company    : frankalicious
-- Created    : 2012-12-29
-- Last update: 2013-09-06
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: 
-------------------------------------------------------------------------------
-- Copyright (c) 2012 frankalicious
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2012-12-29  0.1      dasdgw  Created
-------------------------------------------------------------------------------

library ieee;
library std;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use work.util_pkg.all;
use work.rgbmatrix_pkg.all;
-------------------------------------------------------------------------------

entity i2c_iface_tb is

end entity i2c_iface_tb;

-------------------------------------------------------------------------------

architecture testbench of i2c_iface_tb is

  -- component generics
--  constant SLAVE_ADDR : std_logic_vector(6 downto 0) := "1010000";
--  constant DATA_WIDTH : natural                      := 48;
  -- component ports
  signal clk         : std_logic := '1';  -- [in]
  signal stop_clk    : std_logic := '0';  -- set this to '1' when done
  signal rst         : std_logic := '1';  -- [in]
  signal rst_out     : std_logic;       -- [out]
  signal output_tbd  : std_logic_vector(DATA_WIDTH/2-1 downto 0);  -- [out]
  signal valid       : std_logic;       -- [out]
  signal i2c_sdat    : std_logic;       -- [inout]
  signal i2c_sclk    : std_logic;       -- [inout]
  signal waddr       : std_logic_vector(ADDR_WIDTH downto 0);
  signal data_valid1 : std_logic;       -- [out]
  signal data_valid2 : std_logic;       -- [out]
  signal data_o      : std_logic_vector(7 downto 0);

  constant i2c_log : log_type := (false, true, "i2c.log");

  procedure i2c_dbg(msg : in string) is
    variable msg_line : line;
  begin  -- procedure i2c_dbg
    printf(i2c_log, msg);
  end procedure i2c_dbg;

begin  -- architecture testbench

  -- component instantiation
  --DUT : entity work.i2c_iface
  --  generic map (
  --    SLAVE_ADDR => SLAVE_ADDR)         -- [std_logic_vector(6 downto 0)]
  --  port map (
  --    clk      => clk,                  -- [in  std_logic]
  --    rst      => rst,                  -- [in  std_logic]
  --    rst_out  => rst_out,              -- [out std_logic]
  --    waddr    => waddr,       -- [out std_logic_vector(ADDR_WIDTH downto 0)]
  --    output   => output_tbd,  -- [out std_logic_vector(DATA_WIDTH-1 downto 0)]
  --    valid    => valid,                -- [out std_logic]
  --    i2c_sdat => i2c_sdat,             -- [inout std_logic]
  --    i2c_sclk => i2c_sclk);            -- [inout std_logic]

  i2c_slave_1 : entity work.i2c_slave
    generic map (
      SLAVE_ADDR1 => SLAVE_ADDR1,       -- [std_logic_vector(6 downto 0)]
      SLAVE_ADDR2 => SLAVE_ADDR2        -- [std_logic_vector(6 downto 0)]
      )                                 -- [std_logic_vector(6 downto 0)]
    port map (
      clk      => clk,                  -- [in  std_logic]
      rst      => rst,                  -- [in  std_logic]
      data_o   => data_o,               -- [out std_logic_vector(7 downto 0)]
      valid1   => data_valid1,          -- [out std_logic]
      valid2   => data_valid2,          -- [out std_logic]
      i2c_sdat => i2c_sdat,             -- [inout std_logic]
      i2c_sclk => i2c_sclk);            -- [inout std_logic]
  -- clock generation
  clk <= not clk after 10 ns when stop_clk /= '1' else '0';
  rst <= '0'     after 30 ns;
  -- waveform generation
  WaveGen_Proc : process

-- purpose: set i2c_sdat to 'data' and generate i2c_sclk
-- one clock pulse is generated for each bit transfered
-- aka bit transfer
-- examples: i2c_clk('0'); -- period defaults to 10 us
    procedure i2c_clk(data   : in std_logic := 'Z';
                      period : in time      := 10 us) is
    begin
      i2c_sdat <= data;
      wait for period/2;
      i2c_sclk <= '1';
      wait for period/2;
      i2c_sclk <= '0';
    end procedure i2c_clk;

-- purpose: send i2c_start
-- examples: i2c_start(); -- period defaults to 20 us
    procedure i2c_start(period : in time := 20 us) is
    begin
      i2c_dbg("start");
      i2c_sdat <= '0';
      wait for period/2;
      i2c_sclk <= '0';
      wait for period/2;
    end procedure i2c_start;

-- purpose: send i2c_idle
-- examples: i2c_idle(); -- period defaults to 50 us
    procedure i2c_idle(period : in time := 50 us) is
    begin
      i2c_dbg("idle");
      i2c_sdat <= '1';
      i2c_sclk <= '1';
      wait for period;
    end procedure i2c_idle;

-- purpose: send i2c_stop
-- examples: i2c_stop(); -- period defaults to 20 us
    procedure i2c_stop(period : in time := 20 us) is
    begin
      i2c_dbg("stop");
      i2c_sdat <= '0';
      wait for period/2;
      i2c_sclk <= '1';
      wait for period/2;
    end procedure i2c_stop;

-- purpose: send i2c_write_cmd
-- examples: i2c_write_cmd;
    procedure i2c_write_cmd is
    begin
      i2c_dbg("write_cmd");
      i2c_clk('0');
    end procedure i2c_write_cmd;

-- purpose: send 7-bit i2c address. after this i2c_write_cmd or i2c_read_cmd
-- should be sent
-- examples: i2c__address;
    procedure i2c_send_address(addr : in std_logic_vector) is
    begin
      i2c_dbg("send address: " & to_hstring(addr));
      for i in addr'range loop
        i2c_clk(addr(i));
      end loop;  -- i
    end procedure i2c_send_address;

-- purpose: get acknowledge bit from slave and check if slave acknowledged
-- *only* his address
-- examples: i2c_check_address;
    procedure i2c_check_address(addr : in std_logic_vector) is
    begin
      i2c_dbg("get ack/nack address from slave");
      i2c_clk('Z');
      if i2c_sdat = '0' then
        i2c_dbg("slave acknowledged address");
      else
        i2c_dbg("slave *not* acknowledged address");
      end if;
      -- if right address expect acknowledge '0'
      assert not (((addr = SLAVE_ADDR1) or (addr = SLAVE_ADDR2)) and not i2c_sdat = '0') severity warning;
      -- if wrong address expect not acknowledge 'Z'
      assert not (not ((addr = SLAVE_ADDR1) or (addr = SLAVE_ADDR2)) and not i2c_sdat = 'Z')
        severity warning;
    end procedure i2c_check_address;

-- purpose: check if any slave acknowledges
-- examples: i2c_get_acknack;
    procedure i2c_get_ack (expect_ack : in boolean) is
    begin
      i2c_dbg("get ack/nack from slave");
      i2c_clk('Z');

      if expect_ack = true then
        if (i2c_sdat /= '0') then
          assert false report "no slave has acked." severity warning;
          i2c_dbg("ERROR: no slave acknowledged data");
        else
          i2c_dbg("slave acknowledged data");
        end if;
      else
        if i2c_sdat /= 'Z' then
          assert false report "slave has acked unexpected." severity warning;
          i2c_dbg("ERROR: slave acknowledged data");
        else
          i2c_dbg("slave *not* acknowledged data");
        end if;
      end if;

    end procedure i2c_get_ack;


-- purpose: i2c write
--example:     i2c_write("1010000", x"00000003");
    procedure i2c_write (
      addr       : in std_logic_vector;
      data       : in std_logic_vector;
      expect_ack : in boolean := true) is
--      variable my_line : line;
      variable bit_cnt : integer := 0;
      variable ret     : boolean;
    begin
      i2c_dbg("writing at addr: " & to_hstring(addr) & " data: " & to_hstring(data));
      i2c_idle;
      i2c_start;
      i2c_send_address(addr);
      i2c_write_cmd;
      -- only send data if valid address is used
      i2c_get_ack(expect_ack);
      for i in data'range loop
        --i2c_dbg("sending data bit: " & integer'image(i) & "/" & integer'image(data'length-1));
        i2c_dbg("sending data bit: " & integer'image(i) & " Value: " & to_string(data(i)));
        i2c_clk(data(i));
        bit_cnt := bit_cnt+1;
        if bit_cnt = 8 then
          bit_cnt := 0;
          i2c_get_ack(expect_ack);
        end if;
      end loop;  -- i
      i2c_stop;
      i2c_idle;
    end procedure i2c_write;

  begin
    printf("start i2c simulation: ...");
    info(i2c_log);
    i2c_dbg("********************************************************************************");
    i2c_dbg("TC0: write 0xAA to the slave1 address");
    i2c_dbg("********************************************************************************");
    i2c_write(SLAVE_ADDR1, x"AA");
    wait for 100 us;
    i2c_dbg("********************************************************************************");
    i2c_dbg("TC1: write 0xAA to the wrong slave address. no one should ack the address.");
    i2c_dbg("********************************************************************************");
    i2c_write((not SLAVE_ADDR1), x"AA", false);
    wait for 100 us;
    i2c_dbg("********************************************************************************");
    i2c_dbg("TC2: write 0xAAAAAA to the slave1 address");
    i2c_dbg("********************************************************************************");
    i2c_write(SLAVE_ADDR1, x"AAAAAA");
    wait for 100 us;
    i2c_dbg("********************************************************************************");
    i2c_dbg("TC3: write 0xAAAAAA to the slave2 address");
    i2c_dbg("********************************************************************************");
    i2c_write(SLAVE_ADDR2, x"AAAAAA");
    wait for 100 us;
    stop_clk <= '1';
    i2c_dbg("stop simulation without errors." & LF & "runtime: " & time'image(now));
    printf("stop i2c simulation.");
    wait;
  end process WaveGen_Proc;



end architecture testbench;

-------------------------------------------------------------------------------

configuration i2c_iface_tb_testbench_cfg of i2c_iface_tb is
  for testbench
  end for;
end i2c_iface_tb_testbench_cfg;

-------------------------------------------------------------------------------
