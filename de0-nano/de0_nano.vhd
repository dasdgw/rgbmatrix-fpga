library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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
  signal counter : unsigned(31 downto 0) := (others => '0');
  signal clk     : std_logic             := '0';
  signal locked  : std_logic             := '0';

  signal rst_n   : std_logic;           -- [in]
  signal clk_out : std_logic;           -- [out]
  signal r1      : std_logic;           -- [out]
  signal r2      : std_logic;           -- [out]
  signal b1      : std_logic;           -- [out]
  signal b2      : std_logic;           -- [out]
  signal g1      : std_logic;           -- [out]
  signal g2      : std_logic;           -- [out]
  signal a       : std_logic;           -- [out]
  signal b       : std_logic;           -- [out]
  signal c       : std_logic;           -- [out]
  signal lat     : std_logic;           -- [out]
  signal oe      : std_logic;           -- [out]

begin  -- structural

  pll1_1 : entity work.pll1
    port map (
      areset => '0',                    -- [IN  STD_LOGIC  := '0']
      inclk0 => CLOCK_50,               -- [IN  STD_LOGIC  := '0']
      c0     => clk,                    -- [OUT STD_LOGIC]
      locked => locked);                -- [OUT STD_LOGIC]process(CLOCK_50)

  rgbmatrix_1 : entity work.rgbmatrix
    port map (
      clk_in  => clk,                   -- [in  std_logic]
      rst_n   => rst_n,                 -- [in  std_logic]
      clk_out => clk_out,               -- [out std_logic]
      r1      => r1,                    -- [out std_logic]
      r2      => r2,                    -- [out std_logic]
      b1      => b1,                    -- [out std_logic]
      b2      => b2,                    -- [out std_logic]
      g1      => g1,                    -- [out std_logic]
      g2      => g2,                    -- [out std_logic]
      a       => a,                     -- [out std_logic]
      b       => b,                     -- [out std_logic]
      c       => c,                     -- [out std_logic]
      lat     => lat,                   -- [out std_logic]
      oe      => oe);                   -- [out std_logic]

  rst_n <= locked;

--  GPIO_0(33 downto 22) <= g1 & r1 & b1 & g2 & r2 & b2 & b & a & c & lat & clk_out & oe;
  GPIO_0(33 downto 22) <= oe & clk_out & lat & c & a & b & b2 & r2 & g2 & b1 & r1 &g1; 
  led_test : process(clk)
  begin
    if rising_edge(clk) then
      counter <= counter + 1;
      LED     <= std_logic_vector(counter(31 downto 24));
    end if;
  end process led_test;
  
end structural;
