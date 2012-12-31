library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! pinning de0nano <-> rgbmatrix
--!
--! rgbmatrix |               de0nano               | rgbmatrix
--!
--!                            GPIO-0
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

entity de0_nano is
  port(

--      //////////// CLOCK //////////
    CLOCK_50 : in std_logic;

--      //////////// LED //////////
    LED : out std_logic_vector(7 downto 0);

--      //////////// KEY //////////
-- '0' if pressed
    KEY : in std_logic_vector(1 downto 0);

--      //////////// SW //////////
    SW : in std_logic_vector(3 downto 0);

--      //////////// SDRAM //////////
    DRAM_ADDR  : out   std_logic_vector(12 downto 0);
    DRAM_BA    : out   std_logic_vector(1 downto 0);
    DRAM_CAS_N : out   std_logic;
    DRAM_CKE   : out   std_logic;
    DRAM_CLK   : out   std_logic;
    DRAM_CS_N  : out   std_logic;
    DRAM_DQ    : inout std_logic_vector(15 downto 0);
    DRAM_DQM   : out   std_logic_vector(1 downto 0);
    DRAM_RAS_N : out   std_logic;
    DRAM_WE_N  : out   std_logic;

--      //////////// EPCS //////////
    EPCS_ASDO  : out std_logic;
    EPCS_DATA0 : in  std_logic;
    EPCS_DCLK  : out std_logic;
    EPCS_NCSO  : out std_logic;

--      //////////// Accelerometer and EEPROM //////////
    G_SENSOR_CS_N : out std_logic;
    G_SENSOR_INT  : in  std_logic;
    I2C_SCLK      : out std_logic;
    I2C_SDAT      : out std_logic;

--      //////////// ADC //////////
    ADC_CS_N  : out std_logic;
    ADC_SADDR : out std_logic;
    ADC_SCLK  : out std_logic;
    ADC_SDAT  : in  std_logic;

--      //////////// 2x13 GPIO Header //////////
    GPIO_2    : inout std_logic_vector(12 downto 0);
    GPIO_2_IN : in    std_logic_vector(2 downto 0);

--      //////////// GPIO_0, GPIO_0 connect to GPIO Default //////////
    GPIO_0    : inout std_logic_vector(33 downto 0);
    GPIO_0_IN : in    std_logic_vector(1 downto 0);

--      //////////// GPIO_1, GPIO_1 connect to GPIO Default //////////
    GPIO_1    : inout std_logic_vector(33 downto 0);
    GPIO_1_IN : in    std_logic_vector(1 downto 0)
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
  signal i2c_sdat_ex : std_logic;
  signal i2c_sclk_ex : std_logic;
  
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
      i2c_sdat => GPIO_1(0),--i2c_sdat_ex,          -- [inout std_logic]
      i2c_sclk => GPIO_1(1));--i2c_sclk_ex);         -- [inout std_logic]

  rst_n <= locked;

--  GPIO_0(33 downto 22) <= g1 & r1 & b1 & g2 & r2 & b2 & b & a & c & lat & clk_out & oe;

--                        33     32      31   30  29  28   27   26   25   24   23  22
  GPIO_0(33 downto 22) <= oe & clk_out & lat & c & a & b & b2 & r2 & g2 & b1 & r1 &g1;
  led_test : process(clk)
  begin
    if rising_edge(clk) then
      counter <= counter + 1;
      LED     <= std_logic_vector(counter(31 downto 24));
    end if;
  end process led_test;
  
end structural;
