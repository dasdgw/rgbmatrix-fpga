-------------------------------------------------------------------------------
-- Title      : Testbench for design "i2c_iface"
-- Project    : 
-------------------------------------------------------------------------------
-- File       : i2c_iface_tb.vhd
-- Author     :   <dasdgw@karel.dhcp.heaven>
-- Company    : frankalicious
-- Created    : 2012-12-29
-- Last update: 2013-01-18
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
use ieee.std_logic_1164.all;
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
  signal clk      : std_logic := '1';                           -- [in]
  signal rst      : std_logic := '1';                           -- [in]
  signal rst_out  : std_logic;                                  -- [out]
  signal output   : std_logic_vector(DATA_WIDTH/2-1 downto 0);  -- [out]
  signal valid    : std_logic;                                  -- [out]
  signal i2c_sdat : std_logic;                                  -- [inout]
  signal i2c_sclk : std_logic;                                  -- [inout]
  signal waddr    : std_logic_vector(ADDR_WIDTH downto 0);
  
begin  -- architecture testbench

  -- component instantiation
  DUT : entity work.i2c_iface
    generic map (
      SLAVE_ADDR => SLAVE_ADDR)         -- [std_logic_vector(6 downto 0)]
    port map (
      clk      => clk,                  -- [in  std_logic]
      rst      => rst,                  -- [in  std_logic]
      rst_out  => rst_out,              -- [out std_logic]
      waddr    => waddr,   -- [out std_logic_vector(ADDR_WIDTH downto 0)]
      output   => output,  -- [out std_logic_vector(DATA_WIDTH-1 downto 0)]
      valid    => valid,                -- [out std_logic]
      i2c_sdat => i2c_sdat,             -- [inout std_logic]
      i2c_sclk => i2c_sclk);            -- [inout std_logic]

  -- clock generation
  clk <= not clk after 10 ns;
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

-- purpose: i2c write
--example:     i2c_write("1010000", x"00000003");
    procedure i2c_write (
      addr : in std_logic_vector;
      data : in std_logic_vector) is
--      variable my_line : line;
      variable bit_cnt : integer := 0;
    begin
      i2c_sdat <= '1';
      i2c_sclk <= '1';
      wait for 50 us;
      report "start";
      i2c_sdat <= '0';
      wait for 10 us;
      i2c_sclk <= '0';
      wait for 10 us;
      report "send address";
      for i in addr'range loop
        i2c_clk(addr(i));
      end loop;  -- i
      report "write_cmd";
       i2c_clk('0');
      report "ignore if slave sends an ack";
      i2c_clk('Z');
      wait for 50 ns;
      assert not (i2c_sdat = '0' and addr = "1010000") severity failure;
      assert not (i2c_sdat = 'Z' and not addr = "1010000") severity failure;
      for i in data'range loop
        i2c_clk(data(i));
        bit_cnt  := bit_cnt+1;
        if bit_cnt = 8 then
          bit_cnt  := 0;
          report "ignore if slave sents an ack";
          i2c_clk('Z');
          assert i2c_sdat = 'Z' report "no slave has acked the data" severity warning;
        end if;
      end loop;  -- i
      report "stop";
      i2c_sdat <= '0';
      wait for 10 us;
      i2c_sclk <= '1';
      wait for 10 us;
      report "idle";
      i2c_sdat <= '1';
      i2c_sclk <= '1';
      wait for 50 us;

    --if verbose = true then
    --  write(my_line, string'("pci_write addr: "));
    --  hwrite(my_line, to_bitvector(addr));
    --  write(my_line, string'(" value: "));
    --  hwrite(my_line, to_bitvector(data));
    --  write(my_line, string'(" @ "));
    --  write(my_line, now);
    --  writeline(output, my_line);
    --end if;
    end procedure i2c_write;

  begin
    report "start i2c simulation: ..." severity note;
    -- insert signal assignments here
    report "write 0xAA to the slave address" severity note;
    i2c_write("1010101", x"AA");
    wait for 100 us;
    report "write 0xAA to the wrong slave address. no one should ack the address." severity note;
    i2c_write("1010000", x"AA");
    wait for 100 us;
--    i2c_write("1010101", x"AA");
--    wait for 100 us;
    report "write 0xAAAAAA to the slave address" severity note;
    i2c_write("1010101", x"AAAAAA");
    wait until clk = '1';
  end process WaveGen_Proc;

  

end architecture testbench;

-------------------------------------------------------------------------------

configuration i2c_iface_tb_testbench_cfg of i2c_iface_tb is
  for testbench
  end for;
end i2c_iface_tb_testbench_cfg;

-------------------------------------------------------------------------------
