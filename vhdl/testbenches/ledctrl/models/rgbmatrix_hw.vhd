library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library std;
use std.textio.all;

use work.rgbmatrix_pkg.all;

entity rgbmatrix_hw is

  port (
    clk      : in std_logic;
    rgb1     : in std_logic_vector(2 downto 0);
    rgb2     : in std_logic_vector(2 downto 0);
    led_addr : in std_logic_vector(2 downto 0);
    lat      : in std_logic;
    oe       : in std_logic
    );

end entity rgbmatrix_hw;

architecture bhv of rgbmatrix_hw is
  signal pixel_row_r_1 : unsigned(PANEL_WIDTH-1 downto 0):=(others => '0');
  signal pixel_row_g_1 : unsigned(PANEL_WIDTH-1 downto 0):=(others => '0');
  signal pixel_row_b_1 : unsigned(PANEL_WIDTH-1 downto 0):=(others => '0');
  signal pixel_row_r_2 : unsigned(PANEL_WIDTH-1 downto 0):=(others => '0');
  signal pixel_row_g_2 : unsigned(PANEL_WIDTH-1 downto 0):=(others => '0');
  signal pixel_row_b_2 : unsigned(PANEL_WIDTH-1 downto 0):=(others => '0');


  -- Inferred RAM storage signal
  type ram is array(2**ADDR_WIDTH-1 downto 0) of unsigned(PIXEL_DEPTH-1 downto 0);
  signal ram1r, ram1g, ram1b : ram := (others => (others => '0'));
  signal ram2r, ram2g, ram2b : ram := (others => (others => '0'));

  signal lat_cnt : integer range 0 to PANEL_HEIGHT/2 * 2**PIXEL_DEPTH;

  signal write_img : std_logic;
begin

  shift_pixels_in : process (clk) is
    variable rgb1_u : unsigned(2 downto 0);
    variable rgb2_u : unsigned(2 downto 0);

  begin
    rgb1_u := unsigned(rgb1);
    rgb2_u := unsigned(rgb2);
    if rising_edge(clk) then
      pixel_row_r_1 <= pixel_row_r_1(pixel_row_r_1'high-1 downto 0) & rgb1_u(2);
      pixel_row_g_1 <= pixel_row_g_1(pixel_row_g_1'high-1 downto 0) & rgb1_u(1);
      pixel_row_b_1 <= pixel_row_b_1(pixel_row_b_1'high-1 downto 0) & rgb1_u(0);
      pixel_row_r_2 <= pixel_row_r_2(pixel_row_r_2'high-1 downto 0) & rgb2_u(2);
      pixel_row_g_2 <= pixel_row_g_2(pixel_row_g_2'high-1 downto 0) & rgb2_u(1);
      pixel_row_b_2 <= pixel_row_b_2(pixel_row_b_2'high-1 downto 0) & rgb2_u(0);
    end if;
  end process shift_pixels_in;

  latch_row : process (lat) is
    variable addr : integer;
  begin
    addr := PANEL_WIDTH * to_integer(unsigned(led_addr));
    if rising_edge(lat) then
-- TODO count rising_edge lat, after PANEL_HEIGHT/2 * 2**PIXEL_DEPTH (8*256) latches,
-- write image & clear ram
      if lat_cnt < PANEL_HEIGHT/2 * 2**PIXEL_DEPTH -16 then
        lat_cnt <= lat_cnt + 1;
        write_img <= '0';
      else
        lat_cnt <= 0;
      -- TODO write image
      -- http://embdev.net/topic/313594
      -- http://en.wikipedia.org/wiki/Netpbm_format#PPM_example
      -- use gimp for viewing
        write_img <= '1';
      end if;
      for i in 0 to PANEL_WIDTH-1 loop
        ram1r(addr+i) <= ram1r(addr+i) + pixel_row_r_1(i);
        ram1g(addr+i) <= ram1g(addr+i) + pixel_row_g_1(i);
        ram1b(addr+i) <= ram1b(addr+i) + pixel_row_b_1(i);
        ram2r(addr+i) <= ram2r(addr+i) + pixel_row_r_2(i);
        ram2g(addr+i) <= ram2g(addr+i) + pixel_row_g_2(i);
        ram2b(addr+i) <= ram2b(addr+i) + pixel_row_b_2(i);
      end loop;  -- i

    end if;
  end process latch_row;

  ppm_file : process
    file ppm_file     : text;
    variable l_handle : line;
    variable P3       : string(1 to 2)  := "P3";
    variable name     : string(1 to 11) := "# ppm image";
    variable size     : string (1 to 5) := "32 16";
    variable space    : string (1 to 1) := " ";
    variable scope    : string (1 to 3) := "255";
    variable char     : integer         := 0;
  begin
    wait until rising_edge(write_img);
    file_open(ppm_file, "image.ppm", write_mode);

    write(l_handle, P3);
    writeline(ppm_file, l_handle);
    write(l_handle, name);
    writeline(ppm_file, l_handle);
    write(l_handle, size);
    writeline(ppm_file, l_handle);
    write(l_handle, scope);
    writeline(ppm_file, l_handle);

    for y in 0 to 7 loop
      for x in 31 downto 0 loop
        write(l_handle, integer'image(to_integer(ram1r(y*32+x)))& " ");
        write(l_handle, integer'image(to_integer(ram1g(y*32+x)))& " ");
        write(l_handle, integer'image(to_integer(ram1b(y*32+x)))& "  ");
      end loop;  -- x
      writeline(ppm_file, l_handle);
    end loop;  -- y

    for y in 0 to 7 loop
      for x in 31 downto 0 loop
        write(l_handle, integer'image(to_integer(ram2r(y*32+x)))& " ");
        write(l_handle, integer'image(to_integer(ram2g(y*32+x)))& " ");
        write(l_handle, integer'image(to_integer(ram2b(y*32+x)))& "  ");
      end loop;  -- x
      writeline(ppm_file, l_handle);
    end loop;  -- y

    file_close(ppm_file);
    wait;
  end process ppm_file;

end architecture bhv;
