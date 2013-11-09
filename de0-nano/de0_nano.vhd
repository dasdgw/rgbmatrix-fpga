library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! pinning de0nano <-> rgbmatrix
--!
--! rgbmatrix |               de0nano               | rgbmatrix
--!
--!                            GPIO-0 (JP1)
--!                           ---------
--!             GPIO_0_IN[0]  |01   02|  GPIO_0[0]
--!             GPIO_0_IN[1]  |03   04|  GPIO_0[1]
--!             GPIO_0[2]     |05   06|  GPIO_0[3]
--!             GPIO_0[4]     |07   08|  GPIO_0[5]
--!             GPIO_0[6]     |09   10|  GPIO_0[7]
--!             VCC_SYS       |11   12|  GND          gnd
--!             GPIO_0[8]     |13   14|  GPIO_0[9]
--!             GPIO_0[10]    |15   16|  GPIO_0[11]
--!             GPIO_0[12]    |17   18|  GPIO_0[13]
--!             GPIO_0[14]    |19   20|  GPIO_0[15]
--!             GPIO_0[16]    |21   22|  GPIO_0[17]
--!             GPIO_0[18]    |23   24|  GPIO_0[19]
--!             GPIO_0[20]    |25   26|  GPIO_0[21]
--!       g1    GPIO_0[22]    |27   28|  GPIO_0[23]   r1
--!             VCC_SYS       |29   30|  GND          gnd
--!       b1    GPIO_0[24]    |31   32|  GPIO_0[25]   g2
--!       r2    GPIO_0[26]    |33   34|  GPIO_0[27]   b2
--!       b     GPIO_0[28]    |35   36|  GPIO_0[29]   a
--!       c     GPIO_0[30]    |37   38|  GPIO_0[31]   latch
--!       clk   GPIO_0[32]    |39   40|  GPIO_0[33]   oe
--!                           ---------

--! pinning de0nano <-> i2c
--!
--!    i2c    |               de0nano               | i2c
--!
--!                            GPIO-1 (JP2)
--!                           ---------
--!             GPIO_1_IN[0]  |01   02|  GPIO_1[0]   SDA
--!             GPIO_1_IN[1]  |03   04|  GPIO_1[1]   SCL
--!             GPIO_1[2]     |05   06|  GPIO_1[3]
--!             GPIO_1[4]     |07   08|  GPIO_1[5]
--!             GPIO_1[6]     |09   10|  GPIO_1[7]
--!             VCC_SYS       |11   12|  GND          gnd
--!             GPIO_1[8]     |13   14|  GPIO_1[9]
--!             GPIO_1[10]    |15   16|  GPIO_1[11]
--!             GPIO_1[12]    |17   18|  GPIO_1[13]
--!             GPIO_1[14]    |19   20|  GPIO_1[15]
--!             GPIO_1[16]    |21   22|  GPIO_1[17]
--!             GPIO_1[18]    |23   24|  GPIO_1[19]
--!             GPIO_1[20]    |25   26|  GPIO_1[21]
--!             GPIO_1[22]    |27   28|  GPIO_1[23]
--!             VCC_SYS       |29   30|  GND          gnd
--!             GPIO_1[24]    |31   32|  GPIO_1[25]
--!             GPIO_1[26]    |33   34|  GPIO_1[27]
--!             GPIO_1[28]    |35   36|  GPIO_1[29]
--!             GPIO_1[30]    |37   38|  GPIO_1[31]
--!             GPIO_1[32]    |39   40|  GPIO_1[33]
--!                           ---------

entity de0_nano is
  port(

--      //////////// CLOCK //////////
    CLOCK_50 : in std_logic;

--      //////////// LED //////////
    LED : out std_logic_vector(7 downto 0);

--      //////////// GPIO_0, GPIO_0 connect to GPIO Default //////////
    GPIO_0 : out std_logic_vector(33 downto 22);

--      //////////// GPIO_1, GPIO_1 connect to GPIO Default //////////
    debug : out std_logic_vector(1 downto 0);
    SDA   : inout std_logic;
    SCL   : inout std_logic
    );
end;

architecture structural of de0_nano is
  signal counter   : unsigned(31 downto 0) := (others => '0');
  signal clk       : std_logic             := '0';
  signal clk_10MHz : std_logic             := '0';
  signal locked    : std_logic             := '0';

  signal rst_n       : std_logic;       -- [in]
  signal clk_out     : std_logic;       -- [out]
  signal r1          : std_logic;       -- [out]
  signal r2          : std_logic;       -- [out]
  signal b1          : std_logic;       -- [out]
  signal b2          : std_logic;       -- [out]
  signal g1          : std_logic;       -- [out]
  signal g2          : std_logic;       -- [out]
  signal a           : std_logic;       -- [out]
  signal b           : std_logic;       -- [out]
  signal c           : std_logic;       -- [out]
  signal lat         : std_logic;       -- [out]
  signal oe          : std_logic;       -- [out]
  
begin  -- structural

  pll1_1 : entity work.pll1
    port map (
      areset => '0',                    -- [IN  STD_LOGIC  := '0']
      inclk0 => CLOCK_50,               -- [IN  STD_LOGIC  := '0']
      c0     => clk,                    -- [OUT STD_LOGIC]
      c1     => clk_10MHz,
      locked => locked);                -- [OUT STD_LOGIC]process(CLOCK_50)

  rgbmatrix_1 : entity work.rgbmatrix
    port map (
      clk_in   => clk_10MHz,            -- [in  std_logic]
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
      i2c_sdat => SDA,                  -- [inout std_logic]
      i2c_sclk => SCL);                 -- [inout std_logic]

  rst_n <= locked;
  debug <= SCL & SDA;

--  GPIO_0(33 downto 22) <= g1 & r1 & b1 & g2 & r2 & b2 & b & a & c & lat & clk_out & oe;

--                        33     32      31   30  29  28   27   26   25   24   23  22
  GPIO_0(33 downto 22) <= oe & clk_out & lat & c & a & b & b1 & r1 & g1 & b2 & r2 &g2;
  led_test : process(clk)
  begin
    if rising_edge(clk) then
      counter <= counter + 1;
      LED     <= std_logic_vector(counter(31 downto 24));
    end if;
  end process led_test;
  
end structural;
