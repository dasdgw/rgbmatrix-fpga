-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "12/16/2012 00:07:57"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	de0_nano IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	CLOCK_50 : IN std_logic;
	LED : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0);
	DRAM_ADDR : OUT std_logic_vector(12 DOWNTO 0);
	DRAM_BA : OUT std_logic_vector(1 DOWNTO 0);
	DRAM_CAS_N : OUT std_logic;
	DRAM_CKE : OUT std_logic;
	DRAM_CLK : OUT std_logic;
	DRAM_CS_N : OUT std_logic;
	DRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	DRAM_DQM : OUT std_logic_vector(1 DOWNTO 0);
	DRAM_RAS_N : OUT std_logic;
	DRAM_WE_N : OUT std_logic;
	EPCS_ASDO : OUT std_logic;
	EPCS_DATA0 : IN std_logic;
	EPCS_DCLK : OUT std_logic;
	EPCS_NCSO : OUT std_logic;
	G_SENSOR_CS_N : OUT std_logic;
	G_SENSOR_INT : IN std_logic;
	I2C_SCLK : OUT std_logic;
	I2C_SDAT : OUT std_logic;
	ADC_CS_N : OUT std_logic;
	ADC_SADDR : OUT std_logic;
	ADC_SCLK : OUT std_logic;
	ADC_SDAT : IN std_logic;
	GPIO_2 : INOUT std_logic_vector(12 DOWNTO 0);
	GPIO_2_IN : IN std_logic_vector(2 DOWNTO 0);
	GPIO_0 : INOUT std_logic_vector(33 DOWNTO 0);
	GPIO_0_IN : IN std_logic_vector(1 DOWNTO 0);
	GPIO_1 : INOUT std_logic_vector(33 DOWNTO 0);
	GPIO_1_IN : IN std_logic_vector(1 DOWNTO 0)
	);
END de0_nano;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY[0]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DRAM_ADDR[0]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[1]	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[2]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[3]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[4]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[5]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[6]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[7]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[8]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[9]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[10]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[11]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_ADDR[12]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_BA[0]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_BA[1]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_CAS_N	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_CKE	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_CLK	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_CS_N	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQM[0]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQM[1]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_RAS_N	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_WE_N	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- EPCS_ASDO	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EPCS_DATA0	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EPCS_DCLK	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EPCS_NCSO	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G_SENSOR_CS_N	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- G_SENSOR_INT	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- I2C_SCLK	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- I2C_SDAT	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_CS_N	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_SADDR	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADC_SDAT	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_2_IN[0]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_2_IN[1]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_2_IN[2]	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0_IN[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_0_IN[1]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_1_IN[0]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GPIO_1_IN[1]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DRAM_DQ[0]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[1]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[2]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[3]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[4]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[5]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[6]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[7]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[8]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[9]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[10]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[11]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[12]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[13]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[14]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DRAM_DQ[15]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[2]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[4]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[5]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[6]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[8]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[9]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[10]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[11]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_2[12]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[0]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[2]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[3]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[4]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[5]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[6]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[7]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[8]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[9]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[10]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[11]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[12]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[13]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[14]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[15]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[16]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[17]	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[18]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[19]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[20]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[21]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[0]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[1]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[3]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[4]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[5]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[6]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[7]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[8]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[9]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[10]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[11]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[12]	=>  Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[13]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[14]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[15]	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[16]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[17]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[18]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[19]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[20]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[21]	=>  Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[22]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[23]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[24]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[25]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[26]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[27]	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[28]	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[29]	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[30]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[31]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[32]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_1[33]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[22]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[23]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[24]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[25]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[26]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[27]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[28]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[29]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[30]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[31]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[32]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO_0[33]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF de0_nano IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DRAM_ADDR : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_DRAM_BA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DRAM_CAS_N : std_logic;
SIGNAL ww_DRAM_CKE : std_logic;
SIGNAL ww_DRAM_CLK : std_logic;
SIGNAL ww_DRAM_CS_N : std_logic;
SIGNAL ww_DRAM_DQM : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DRAM_RAS_N : std_logic;
SIGNAL ww_DRAM_WE_N : std_logic;
SIGNAL ww_EPCS_ASDO : std_logic;
SIGNAL ww_EPCS_DATA0 : std_logic;
SIGNAL ww_EPCS_DCLK : std_logic;
SIGNAL ww_EPCS_NCSO : std_logic;
SIGNAL ww_G_SENSOR_CS_N : std_logic;
SIGNAL ww_G_SENSOR_INT : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_I2C_SDAT : std_logic;
SIGNAL ww_ADC_CS_N : std_logic;
SIGNAL ww_ADC_SADDR : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL ww_ADC_SDAT : std_logic;
SIGNAL ww_GPIO_2_IN : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_GPIO_0_IN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_GPIO_1_IN : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll1_1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll1_1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[47]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rgbmatrix_1|rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[1]~31_combout\ : std_logic;
SIGNAL \counter[3]~35_combout\ : std_logic;
SIGNAL \counter[5]~39_combout\ : std_logic;
SIGNAL \counter[6]~41_combout\ : std_logic;
SIGNAL \counter[11]~51_combout\ : std_logic;
SIGNAL \counter[13]~55_combout\ : std_logic;
SIGNAL \counter[15]~59_combout\ : std_logic;
SIGNAL \counter[19]~67_combout\ : std_logic;
SIGNAL \counter[21]~71_combout\ : std_logic;
SIGNAL \counter[22]~73_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a46\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a45\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a43\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a42\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a41\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a40\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a39\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a38\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a37\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a35\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a34\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a33\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a32\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count[0]~7_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count[1]~9_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr0~q\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|jtag_tdo~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count[1]~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|Selector5~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|Selector6~0_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~17\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][1]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][3]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~22_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~23_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \EPCS_DATA0~input_o\ : std_logic;
SIGNAL \G_SENSOR_INT~input_o\ : std_logic;
SIGNAL \ADC_SDAT~input_o\ : std_logic;
SIGNAL \GPIO_2_IN[0]~input_o\ : std_logic;
SIGNAL \GPIO_2_IN[1]~input_o\ : std_logic;
SIGNAL \GPIO_2_IN[2]~input_o\ : std_logic;
SIGNAL \GPIO_0_IN[0]~input_o\ : std_logic;
SIGNAL \GPIO_0_IN[1]~input_o\ : std_logic;
SIGNAL \GPIO_1_IN[0]~input_o\ : std_logic;
SIGNAL \GPIO_1_IN[1]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \GPIO_2[0]~input_o\ : std_logic;
SIGNAL \GPIO_2[1]~input_o\ : std_logic;
SIGNAL \GPIO_2[2]~input_o\ : std_logic;
SIGNAL \GPIO_2[3]~input_o\ : std_logic;
SIGNAL \GPIO_2[4]~input_o\ : std_logic;
SIGNAL \GPIO_2[5]~input_o\ : std_logic;
SIGNAL \GPIO_2[6]~input_o\ : std_logic;
SIGNAL \GPIO_2[7]~input_o\ : std_logic;
SIGNAL \GPIO_2[8]~input_o\ : std_logic;
SIGNAL \GPIO_2[9]~input_o\ : std_logic;
SIGNAL \GPIO_2[10]~input_o\ : std_logic;
SIGNAL \GPIO_2[11]~input_o\ : std_logic;
SIGNAL \GPIO_2[12]~input_o\ : std_logic;
SIGNAL \GPIO_0[0]~input_o\ : std_logic;
SIGNAL \GPIO_0[1]~input_o\ : std_logic;
SIGNAL \GPIO_0[2]~input_o\ : std_logic;
SIGNAL \GPIO_0[3]~input_o\ : std_logic;
SIGNAL \GPIO_0[4]~input_o\ : std_logic;
SIGNAL \GPIO_0[5]~input_o\ : std_logic;
SIGNAL \GPIO_0[6]~input_o\ : std_logic;
SIGNAL \GPIO_0[7]~input_o\ : std_logic;
SIGNAL \GPIO_0[8]~input_o\ : std_logic;
SIGNAL \GPIO_0[9]~input_o\ : std_logic;
SIGNAL \GPIO_0[10]~input_o\ : std_logic;
SIGNAL \GPIO_0[11]~input_o\ : std_logic;
SIGNAL \GPIO_0[12]~input_o\ : std_logic;
SIGNAL \GPIO_0[13]~input_o\ : std_logic;
SIGNAL \GPIO_0[14]~input_o\ : std_logic;
SIGNAL \GPIO_0[15]~input_o\ : std_logic;
SIGNAL \GPIO_0[16]~input_o\ : std_logic;
SIGNAL \GPIO_0[17]~input_o\ : std_logic;
SIGNAL \GPIO_0[18]~input_o\ : std_logic;
SIGNAL \GPIO_0[19]~input_o\ : std_logic;
SIGNAL \GPIO_0[20]~input_o\ : std_logic;
SIGNAL \GPIO_0[21]~input_o\ : std_logic;
SIGNAL \GPIO_1[0]~input_o\ : std_logic;
SIGNAL \GPIO_1[1]~input_o\ : std_logic;
SIGNAL \GPIO_1[2]~input_o\ : std_logic;
SIGNAL \GPIO_1[3]~input_o\ : std_logic;
SIGNAL \GPIO_1[4]~input_o\ : std_logic;
SIGNAL \GPIO_1[5]~input_o\ : std_logic;
SIGNAL \GPIO_1[6]~input_o\ : std_logic;
SIGNAL \GPIO_1[7]~input_o\ : std_logic;
SIGNAL \GPIO_1[8]~input_o\ : std_logic;
SIGNAL \GPIO_1[9]~input_o\ : std_logic;
SIGNAL \GPIO_1[10]~input_o\ : std_logic;
SIGNAL \GPIO_1[11]~input_o\ : std_logic;
SIGNAL \GPIO_1[12]~input_o\ : std_logic;
SIGNAL \GPIO_1[13]~input_o\ : std_logic;
SIGNAL \GPIO_1[14]~input_o\ : std_logic;
SIGNAL \GPIO_1[15]~input_o\ : std_logic;
SIGNAL \GPIO_1[16]~input_o\ : std_logic;
SIGNAL \GPIO_1[17]~input_o\ : std_logic;
SIGNAL \GPIO_1[18]~input_o\ : std_logic;
SIGNAL \GPIO_1[19]~input_o\ : std_logic;
SIGNAL \GPIO_1[20]~input_o\ : std_logic;
SIGNAL \GPIO_1[21]~input_o\ : std_logic;
SIGNAL \GPIO_1[22]~input_o\ : std_logic;
SIGNAL \GPIO_1[23]~input_o\ : std_logic;
SIGNAL \GPIO_1[24]~input_o\ : std_logic;
SIGNAL \GPIO_1[25]~input_o\ : std_logic;
SIGNAL \GPIO_1[26]~input_o\ : std_logic;
SIGNAL \GPIO_1[27]~input_o\ : std_logic;
SIGNAL \GPIO_1[28]~input_o\ : std_logic;
SIGNAL \GPIO_1[29]~input_o\ : std_logic;
SIGNAL \GPIO_1[30]~input_o\ : std_logic;
SIGNAL \GPIO_1[31]~input_o\ : std_logic;
SIGNAL \GPIO_1[32]~input_o\ : std_logic;
SIGNAL \GPIO_1[33]~input_o\ : std_logic;
SIGNAL \GPIO_0[22]~input_o\ : std_logic;
SIGNAL \GPIO_0[23]~input_o\ : std_logic;
SIGNAL \GPIO_0[24]~input_o\ : std_logic;
SIGNAL \GPIO_0[25]~input_o\ : std_logic;
SIGNAL \GPIO_0[26]~input_o\ : std_logic;
SIGNAL \GPIO_0[27]~input_o\ : std_logic;
SIGNAL \GPIO_0[28]~input_o\ : std_logic;
SIGNAL \GPIO_0[29]~input_o\ : std_logic;
SIGNAL \GPIO_0[30]~input_o\ : std_logic;
SIGNAL \GPIO_0[31]~input_o\ : std_logic;
SIGNAL \GPIO_0[32]~input_o\ : std_logic;
SIGNAL \GPIO_0[33]~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count~1_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \pll1_1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll1_1|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \rgbmatrix_1|rst~combout\ : std_logic;
SIGNAL \rgbmatrix_1|rst~clkctrl_outclk\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count~2_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|LessThan0~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~q\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[0]~8_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[3]~14_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count[0]~8\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count[1]~10\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count[2]~11_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|Selector4~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|state.LATCH~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|state.LATCH~q\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|state.INIT~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|state.INIT~q\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|next_state.INCR_RAM_ADDR~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|next_state.READ_PIXEL_DATA~combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|state.READ_PIXEL_DATA~q\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count[2]~12\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count[3]~13_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|Selector3~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count[3]~14\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count[4]~15_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|Selector2~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count[4]~16\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count[5]~17_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|Selector1~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count[5]~18\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count[6]~19_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|Selector0~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|next_state.INCR_LED_ADDR~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_led_addr[1]~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_led_addr[2]~2_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_led_addr[0]~1_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~24_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|Equal1~1_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[1]~10_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|Equal1~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|Equal1~2_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[0]~9\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[1]~11\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[2]~12_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[2]~13\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[3]~15\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[4]~17\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[5]~18_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[5]~19\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[6]~20_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[6]~21\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~22_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[46]~1_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[46]~feeder_combout\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~8\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][3]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][0]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~1_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~2_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~3_combout\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[44]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[42]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[40]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[39]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[38]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[35]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[33]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[32]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[31]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[30]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[28]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[27]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[26]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[24]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[23]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[22]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[19]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[18]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[17]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[16]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[14]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[12]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[10]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[8]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[7]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[6]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[3]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[1]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[0]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[47]~0_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[47]~clkctrl_outclk\ : std_logic;
SIGNAL \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[47]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[46]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[44]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[43]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[41]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[39]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[37]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[36]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[35]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[33]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[31]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[0]~24_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[1]~8_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[1]~9\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[2]~10_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[2]~11\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[3]~12_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[3]~13\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[4]~14_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[4]~15\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[5]~16_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[5]~17\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[6]~18_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[6]~19\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[7]~20_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[7]~21\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|waddr[8]~22_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[0]~8_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[1]~9_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[1]~10\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[2]~11_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[2]~12\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[3]~13_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[3]~14\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[4]~15_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[4]~16\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[5]~17_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[5]~18\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[6]~19_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[6]~20\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[7]~21_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[7]~22\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr[8]~23_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a36\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan1~1_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan1~3_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan1~5_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan1~7_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan1~9_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan1~11_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan1~13_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan1~14_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a47\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a44\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan0~1_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan0~3_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan0~5_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan0~7_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan0~9_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan0~11_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan0~13_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan0~14_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count[4]~16_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[29]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[28]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[27]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[25]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[24]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[23]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[21]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[20]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[19]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[18]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[16]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[13]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[12]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan2~1_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan2~3_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan2~5_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan2~7_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan2~9_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan2~11_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan2~13_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan2~14_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan4~1_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan4~3_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan4~5_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan4~7_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan4~9_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan4~11_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan4~13_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan4~14_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[7]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[6]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[5]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[3]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[1]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1[0]~feeder_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan3~1_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan3~3_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan3~5_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan3~7_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan3~9_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan3~11_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan3~13_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan3~14_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan5~1_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan5~3_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan5~5_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan5~7_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan5~9_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan5~11_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan5~13_cout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|LessThan5~14_combout\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_oe~0_combout\ : std_logic;
SIGNAL \counter[0]~93_combout\ : std_logic;
SIGNAL \counter[1]~32\ : std_logic;
SIGNAL \counter[2]~33_combout\ : std_logic;
SIGNAL \counter[2]~34\ : std_logic;
SIGNAL \counter[3]~36\ : std_logic;
SIGNAL \counter[4]~37_combout\ : std_logic;
SIGNAL \counter[4]~38\ : std_logic;
SIGNAL \counter[5]~40\ : std_logic;
SIGNAL \counter[6]~42\ : std_logic;
SIGNAL \counter[7]~43_combout\ : std_logic;
SIGNAL \counter[7]~44\ : std_logic;
SIGNAL \counter[8]~45_combout\ : std_logic;
SIGNAL \counter[8]~46\ : std_logic;
SIGNAL \counter[9]~47_combout\ : std_logic;
SIGNAL \counter[9]~48\ : std_logic;
SIGNAL \counter[10]~49_combout\ : std_logic;
SIGNAL \counter[10]~50\ : std_logic;
SIGNAL \counter[11]~52\ : std_logic;
SIGNAL \counter[12]~53_combout\ : std_logic;
SIGNAL \counter[12]~54\ : std_logic;
SIGNAL \counter[13]~56\ : std_logic;
SIGNAL \counter[14]~57_combout\ : std_logic;
SIGNAL \counter[14]~58\ : std_logic;
SIGNAL \counter[15]~60\ : std_logic;
SIGNAL \counter[16]~61_combout\ : std_logic;
SIGNAL \counter[16]~62\ : std_logic;
SIGNAL \counter[17]~63_combout\ : std_logic;
SIGNAL \counter[17]~64\ : std_logic;
SIGNAL \counter[18]~65_combout\ : std_logic;
SIGNAL \counter[18]~66\ : std_logic;
SIGNAL \counter[19]~68\ : std_logic;
SIGNAL \counter[20]~69_combout\ : std_logic;
SIGNAL \counter[20]~70\ : std_logic;
SIGNAL \counter[21]~72\ : std_logic;
SIGNAL \counter[22]~74\ : std_logic;
SIGNAL \counter[23]~75_combout\ : std_logic;
SIGNAL \counter[23]~76\ : std_logic;
SIGNAL \counter[24]~77_combout\ : std_logic;
SIGNAL \LED[0]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[0]~reg0_q\ : std_logic;
SIGNAL \counter[24]~78\ : std_logic;
SIGNAL \counter[25]~79_combout\ : std_logic;
SIGNAL \LED[1]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[1]~reg0_q\ : std_logic;
SIGNAL \counter[25]~80\ : std_logic;
SIGNAL \counter[26]~81_combout\ : std_logic;
SIGNAL \LED[2]~reg0_q\ : std_logic;
SIGNAL \counter[26]~82\ : std_logic;
SIGNAL \counter[27]~83_combout\ : std_logic;
SIGNAL \LED[3]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[3]~reg0_q\ : std_logic;
SIGNAL \counter[27]~84\ : std_logic;
SIGNAL \counter[28]~85_combout\ : std_logic;
SIGNAL \LED[4]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[4]~reg0_q\ : std_logic;
SIGNAL \counter[28]~86\ : std_logic;
SIGNAL \counter[29]~87_combout\ : std_logic;
SIGNAL \LED[5]~reg0_q\ : std_logic;
SIGNAL \counter[29]~88\ : std_logic;
SIGNAL \counter[30]~89_combout\ : std_logic;
SIGNAL \LED[6]~reg0feeder_combout\ : std_logic;
SIGNAL \LED[6]~reg0_q\ : std_logic;
SIGNAL \counter[30]~90\ : std_logic;
SIGNAL \counter[31]~91_combout\ : std_logic;
SIGNAL \LED[7]~reg0_q\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \pll1_1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_rgb2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_rgb1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_ram_addr\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_LEDCTRL|s_led_addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_LEDCTRL|col_count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_LEDCTRL|bpp_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_JTAGIFACE|dr1\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \rgbmatrix_1|U_MEMORY|waddr\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\ : std_logic_vector(8 DOWNTO 8);
SIGNAL \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\ : std_logic;
SIGNAL \rgbmatrix_1|U_LEDCTRL|ALT_INV_s_led_addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rgbmatrix_1|ALT_INV_rst~combout\ : std_logic;

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_CLOCK_50 <= CLOCK_50;
LED <= ww_LED;
ww_KEY <= KEY;
ww_SW <= SW;
DRAM_ADDR <= ww_DRAM_ADDR;
DRAM_BA <= ww_DRAM_BA;
DRAM_CAS_N <= ww_DRAM_CAS_N;
DRAM_CKE <= ww_DRAM_CKE;
DRAM_CLK <= ww_DRAM_CLK;
DRAM_CS_N <= ww_DRAM_CS_N;
DRAM_DQM <= ww_DRAM_DQM;
DRAM_RAS_N <= ww_DRAM_RAS_N;
DRAM_WE_N <= ww_DRAM_WE_N;
EPCS_ASDO <= ww_EPCS_ASDO;
ww_EPCS_DATA0 <= EPCS_DATA0;
EPCS_DCLK <= ww_EPCS_DCLK;
EPCS_NCSO <= ww_EPCS_NCSO;
G_SENSOR_CS_N <= ww_G_SENSOR_CS_N;
ww_G_SENSOR_INT <= G_SENSOR_INT;
I2C_SCLK <= ww_I2C_SCLK;
I2C_SDAT <= ww_I2C_SDAT;
ADC_CS_N <= ww_ADC_CS_N;
ADC_SADDR <= ww_ADC_SADDR;
ADC_SCLK <= ww_ADC_SCLK;
ww_ADC_SDAT <= ADC_SDAT;
ww_GPIO_2_IN <= GPIO_2_IN;
ww_GPIO_0_IN <= GPIO_0_IN;
ww_GPIO_1_IN <= GPIO_1_IN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll1_1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\pll1_1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll1_1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll1_1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll1_1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll1_1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll1_1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll1_1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll1_1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll1_1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll1_1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ <= (\rgbmatrix_1|U_JTAGIFACE|dr1\(47) & \rgbmatrix_1|U_JTAGIFACE|dr1\(46) & \rgbmatrix_1|U_JTAGIFACE|dr1\(45) & \rgbmatrix_1|U_JTAGIFACE|dr1\(44) & 
\rgbmatrix_1|U_JTAGIFACE|dr1\(43) & \rgbmatrix_1|U_JTAGIFACE|dr1\(42) & \rgbmatrix_1|U_JTAGIFACE|dr1\(41) & \rgbmatrix_1|U_JTAGIFACE|dr1\(40) & \rgbmatrix_1|U_JTAGIFACE|dr1\(39) & \rgbmatrix_1|U_JTAGIFACE|dr1\(38) & 
\rgbmatrix_1|U_JTAGIFACE|dr1\(37) & \rgbmatrix_1|U_JTAGIFACE|dr1\(36) & \rgbmatrix_1|U_JTAGIFACE|dr1\(35) & \rgbmatrix_1|U_JTAGIFACE|dr1\(34) & \rgbmatrix_1|U_JTAGIFACE|dr1\(33) & \rgbmatrix_1|U_JTAGIFACE|dr1\(32) & 
\rgbmatrix_1|U_JTAGIFACE|dr1\(31) & \rgbmatrix_1|U_JTAGIFACE|dr1\(30));

\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\rgbmatrix_1|U_MEMORY|waddr\(8) & \rgbmatrix_1|U_MEMORY|waddr\(7) & \rgbmatrix_1|U_MEMORY|waddr\(6) & \rgbmatrix_1|U_MEMORY|waddr\(5) & 
\rgbmatrix_1|U_MEMORY|waddr\(4) & \rgbmatrix_1|U_MEMORY|waddr\(3) & \rgbmatrix_1|U_MEMORY|waddr\(2) & \rgbmatrix_1|U_MEMORY|waddr\(1) & \rgbmatrix_1|U_MEMORY|waddr\(0));

\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(8) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(7) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(6) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(5) & 
\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(4) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(3) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(2) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(1) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(0));

\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a31\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(1);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a32\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(2);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a33\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(3);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a34\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(4);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a35\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(5);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a36\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(6);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a37\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(7);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a38\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(8);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a39\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(9);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a40\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(10);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a41\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(11);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a42\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(12);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a43\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(13);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a44\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(14);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a45\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(15);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a46\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(16);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a47\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(17);

\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\rgbmatrix_1|U_JTAGIFACE|dr1\(29) & \rgbmatrix_1|U_JTAGIFACE|dr1\(28) & \rgbmatrix_1|U_JTAGIFACE|dr1\(27) & \rgbmatrix_1|U_JTAGIFACE|dr1\(26) & 
\rgbmatrix_1|U_JTAGIFACE|dr1\(25) & \rgbmatrix_1|U_JTAGIFACE|dr1\(24) & \rgbmatrix_1|U_JTAGIFACE|dr1\(23) & \rgbmatrix_1|U_JTAGIFACE|dr1\(22) & \rgbmatrix_1|U_JTAGIFACE|dr1\(21) & \rgbmatrix_1|U_JTAGIFACE|dr1\(20) & 
\rgbmatrix_1|U_JTAGIFACE|dr1\(15) & \rgbmatrix_1|U_JTAGIFACE|dr1\(14) & \rgbmatrix_1|U_JTAGIFACE|dr1\(13) & \rgbmatrix_1|U_JTAGIFACE|dr1\(12) & \rgbmatrix_1|U_JTAGIFACE|dr1\(11) & \rgbmatrix_1|U_JTAGIFACE|dr1\(10) & 
\rgbmatrix_1|U_JTAGIFACE|dr1\(9) & \rgbmatrix_1|U_JTAGIFACE|dr1\(8));

\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\rgbmatrix_1|U_MEMORY|waddr\(8) & \rgbmatrix_1|U_MEMORY|waddr\(7) & \rgbmatrix_1|U_MEMORY|waddr\(6) & \rgbmatrix_1|U_MEMORY|waddr\(5) & 
\rgbmatrix_1|U_MEMORY|waddr\(4) & \rgbmatrix_1|U_MEMORY|waddr\(3) & \rgbmatrix_1|U_MEMORY|waddr\(2) & \rgbmatrix_1|U_MEMORY|waddr\(1) & \rgbmatrix_1|U_MEMORY|waddr\(0));

\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(8) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(7) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(6) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(5) & 
\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(4) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(3) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(2) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(1) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(0));

\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a9\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(1);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a10\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(2);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a11\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(3);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a12\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(4);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a13\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(5);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a14\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(6);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a15\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(7);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a20\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(8);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a21\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(9);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a22\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(10);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a23\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(11);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a24\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(12);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a25\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(13);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a26\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(14);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a27\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(15);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a28\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(16);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a29\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(17);

\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & \rgbmatrix_1|U_JTAGIFACE|dr1\(19) & \rgbmatrix_1|U_JTAGIFACE|dr1\(18) & \rgbmatrix_1|U_JTAGIFACE|dr1\(17) & 
\rgbmatrix_1|U_JTAGIFACE|dr1\(16) & \rgbmatrix_1|U_JTAGIFACE|dr1\(7) & \rgbmatrix_1|U_JTAGIFACE|dr1\(6) & \rgbmatrix_1|U_JTAGIFACE|dr1\(5) & \rgbmatrix_1|U_JTAGIFACE|dr1\(4) & \rgbmatrix_1|U_JTAGIFACE|dr1\(3) & 
\rgbmatrix_1|U_JTAGIFACE|dr1\(2) & \rgbmatrix_1|U_JTAGIFACE|dr1\(1) & \rgbmatrix_1|U_JTAGIFACE|dr1\(0));

\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\rgbmatrix_1|U_MEMORY|waddr\(8) & \rgbmatrix_1|U_MEMORY|waddr\(7) & \rgbmatrix_1|U_MEMORY|waddr\(6) & \rgbmatrix_1|U_MEMORY|waddr\(5) & 
\rgbmatrix_1|U_MEMORY|waddr\(4) & \rgbmatrix_1|U_MEMORY|waddr\(3) & \rgbmatrix_1|U_MEMORY|waddr\(2) & \rgbmatrix_1|U_MEMORY|waddr\(1) & \rgbmatrix_1|U_MEMORY|waddr\(0));

\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(8) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(7) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(6) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(5) & 
\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(4) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(3) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(2) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(1) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(0));

\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a1\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a2\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a3\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a4\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a5\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a6\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a7\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a16\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a17\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a18\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a19\ <= \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);

\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[47]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(47));

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\rgbmatrix_1|rst~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rgbmatrix_1|rst~combout\);

\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~q\);

\pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll1_1|altpll_component|auto_generated|wire_pll1_clk\(0));
\rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\ <= NOT \rgbmatrix_1|rst~clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\ <= NOT \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[47]~clkctrl_outclk\;
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(8) <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8);
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\ <= NOT \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\ <= NOT \rgbmatrix_1|U_LEDCTRL|state.READ_PIXEL_DATA~q\;
\rgbmatrix_1|U_LEDCTRL|ALT_INV_s_led_addr\(2) <= NOT \rgbmatrix_1|U_LEDCTRL|s_led_addr\(2);
\rgbmatrix_1|U_LEDCTRL|ALT_INV_s_led_addr\(0) <= NOT \rgbmatrix_1|U_LEDCTRL|s_led_addr\(0);
\rgbmatrix_1|U_LEDCTRL|ALT_INV_s_led_addr\(1) <= NOT \rgbmatrix_1|U_LEDCTRL|s_led_addr\(1);
\rgbmatrix_1|ALT_INV_rst~combout\ <= NOT \rgbmatrix_1|rst~combout\;

-- Location: FF_X15_Y28_N13
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[22]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: FF_X15_Y28_N11
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[21]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: FF_X15_Y28_N7
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[19]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: FF_X15_Y29_N31
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[15]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: FF_X15_Y29_N27
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[13]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: FF_X15_Y29_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[11]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: FF_X15_Y29_N13
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[6]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: FF_X15_Y29_N11
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: FF_X15_Y29_N7
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[3]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: FF_X15_Y29_N3
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X15_Y29_N2
\counter[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~31_combout\ = (counter(1) & (counter(0) $ (VCC))) # (!counter(1) & (counter(0) & VCC))
-- \counter[1]~32\ = CARRY((counter(1) & counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datad => VCC,
	combout => \counter[1]~31_combout\,
	cout => \counter[1]~32\);

-- Location: LCCOMB_X15_Y29_N6
\counter[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~35_combout\ = (counter(3) & (\counter[2]~34\ $ (GND))) # (!counter(3) & (!\counter[2]~34\ & VCC))
-- \counter[3]~36\ = CARRY((counter(3) & !\counter[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~34\,
	combout => \counter[3]~35_combout\,
	cout => \counter[3]~36\);

-- Location: LCCOMB_X15_Y29_N10
\counter[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~39_combout\ = (counter(5) & (\counter[4]~38\ $ (GND))) # (!counter(5) & (!\counter[4]~38\ & VCC))
-- \counter[5]~40\ = CARRY((counter(5) & !\counter[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~38\,
	combout => \counter[5]~39_combout\,
	cout => \counter[5]~40\);

-- Location: LCCOMB_X15_Y29_N12
\counter[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~41_combout\ = (counter(6) & (!\counter[5]~40\)) # (!counter(6) & ((\counter[5]~40\) # (GND)))
-- \counter[6]~42\ = CARRY((!\counter[5]~40\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~40\,
	combout => \counter[6]~41_combout\,
	cout => \counter[6]~42\);

-- Location: LCCOMB_X15_Y29_N22
\counter[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[11]~51_combout\ = (counter(11) & (\counter[10]~50\ $ (GND))) # (!counter(11) & (!\counter[10]~50\ & VCC))
-- \counter[11]~52\ = CARRY((counter(11) & !\counter[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~50\,
	combout => \counter[11]~51_combout\,
	cout => \counter[11]~52\);

-- Location: LCCOMB_X15_Y29_N26
\counter[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[13]~55_combout\ = (counter(13) & (\counter[12]~54\ $ (GND))) # (!counter(13) & (!\counter[12]~54\ & VCC))
-- \counter[13]~56\ = CARRY((counter(13) & !\counter[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~54\,
	combout => \counter[13]~55_combout\,
	cout => \counter[13]~56\);

-- Location: LCCOMB_X15_Y29_N30
\counter[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[15]~59_combout\ = (counter(15) & (\counter[14]~58\ $ (GND))) # (!counter(15) & (!\counter[14]~58\ & VCC))
-- \counter[15]~60\ = CARRY((counter(15) & !\counter[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \counter[14]~58\,
	combout => \counter[15]~59_combout\,
	cout => \counter[15]~60\);

-- Location: LCCOMB_X15_Y28_N6
\counter[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[19]~67_combout\ = (counter(19) & (\counter[18]~66\ $ (GND))) # (!counter(19) & (!\counter[18]~66\ & VCC))
-- \counter[19]~68\ = CARRY((counter(19) & !\counter[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \counter[18]~66\,
	combout => \counter[19]~67_combout\,
	cout => \counter[19]~68\);

-- Location: LCCOMB_X15_Y28_N10
\counter[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[21]~71_combout\ = (counter(21) & (\counter[20]~70\ $ (GND))) # (!counter(21) & (!\counter[20]~70\ & VCC))
-- \counter[21]~72\ = CARRY((counter(21) & !\counter[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \counter[20]~70\,
	combout => \counter[21]~71_combout\,
	cout => \counter[21]~72\);

-- Location: LCCOMB_X15_Y28_N12
\counter[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[22]~73_combout\ = (counter(22) & (!\counter[21]~72\)) # (!counter(22) & ((\counter[21]~72\) # (GND)))
-- \counter[22]~74\ = CARRY((!\counter[21]~72\) # (!counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datad => VCC,
	cin => \counter[21]~72\,
	combout => \counter[22]~73_combout\,
	cout => \counter[22]~74\);

-- Location: M9K_X33_Y23_N0
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "rgbmatrix:rgbmatrix_1|memory:U_MEMORY|altsyncram:ram_block_rtl_0|altsyncram_g3d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 48,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 48,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \rgbmatrix_1|ALT_INV_rst~combout\,
	portbre => VCC,
	clk0 => \rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\,
	clk1 => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \rgbmatrix_1|ALT_INV_rst~combout\,
	portadatain => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y25_N0
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "rgbmatrix:rgbmatrix_1|memory:U_MEMORY|altsyncram:ram_block_rtl_0|altsyncram_g3d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 48,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 48,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \rgbmatrix_1|ALT_INV_rst~combout\,
	portbre => VCC,
	clk0 => \rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\,
	clk1 => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \rgbmatrix_1|ALT_INV_rst~combout\,
	portadatain => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

-- Location: M9K_X33_Y24_N0
\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "rgbmatrix:rgbmatrix_1|memory:U_MEMORY|altsyncram:ram_block_rtl_0|altsyncram_g3d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 48,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 48,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \rgbmatrix_1|ALT_INV_rst~combout\,
	portbre => VCC,
	clk0 => \rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\,
	clk1 => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \rgbmatrix_1|ALT_INV_rst~combout\,
	portadatain => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X35_Y26_N13
\rgbmatrix_1|U_LEDCTRL|col_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|col_count[1]~9_combout\,
	asdata => \rgbmatrix_1|U_LEDCTRL|Selector5~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|col_count\(1));

-- Location: FF_X35_Y26_N11
\rgbmatrix_1|U_LEDCTRL|col_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|col_count[0]~7_combout\,
	asdata => \rgbmatrix_1|U_LEDCTRL|Selector6~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|col_count\(0));

-- Location: LCCOMB_X35_Y26_N10
\rgbmatrix_1|U_LEDCTRL|col_count[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|col_count[0]~7_combout\ = \rgbmatrix_1|U_LEDCTRL|col_count\(0) $ (VCC)
-- \rgbmatrix_1|U_LEDCTRL|col_count[0]~8\ = CARRY(\rgbmatrix_1|U_LEDCTRL|col_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|col_count\(0),
	datad => VCC,
	combout => \rgbmatrix_1|U_LEDCTRL|col_count[0]~7_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|col_count[0]~8\);

-- Location: LCCOMB_X35_Y26_N12
\rgbmatrix_1|U_LEDCTRL|col_count[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|col_count[1]~9_combout\ = (\rgbmatrix_1|U_LEDCTRL|col_count\(1) & (!\rgbmatrix_1|U_LEDCTRL|col_count[0]~8\)) # (!\rgbmatrix_1|U_LEDCTRL|col_count\(1) & ((\rgbmatrix_1|U_LEDCTRL|col_count[0]~8\) # (GND)))
-- \rgbmatrix_1|U_LEDCTRL|col_count[1]~10\ = CARRY((!\rgbmatrix_1|U_LEDCTRL|col_count[0]~8\) # (!\rgbmatrix_1|U_LEDCTRL|col_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|col_count\(1),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|col_count[0]~8\,
	combout => \rgbmatrix_1|U_LEDCTRL|col_count[1]~9_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|col_count[1]~10\);

-- Location: FF_X32_Y24_N27
\rgbmatrix_1|U_JTAGIFACE|dr0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr0~q\);

-- Location: LCCOMB_X32_Y24_N26
\rgbmatrix_1|U_JTAGIFACE|jtag_tdo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|jtag_tdo~0_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ & ((\rgbmatrix_1|U_JTAGIFACE|dr1\(0)))) # (!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ & (\rgbmatrix_1|U_JTAGIFACE|dr0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	datac => \rgbmatrix_1|U_JTAGIFACE|dr0~q\,
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(0),
	combout => \rgbmatrix_1|U_JTAGIFACE|jtag_tdo~0_combout\);

-- Location: FF_X25_Y33_N13
\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count[1]~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(1));

-- Location: LCCOMB_X25_Y33_N12
\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count[1]~0_combout\ = \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(1) $ (\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(1),
	datad => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(0),
	combout => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count[1]~0_combout\);

-- Location: LCCOMB_X35_Y26_N4
\rgbmatrix_1|U_LEDCTRL|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|Selector5~0_combout\ = (\rgbmatrix_1|U_LEDCTRL|col_count\(1) & !\rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|col_count\(1),
	datad => \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|Selector5~0_combout\);

-- Location: LCCOMB_X35_Y26_N30
\rgbmatrix_1|U_LEDCTRL|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|Selector6~0_combout\ = (\rgbmatrix_1|U_LEDCTRL|col_count\(0) & !\rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|col_count\(0),
	datad => \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|Selector6~0_combout\);

-- Location: JTAG_X1_Y17_N0
altera_internal_jtag : cycloneive_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: FF_X26_Y22_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1));

-- Location: FF_X28_Y21_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1));

-- Location: FF_X28_Y21_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2));

-- Location: FF_X28_Y21_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4));

-- Location: FF_X28_Y21_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0));

-- Location: FF_X28_Y21_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18_combout\,
	sclr => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~22_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X28_Y21_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~12\);

-- Location: LCCOMB_X28_Y21_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~13_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\);

-- Location: LCCOMB_X28_Y21_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[1]~14\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~16_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~17\);

-- Location: LCCOMB_X28_Y21_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[2]~17\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~18_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\);

-- Location: LCCOMB_X28_Y21_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[3]~19\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[4]~20_combout\);

-- Location: FF_X29_Y23_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~4_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\);

-- Location: FF_X29_Y23_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\);

-- Location: FF_X29_Y23_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~6_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\);

-- Location: FF_X27_Y23_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\);

-- Location: LCCOMB_X28_Y23_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_JTAGIFACE|jtag_tdo~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\);

-- Location: LCCOMB_X28_Y23_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\);

-- Location: FF_X29_Y23_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][1]~q\);

-- Location: LCCOMB_X29_Y23_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][1]~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~4_combout\);

-- Location: FF_X29_Y23_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~4_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][2]~q\);

-- Location: LCCOMB_X29_Y23_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][2]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~5_combout\);

-- Location: FF_X29_Y23_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][3]~q\);

-- Location: LCCOMB_X29_Y23_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][3]~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~6_combout\);

-- Location: LCCOMB_X27_Y23_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\);

-- Location: LCCOMB_X27_Y23_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\);

-- Location: LCCOMB_X27_Y23_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\);

-- Location: LCCOMB_X27_Y23_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\);

-- Location: LCCOMB_X27_Y23_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~2_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena~3_combout\);

-- Location: LCCOMB_X26_Y22_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~1_combout\);

-- Location: LCCOMB_X30_Y21_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~4_combout\);

-- Location: LCCOMB_X30_Y21_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~4_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~5_combout\);

-- Location: FF_X27_Y23_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0));

-- Location: FF_X25_Y22_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X28_Y22_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X27_Y22_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X29_Y23_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~3_combout\);

-- Location: LCCOMB_X29_Y23_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][2]~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~4_combout\);

-- Location: LCCOMB_X29_Y23_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][3]~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~5_combout\);

-- Location: LCCOMB_X27_Y23_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\);

-- Location: FF_X28_Y22_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\);

-- Location: LCCOMB_X27_Y23_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\);

-- Location: LCCOMB_X28_Y22_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\);

-- Location: LCCOMB_X27_Y23_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal3~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[0]~5_combout\);

-- Location: FF_X25_Y22_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X25_Y22_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~1_combout\);

-- Location: FF_X28_Y21_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X28_Y21_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X25_Y22_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X25_Y22_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~2_combout\);

-- Location: FF_X28_Y21_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X28_Y21_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X28_Y21_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~8_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X28_Y21_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~9_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X28_Y21_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~15_combout\);

-- Location: LCCOMB_X25_Y22_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~3_combout\);

-- Location: LCCOMB_X28_Y21_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\);

-- Location: LCCOMB_X28_Y21_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~11_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X28_Y21_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~22\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~15_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~22_combout\);

-- Location: LCCOMB_X28_Y22_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~23\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|word_counter[0]~23_combout\);

-- Location: CLKCTRL_G3
\altera_internal_jtag~TCKUTAPclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED(0));

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED(1));

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED(2));

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED(3));

-- Location: IOOBUF_X0_Y25_N9
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED(4));

-- Location: IOOBUF_X0_Y26_N16
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED(5));

-- Location: IOOBUF_X0_Y28_N9
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED(6));

-- Location: IOOBUF_X0_Y10_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LED(7));

-- Location: IOOBUF_X0_Y4_N16
\DRAM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(0));

-- Location: IOOBUF_X5_Y0_N9
\DRAM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(1));

-- Location: IOOBUF_X5_Y0_N2
\DRAM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(2));

-- Location: IOOBUF_X20_Y0_N9
\DRAM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(3));

-- Location: IOOBUF_X25_Y0_N16
\DRAM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(4));

-- Location: IOOBUF_X18_Y0_N23
\DRAM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(5));

-- Location: IOOBUF_X20_Y0_N2
\DRAM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(6));

-- Location: IOOBUF_X14_Y0_N2
\DRAM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(7));

-- Location: IOOBUF_X0_Y5_N23
\DRAM_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(8));

-- Location: IOOBUF_X0_Y4_N23
\DRAM_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(9));

-- Location: IOOBUF_X0_Y8_N23
\DRAM_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(10));

-- Location: IOOBUF_X0_Y7_N2
\DRAM_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(11));

-- Location: IOOBUF_X0_Y6_N16
\DRAM_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(12));

-- Location: IOOBUF_X11_Y0_N16
\DRAM_BA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_BA(0));

-- Location: IOOBUF_X7_Y0_N9
\DRAM_BA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_BA(1));

-- Location: IOOBUF_X0_Y11_N9
\DRAM_CAS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_CAS_N);

-- Location: IOOBUF_X16_Y0_N23
\DRAM_CKE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_CKE);

-- Location: IOOBUF_X5_Y0_N23
\DRAM_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_CLK);

-- Location: IOOBUF_X11_Y0_N23
\DRAM_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_CS_N);

-- Location: IOOBUF_X14_Y0_N9
\DRAM_DQM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_DQM(0));

-- Location: IOOBUF_X14_Y0_N16
\DRAM_DQM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_DQM(1));

-- Location: IOOBUF_X0_Y11_N2
\DRAM_RAS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_RAS_N);

-- Location: IOOBUF_X0_Y27_N2
\DRAM_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_WE_N);

-- Location: IOOBUF_X0_Y27_N9
\EPCS_ASDO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_EPCS_ASDO);

-- Location: IOOBUF_X0_Y22_N2
\EPCS_DCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_EPCS_DCLK);

-- Location: IOOBUF_X0_Y25_N2
\EPCS_NCSO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_EPCS_NCSO);

-- Location: IOOBUF_X0_Y24_N16
\G_SENSOR_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_G_SENSOR_CS_N);

-- Location: IOOBUF_X0_Y24_N23
\I2C_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_I2C_SCLK);

-- Location: IOOBUF_X0_Y23_N2
\I2C_SDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_I2C_SDAT);

-- Location: IOOBUF_X34_Y34_N9
\ADC_CS_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ADC_CS_N);

-- Location: IOOBUF_X34_Y34_N16
\ADC_SADDR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ADC_SADDR);

-- Location: IOOBUF_X45_Y34_N2
\ADC_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ADC_SCLK);

-- Location: IOOBUF_X0_Y23_N16
\DRAM_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(0));

-- Location: IOOBUF_X0_Y23_N23
\DRAM_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(1));

-- Location: IOOBUF_X18_Y0_N9
\DRAM_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(2));

-- Location: IOOBUF_X0_Y7_N9
\DRAM_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(3));

-- Location: IOOBUF_X0_Y12_N2
\DRAM_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(4));

-- Location: IOOBUF_X0_Y15_N2
\DRAM_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(5));

-- Location: IOOBUF_X0_Y15_N9
\DRAM_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(6));

-- Location: IOOBUF_X16_Y0_N16
\DRAM_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(7));

-- Location: IOOBUF_X5_Y0_N16
\DRAM_DQ[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(8));

-- Location: IOOBUF_X3_Y0_N2
\DRAM_DQ[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(9));

-- Location: IOOBUF_X1_Y0_N2
\DRAM_DQ[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(10));

-- Location: IOOBUF_X1_Y0_N9
\DRAM_DQ[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(11));

-- Location: IOOBUF_X14_Y0_N23
\DRAM_DQ[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(12));

-- Location: IOOBUF_X1_Y0_N16
\DRAM_DQ[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(13));

-- Location: IOOBUF_X1_Y0_N23
\DRAM_DQ[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(14));

-- Location: IOOBUF_X0_Y12_N9
\DRAM_DQ[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => DRAM_DQ(15));

-- Location: IOOBUF_X47_Y34_N23
\GPIO_2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_2(0));

-- Location: IOOBUF_X53_Y22_N2
\GPIO_2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_2(1));

-- Location: IOOBUF_X51_Y34_N2
\GPIO_2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_2(2));

-- Location: IOOBUF_X53_Y30_N9
\GPIO_2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_2(3));

-- Location: IOOBUF_X53_Y30_N2
\GPIO_2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_2(4));

-- Location: IOOBUF_X53_Y25_N2
\GPIO_2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_2(5));

-- Location: IOOBUF_X53_Y26_N23
\GPIO_2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_2(6));

-- Location: IOOBUF_X51_Y34_N9
\GPIO_2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_2(7));

-- Location: IOOBUF_X53_Y22_N9
\GPIO_2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_2(8));

-- Location: IOOBUF_X53_Y21_N16
\GPIO_2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_2(9));

-- Location: IOOBUF_X53_Y24_N23
\GPIO_2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_2(10));

-- Location: IOOBUF_X53_Y20_N23
\GPIO_2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_2(11));

-- Location: IOOBUF_X53_Y20_N16
\GPIO_2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_2(12));

-- Location: IOOBUF_X1_Y34_N9
\GPIO_0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(0));

-- Location: IOOBUF_X1_Y34_N2
\GPIO_0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(1));

-- Location: IOOBUF_X7_Y34_N9
\GPIO_0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(2));

-- Location: IOOBUF_X7_Y34_N16
\GPIO_0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(3));

-- Location: IOOBUF_X3_Y34_N2
\GPIO_0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(4));

-- Location: IOOBUF_X7_Y34_N2
\GPIO_0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(5));

-- Location: IOOBUF_X9_Y34_N23
\GPIO_0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(6));

-- Location: IOOBUF_X11_Y34_N2
\GPIO_0[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(7));

-- Location: IOOBUF_X14_Y34_N23
\GPIO_0[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(8));

-- Location: IOOBUF_X5_Y34_N16
\GPIO_0[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(9));

-- Location: IOOBUF_X16_Y34_N9
\GPIO_0[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(10));

-- Location: IOOBUF_X16_Y34_N2
\GPIO_0[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(11));

-- Location: IOOBUF_X18_Y34_N2
\GPIO_0[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(12));

-- Location: IOOBUF_X9_Y34_N9
\GPIO_0[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(13));

-- Location: IOOBUF_X20_Y34_N23
\GPIO_0[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(14));

-- Location: IOOBUF_X18_Y34_N23
\GPIO_0[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(15));

-- Location: IOOBUF_X23_Y34_N16
\GPIO_0[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(16));

-- Location: IOOBUF_X14_Y34_N16
\GPIO_0[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(17));

-- Location: IOOBUF_X16_Y34_N16
\GPIO_0[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(18));

-- Location: IOOBUF_X23_Y34_N23
\GPIO_0[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(19));

-- Location: IOOBUF_X20_Y34_N9
\GPIO_0[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(20));

-- Location: IOOBUF_X20_Y34_N16
\GPIO_0[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_0(21));

-- Location: IOOBUF_X53_Y21_N23
\GPIO_1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(0));

-- Location: IOOBUF_X45_Y0_N16
\GPIO_1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(1));

-- Location: IOOBUF_X45_Y0_N23
\GPIO_1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(2));

-- Location: IOOBUF_X40_Y0_N16
\GPIO_1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(3));

-- Location: IOOBUF_X40_Y0_N23
\GPIO_1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(4));

-- Location: IOOBUF_X36_Y0_N9
\GPIO_1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(5));

-- Location: IOOBUF_X36_Y0_N16
\GPIO_1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(6));

-- Location: IOOBUF_X36_Y0_N23
\GPIO_1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(7));

-- Location: IOOBUF_X34_Y0_N16
\GPIO_1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(8));

-- Location: IOOBUF_X34_Y0_N2
\GPIO_1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(9));

-- Location: IOOBUF_X38_Y0_N2
\GPIO_1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(10));

-- Location: IOOBUF_X34_Y0_N23
\GPIO_1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(11));

-- Location: IOOBUF_X47_Y0_N23
\GPIO_1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(12));

-- Location: IOOBUF_X38_Y0_N9
\GPIO_1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(13));

-- Location: IOOBUF_X29_Y0_N2
\GPIO_1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(14));

-- Location: IOOBUF_X43_Y0_N16
\GPIO_1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(15));

-- Location: IOOBUF_X53_Y11_N9
\GPIO_1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(16));

-- Location: IOOBUF_X53_Y12_N2
\GPIO_1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(17));

-- Location: IOOBUF_X53_Y8_N23
\GPIO_1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(18));

-- Location: IOOBUF_X53_Y11_N2
\GPIO_1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(19));

-- Location: IOOBUF_X53_Y6_N16
\GPIO_1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(20));

-- Location: IOOBUF_X53_Y7_N9
\GPIO_1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(21));

-- Location: IOOBUF_X49_Y0_N2
\GPIO_1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(22));

-- Location: IOOBUF_X53_Y9_N23
\GPIO_1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(23));

-- Location: IOOBUF_X53_Y9_N16
\GPIO_1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(24));

-- Location: IOOBUF_X49_Y0_N9
\GPIO_1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(25));

-- Location: IOOBUF_X53_Y9_N9
\GPIO_1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(26));

-- Location: IOOBUF_X53_Y6_N23
\GPIO_1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(27));

-- Location: IOOBUF_X43_Y0_N23
\GPIO_1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(28));

-- Location: IOOBUF_X53_Y10_N16
\GPIO_1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(29));

-- Location: IOOBUF_X53_Y14_N9
\GPIO_1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(30));

-- Location: IOOBUF_X53_Y13_N9
\GPIO_1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(31));

-- Location: IOOBUF_X53_Y16_N9
\GPIO_1[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(32));

-- Location: IOOBUF_X53_Y15_N9
\GPIO_1[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => GPIO_1(33));

-- Location: IOOBUF_X34_Y34_N2
\GPIO_0[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgbmatrix_1|U_LEDCTRL|s_rgb1\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO_0(22));

-- Location: IOOBUF_X29_Y34_N16
\GPIO_0[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgbmatrix_1|U_LEDCTRL|s_rgb1\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO_0(23));

-- Location: IOOBUF_X31_Y34_N2
\GPIO_0[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgbmatrix_1|U_LEDCTRL|s_rgb1\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO_0(24));

-- Location: IOOBUF_X31_Y34_N9
\GPIO_0[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgbmatrix_1|U_LEDCTRL|s_rgb2\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO_0(25));

-- Location: IOOBUF_X45_Y34_N9
\GPIO_0[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgbmatrix_1|U_LEDCTRL|s_rgb2\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO_0(26));

-- Location: IOOBUF_X45_Y34_N16
\GPIO_0[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgbmatrix_1|U_LEDCTRL|s_rgb2\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO_0(27));

-- Location: IOOBUF_X38_Y34_N2
\GPIO_0[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgbmatrix_1|U_LEDCTRL|ALT_INV_s_led_addr\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO_0(28));

-- Location: IOOBUF_X40_Y34_N9
\GPIO_0[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgbmatrix_1|U_LEDCTRL|ALT_INV_s_led_addr\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO_0(29));

-- Location: IOOBUF_X43_Y34_N16
\GPIO_0[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgbmatrix_1|U_LEDCTRL|ALT_INV_s_led_addr\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO_0(30));

-- Location: IOOBUF_X51_Y34_N16
\GPIO_0[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgbmatrix_1|U_LEDCTRL|state.LATCH~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO_0(31));

-- Location: IOOBUF_X51_Y34_N23
\GPIO_0[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO_0(32));

-- Location: IOOBUF_X43_Y34_N23
\GPIO_0[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rgbmatrix_1|U_LEDCTRL|s_oe~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => GPIO_0(33));

-- Location: IOOBUF_X0_Y17_N15
\altera_reserved_tdo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: LCCOMB_X25_Y33_N0
\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count~1_combout\ = (!\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(0) & ((\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(1)) # (!\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(1),
	datab => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(2),
	datac => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(0),
	combout => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count~1_combout\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_4
\pll1_1|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 6,
	c0_initial => 1,
	c0_low => 6,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 4936,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \pll1_1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll1_1|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \pll1_1|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \pll1_1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll1_1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: LCCOMB_X29_Y23_N8
\rgbmatrix_1|rst\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|rst~combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\) # (!\pll1_1|altpll_component|auto_generated|wire_pll1_locked\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][1]~q\,
	datad => \pll1_1|altpll_component|auto_generated|wire_pll1_locked\,
	combout => \rgbmatrix_1|rst~combout\);

-- Location: CLKCTRL_G14
\rgbmatrix_1|rst~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rgbmatrix_1|rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rgbmatrix_1|rst~clkctrl_outclk\);

-- Location: FF_X25_Y33_N1
\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count~1_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(0));

-- Location: LCCOMB_X25_Y33_N4
\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count~2_combout\ = (\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(1) & (\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(2) $ (\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(0)))) # (!\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(1) & 
-- (\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(2) & \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(1),
	datac => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(2),
	datad => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(0),
	combout => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count~2_combout\);

-- Location: FF_X25_Y33_N5
\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count~2_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(2));

-- Location: LCCOMB_X25_Y33_N10
\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|LessThan0~0_combout\ = \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(1) $ (((\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(2) & \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(1),
	datac => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(2),
	datad => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|count\(0),
	combout => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|LessThan0~0_combout\);

-- Location: FF_X25_Y33_N11
\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|LessThan0~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~q\);

-- Location: CLKCTRL_G13
\rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y24_N4
\rgbmatrix_1|U_LEDCTRL|bpp_count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[0]~8_combout\ = \rgbmatrix_1|U_LEDCTRL|bpp_count\(0) $ (VCC)
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[0]~9\ = CARRY(\rgbmatrix_1|U_LEDCTRL|bpp_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(0),
	datad => VCC,
	combout => \rgbmatrix_1|U_LEDCTRL|bpp_count[0]~8_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|bpp_count[0]~9\);

-- Location: LCCOMB_X35_Y24_N10
\rgbmatrix_1|U_LEDCTRL|bpp_count[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[3]~14_combout\ = (\rgbmatrix_1|U_LEDCTRL|bpp_count\(3) & (!\rgbmatrix_1|U_LEDCTRL|bpp_count[2]~13\)) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(3) & ((\rgbmatrix_1|U_LEDCTRL|bpp_count[2]~13\) # (GND)))
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[3]~15\ = CARRY((!\rgbmatrix_1|U_LEDCTRL|bpp_count[2]~13\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(3),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|bpp_count[2]~13\,
	combout => \rgbmatrix_1|U_LEDCTRL|bpp_count[3]~14_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|bpp_count[3]~15\);

-- Location: LCCOMB_X35_Y26_N14
\rgbmatrix_1|U_LEDCTRL|col_count[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|col_count[2]~11_combout\ = (\rgbmatrix_1|U_LEDCTRL|col_count\(2) & (\rgbmatrix_1|U_LEDCTRL|col_count[1]~10\ $ (GND))) # (!\rgbmatrix_1|U_LEDCTRL|col_count\(2) & (!\rgbmatrix_1|U_LEDCTRL|col_count[1]~10\ & VCC))
-- \rgbmatrix_1|U_LEDCTRL|col_count[2]~12\ = CARRY((\rgbmatrix_1|U_LEDCTRL|col_count\(2) & !\rgbmatrix_1|U_LEDCTRL|col_count[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|col_count\(2),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|col_count[1]~10\,
	combout => \rgbmatrix_1|U_LEDCTRL|col_count[2]~11_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|col_count[2]~12\);

-- Location: LCCOMB_X35_Y26_N26
\rgbmatrix_1|U_LEDCTRL|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|Selector4~0_combout\ = (\rgbmatrix_1|U_LEDCTRL|col_count\(2) & !\rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgbmatrix_1|U_LEDCTRL|col_count\(2),
	datad => \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|Selector4~0_combout\);

-- Location: LCCOMB_X34_Y26_N22
\rgbmatrix_1|U_LEDCTRL|state.LATCH~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|state.LATCH~feeder_combout\ = \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|state.LATCH~feeder_combout\);

-- Location: FF_X34_Y26_N23
\rgbmatrix_1|U_LEDCTRL|state.LATCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|state.LATCH~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|state.LATCH~q\);

-- Location: LCCOMB_X34_Y26_N18
\rgbmatrix_1|U_LEDCTRL|state.INIT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|state.INIT~0_combout\ = !\rgbmatrix_1|U_LEDCTRL|state.LATCH~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgbmatrix_1|U_LEDCTRL|state.LATCH~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|state.INIT~0_combout\);

-- Location: FF_X34_Y26_N19
\rgbmatrix_1|U_LEDCTRL|state.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|state.INIT~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|state.INIT~q\);

-- Location: LCCOMB_X35_Y26_N24
\rgbmatrix_1|U_LEDCTRL|next_state.INCR_RAM_ADDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|next_state.INCR_RAM_ADDR~0_combout\ = (!\rgbmatrix_1|U_LEDCTRL|col_count\(6) & \rgbmatrix_1|U_LEDCTRL|state.READ_PIXEL_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgbmatrix_1|U_LEDCTRL|col_count\(6),
	datad => \rgbmatrix_1|U_LEDCTRL|state.READ_PIXEL_DATA~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|next_state.INCR_RAM_ADDR~0_combout\);

-- Location: FF_X35_Y26_N25
\rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|next_state.INCR_RAM_ADDR~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\);

-- Location: LCCOMB_X34_Y26_N24
\rgbmatrix_1|U_LEDCTRL|next_state.READ_PIXEL_DATA\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|next_state.READ_PIXEL_DATA~combout\ = (\rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\) # (!\rgbmatrix_1|U_LEDCTRL|state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|state.INIT~q\,
	datad => \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|next_state.READ_PIXEL_DATA~combout\);

-- Location: FF_X34_Y26_N25
\rgbmatrix_1|U_LEDCTRL|state.READ_PIXEL_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|next_state.READ_PIXEL_DATA~combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|state.READ_PIXEL_DATA~q\);

-- Location: FF_X35_Y26_N15
\rgbmatrix_1|U_LEDCTRL|col_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|col_count[2]~11_combout\,
	asdata => \rgbmatrix_1|U_LEDCTRL|Selector4~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|col_count\(2));

-- Location: LCCOMB_X35_Y26_N16
\rgbmatrix_1|U_LEDCTRL|col_count[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|col_count[3]~13_combout\ = (\rgbmatrix_1|U_LEDCTRL|col_count\(3) & (!\rgbmatrix_1|U_LEDCTRL|col_count[2]~12\)) # (!\rgbmatrix_1|U_LEDCTRL|col_count\(3) & ((\rgbmatrix_1|U_LEDCTRL|col_count[2]~12\) # (GND)))
-- \rgbmatrix_1|U_LEDCTRL|col_count[3]~14\ = CARRY((!\rgbmatrix_1|U_LEDCTRL|col_count[2]~12\) # (!\rgbmatrix_1|U_LEDCTRL|col_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|col_count\(3),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|col_count[2]~12\,
	combout => \rgbmatrix_1|U_LEDCTRL|col_count[3]~13_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|col_count[3]~14\);

-- Location: LCCOMB_X35_Y26_N8
\rgbmatrix_1|U_LEDCTRL|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|Selector3~0_combout\ = (\rgbmatrix_1|U_LEDCTRL|col_count\(3) & !\rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|col_count\(3),
	datac => \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|Selector3~0_combout\);

-- Location: FF_X35_Y26_N17
\rgbmatrix_1|U_LEDCTRL|col_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|col_count[3]~13_combout\,
	asdata => \rgbmatrix_1|U_LEDCTRL|Selector3~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|col_count\(3));

-- Location: LCCOMB_X35_Y26_N18
\rgbmatrix_1|U_LEDCTRL|col_count[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|col_count[4]~15_combout\ = (\rgbmatrix_1|U_LEDCTRL|col_count\(4) & (\rgbmatrix_1|U_LEDCTRL|col_count[3]~14\ $ (GND))) # (!\rgbmatrix_1|U_LEDCTRL|col_count\(4) & (!\rgbmatrix_1|U_LEDCTRL|col_count[3]~14\ & VCC))
-- \rgbmatrix_1|U_LEDCTRL|col_count[4]~16\ = CARRY((\rgbmatrix_1|U_LEDCTRL|col_count\(4) & !\rgbmatrix_1|U_LEDCTRL|col_count[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|col_count\(4),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|col_count[3]~14\,
	combout => \rgbmatrix_1|U_LEDCTRL|col_count[4]~15_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|col_count[4]~16\);

-- Location: LCCOMB_X35_Y26_N0
\rgbmatrix_1|U_LEDCTRL|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|Selector2~0_combout\ = (\rgbmatrix_1|U_LEDCTRL|col_count\(4) & !\rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|col_count\(4),
	datad => \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|Selector2~0_combout\);

-- Location: FF_X35_Y26_N19
\rgbmatrix_1|U_LEDCTRL|col_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|col_count[4]~15_combout\,
	asdata => \rgbmatrix_1|U_LEDCTRL|Selector2~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|col_count\(4));

-- Location: LCCOMB_X35_Y26_N20
\rgbmatrix_1|U_LEDCTRL|col_count[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|col_count[5]~17_combout\ = (\rgbmatrix_1|U_LEDCTRL|col_count\(5) & (!\rgbmatrix_1|U_LEDCTRL|col_count[4]~16\)) # (!\rgbmatrix_1|U_LEDCTRL|col_count\(5) & ((\rgbmatrix_1|U_LEDCTRL|col_count[4]~16\) # (GND)))
-- \rgbmatrix_1|U_LEDCTRL|col_count[5]~18\ = CARRY((!\rgbmatrix_1|U_LEDCTRL|col_count[4]~16\) # (!\rgbmatrix_1|U_LEDCTRL|col_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|col_count\(5),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|col_count[4]~16\,
	combout => \rgbmatrix_1|U_LEDCTRL|col_count[5]~17_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|col_count[5]~18\);

-- Location: LCCOMB_X35_Y26_N6
\rgbmatrix_1|U_LEDCTRL|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|Selector1~0_combout\ = (\rgbmatrix_1|U_LEDCTRL|col_count\(5) & !\rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|col_count\(5),
	datad => \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|Selector1~0_combout\);

-- Location: FF_X35_Y26_N21
\rgbmatrix_1|U_LEDCTRL|col_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|col_count[5]~17_combout\,
	asdata => \rgbmatrix_1|U_LEDCTRL|Selector1~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|col_count\(5));

-- Location: LCCOMB_X35_Y26_N22
\rgbmatrix_1|U_LEDCTRL|col_count[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|col_count[6]~19_combout\ = \rgbmatrix_1|U_LEDCTRL|col_count\(6) $ (!\rgbmatrix_1|U_LEDCTRL|col_count[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|col_count\(6),
	cin => \rgbmatrix_1|U_LEDCTRL|col_count[5]~18\,
	combout => \rgbmatrix_1|U_LEDCTRL|col_count[6]~19_combout\);

-- Location: LCCOMB_X35_Y26_N28
\rgbmatrix_1|U_LEDCTRL|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|Selector0~0_combout\ = (\rgbmatrix_1|U_LEDCTRL|col_count\(6) & !\rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgbmatrix_1|U_LEDCTRL|col_count\(6),
	datad => \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|Selector0~0_combout\);

-- Location: FF_X35_Y26_N23
\rgbmatrix_1|U_LEDCTRL|col_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|col_count[6]~19_combout\,
	asdata => \rgbmatrix_1|U_LEDCTRL|Selector0~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|col_count\(6));

-- Location: LCCOMB_X35_Y26_N2
\rgbmatrix_1|U_LEDCTRL|next_state.INCR_LED_ADDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|next_state.INCR_LED_ADDR~0_combout\ = (\rgbmatrix_1|U_LEDCTRL|col_count\(6) & \rgbmatrix_1|U_LEDCTRL|state.READ_PIXEL_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgbmatrix_1|U_LEDCTRL|col_count\(6),
	datad => \rgbmatrix_1|U_LEDCTRL|state.READ_PIXEL_DATA~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|next_state.INCR_LED_ADDR~0_combout\);

-- Location: FF_X35_Y26_N3
\rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|next_state.INCR_LED_ADDR~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\);

-- Location: LCCOMB_X34_Y26_N0
\rgbmatrix_1|U_LEDCTRL|s_led_addr[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|s_led_addr[1]~0_combout\ = \rgbmatrix_1|U_LEDCTRL|s_led_addr\(1) $ (((!\rgbmatrix_1|U_LEDCTRL|s_led_addr\(0) & \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|s_led_addr\(0),
	datac => \rgbmatrix_1|U_LEDCTRL|s_led_addr\(1),
	datad => \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|s_led_addr[1]~0_combout\);

-- Location: FF_X34_Y26_N1
\rgbmatrix_1|U_LEDCTRL|s_led_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|s_led_addr[1]~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_led_addr\(1));

-- Location: LCCOMB_X34_Y26_N20
\rgbmatrix_1|U_LEDCTRL|s_led_addr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|s_led_addr[2]~2_combout\ = \rgbmatrix_1|U_LEDCTRL|s_led_addr\(2) $ (((!\rgbmatrix_1|U_LEDCTRL|s_led_addr\(0) & (!\rgbmatrix_1|U_LEDCTRL|s_led_addr\(1) & \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|s_led_addr\(0),
	datab => \rgbmatrix_1|U_LEDCTRL|s_led_addr\(1),
	datac => \rgbmatrix_1|U_LEDCTRL|s_led_addr\(2),
	datad => \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|s_led_addr[2]~2_combout\);

-- Location: FF_X34_Y26_N21
\rgbmatrix_1|U_LEDCTRL|s_led_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|s_led_addr[2]~2_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_led_addr\(2));

-- Location: LCCOMB_X34_Y26_N26
\rgbmatrix_1|U_LEDCTRL|s_led_addr[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|s_led_addr[0]~1_combout\ = \rgbmatrix_1|U_LEDCTRL|s_led_addr\(0) $ (\rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgbmatrix_1|U_LEDCTRL|s_led_addr\(0),
	datad => \rgbmatrix_1|U_LEDCTRL|state.INCR_LED_ADDR~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|s_led_addr[0]~1_combout\);

-- Location: FF_X34_Y26_N27
\rgbmatrix_1|U_LEDCTRL|s_led_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|s_led_addr[0]~1_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_led_addr\(0));

-- Location: LCCOMB_X34_Y26_N28
\rgbmatrix_1|U_LEDCTRL|bpp_count[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~24_combout\ = (!\rgbmatrix_1|U_LEDCTRL|s_led_addr\(1) & (!\rgbmatrix_1|U_LEDCTRL|s_led_addr\(2) & (!\rgbmatrix_1|U_LEDCTRL|s_led_addr\(0) & !\rgbmatrix_1|U_LEDCTRL|state.INIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|s_led_addr\(1),
	datab => \rgbmatrix_1|U_LEDCTRL|s_led_addr\(2),
	datac => \rgbmatrix_1|U_LEDCTRL|s_led_addr\(0),
	datad => \rgbmatrix_1|U_LEDCTRL|state.INIT~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~24_combout\);

-- Location: FF_X35_Y24_N11
\rgbmatrix_1|U_LEDCTRL|bpp_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|bpp_count[3]~14_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|Equal1~2_combout\,
	ena => \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|bpp_count\(3));

-- Location: LCCOMB_X35_Y24_N2
\rgbmatrix_1|U_LEDCTRL|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|Equal1~1_combout\ = (\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(5) & \rgbmatrix_1|U_LEDCTRL|bpp_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(4),
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(6),
	datac => \rgbmatrix_1|U_LEDCTRL|bpp_count\(5),
	datad => \rgbmatrix_1|U_LEDCTRL|bpp_count\(3),
	combout => \rgbmatrix_1|U_LEDCTRL|Equal1~1_combout\);

-- Location: LCCOMB_X35_Y24_N6
\rgbmatrix_1|U_LEDCTRL|bpp_count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[1]~10_combout\ = (\rgbmatrix_1|U_LEDCTRL|bpp_count\(1) & (!\rgbmatrix_1|U_LEDCTRL|bpp_count[0]~9\)) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(1) & ((\rgbmatrix_1|U_LEDCTRL|bpp_count[0]~9\) # (GND)))
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[1]~11\ = CARRY((!\rgbmatrix_1|U_LEDCTRL|bpp_count[0]~9\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(1),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|bpp_count[0]~9\,
	combout => \rgbmatrix_1|U_LEDCTRL|bpp_count[1]~10_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|bpp_count[1]~11\);

-- Location: FF_X35_Y24_N7
\rgbmatrix_1|U_LEDCTRL|bpp_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|bpp_count[1]~10_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|Equal1~2_combout\,
	ena => \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|bpp_count\(1));

-- Location: LCCOMB_X35_Y24_N0
\rgbmatrix_1|U_LEDCTRL|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|Equal1~0_combout\ = (\rgbmatrix_1|U_LEDCTRL|bpp_count\(2) & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(7) & (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(0) & \rgbmatrix_1|U_LEDCTRL|bpp_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(2),
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(7),
	datac => \rgbmatrix_1|U_LEDCTRL|bpp_count\(0),
	datad => \rgbmatrix_1|U_LEDCTRL|bpp_count\(1),
	combout => \rgbmatrix_1|U_LEDCTRL|Equal1~0_combout\);

-- Location: LCCOMB_X35_Y24_N28
\rgbmatrix_1|U_LEDCTRL|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|Equal1~2_combout\ = (\rgbmatrix_1|U_LEDCTRL|Equal1~1_combout\ & \rgbmatrix_1|U_LEDCTRL|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|Equal1~1_combout\,
	datad => \rgbmatrix_1|U_LEDCTRL|Equal1~0_combout\,
	combout => \rgbmatrix_1|U_LEDCTRL|Equal1~2_combout\);

-- Location: FF_X35_Y24_N5
\rgbmatrix_1|U_LEDCTRL|bpp_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|bpp_count[0]~8_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|Equal1~2_combout\,
	ena => \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|bpp_count\(0));

-- Location: LCCOMB_X35_Y24_N8
\rgbmatrix_1|U_LEDCTRL|bpp_count[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[2]~12_combout\ = (\rgbmatrix_1|U_LEDCTRL|bpp_count\(2) & (\rgbmatrix_1|U_LEDCTRL|bpp_count[1]~11\ $ (GND))) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(2) & (!\rgbmatrix_1|U_LEDCTRL|bpp_count[1]~11\ & VCC))
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[2]~13\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(2) & !\rgbmatrix_1|U_LEDCTRL|bpp_count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(2),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|bpp_count[1]~11\,
	combout => \rgbmatrix_1|U_LEDCTRL|bpp_count[2]~12_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|bpp_count[2]~13\);

-- Location: FF_X35_Y24_N9
\rgbmatrix_1|U_LEDCTRL|bpp_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|bpp_count[2]~12_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|Equal1~2_combout\,
	ena => \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|bpp_count\(2));

-- Location: LCCOMB_X35_Y24_N12
\rgbmatrix_1|U_LEDCTRL|bpp_count[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[4]~16_combout\ = (\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & (\rgbmatrix_1|U_LEDCTRL|bpp_count[3]~15\ $ (GND))) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & (!\rgbmatrix_1|U_LEDCTRL|bpp_count[3]~15\ & VCC))
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[4]~17\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & !\rgbmatrix_1|U_LEDCTRL|bpp_count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(4),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|bpp_count[3]~15\,
	combout => \rgbmatrix_1|U_LEDCTRL|bpp_count[4]~16_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|bpp_count[4]~17\);

-- Location: LCCOMB_X35_Y24_N14
\rgbmatrix_1|U_LEDCTRL|bpp_count[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[5]~18_combout\ = (\rgbmatrix_1|U_LEDCTRL|bpp_count\(5) & (!\rgbmatrix_1|U_LEDCTRL|bpp_count[4]~17\)) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(5) & ((\rgbmatrix_1|U_LEDCTRL|bpp_count[4]~17\) # (GND)))
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[5]~19\ = CARRY((!\rgbmatrix_1|U_LEDCTRL|bpp_count[4]~17\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(5),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|bpp_count[4]~17\,
	combout => \rgbmatrix_1|U_LEDCTRL|bpp_count[5]~18_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|bpp_count[5]~19\);

-- Location: FF_X35_Y24_N15
\rgbmatrix_1|U_LEDCTRL|bpp_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|bpp_count[5]~18_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|Equal1~2_combout\,
	ena => \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|bpp_count\(5));

-- Location: LCCOMB_X35_Y24_N16
\rgbmatrix_1|U_LEDCTRL|bpp_count[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[6]~20_combout\ = (\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & (\rgbmatrix_1|U_LEDCTRL|bpp_count[5]~19\ $ (GND))) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & (!\rgbmatrix_1|U_LEDCTRL|bpp_count[5]~19\ & VCC))
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[6]~21\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & !\rgbmatrix_1|U_LEDCTRL|bpp_count[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(6),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|bpp_count[5]~19\,
	combout => \rgbmatrix_1|U_LEDCTRL|bpp_count[6]~20_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|bpp_count[6]~21\);

-- Location: FF_X35_Y24_N17
\rgbmatrix_1|U_LEDCTRL|bpp_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|bpp_count[6]~20_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|Equal1~2_combout\,
	ena => \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|bpp_count\(6));

-- Location: LCCOMB_X35_Y24_N18
\rgbmatrix_1|U_LEDCTRL|bpp_count[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~22_combout\ = \rgbmatrix_1|U_LEDCTRL|bpp_count[6]~21\ $ (\rgbmatrix_1|U_LEDCTRL|bpp_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_LEDCTRL|bpp_count\(7),
	cin => \rgbmatrix_1|U_LEDCTRL|bpp_count[6]~21\,
	combout => \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~22_combout\);

-- Location: FF_X35_Y24_N19
\rgbmatrix_1|U_LEDCTRL|bpp_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~22_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|Equal1~2_combout\,
	ena => \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|bpp_count\(7));

-- Location: LCCOMB_X27_Y23_N4
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[46]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[46]~1_combout\ = !\rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(47),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[46]~1_combout\);

-- Location: LCCOMB_X31_Y23_N30
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[46]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[46]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[46]~1_combout\,
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[46]~feeder_combout\);

-- Location: IOIBUF_X0_Y19_N22
\altera_reserved_tck~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y20_N22
\altera_reserved_tdi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: LCCOMB_X28_Y22_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\);

-- Location: FF_X28_Y22_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5));

-- Location: LCCOMB_X28_Y22_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\);

-- Location: FF_X28_Y22_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6));

-- Location: LCCOMB_X28_Y22_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(6),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\);

-- Location: FF_X28_Y22_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7));

-- Location: LCCOMB_X28_Y22_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(5),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\);

-- Location: FF_X28_Y22_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8));

-- Location: LCCOMB_X27_Y22_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\);

-- Location: FF_X27_Y22_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9));

-- Location: LCCOMB_X27_Y22_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\);

-- Location: FF_X27_Y22_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10));

-- Location: LCCOMB_X26_Y22_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\);

-- Location: FF_X26_Y22_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~9_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11));

-- Location: LCCOMB_X27_Y22_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(10),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\);

-- Location: FF_X27_Y22_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12));

-- Location: LCCOMB_X26_Y22_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\);

-- Location: FF_X26_Y22_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~11_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13));

-- Location: LCCOMB_X27_Y22_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(13),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\);

-- Location: FF_X27_Y22_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14));

-- Location: LCCOMB_X28_Y22_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(14),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(12),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\);

-- Location: FF_X28_Y22_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15));

-- Location: LCCOMB_X27_Y22_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(15),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\);

-- Location: FF_X27_Y22_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2));

-- Location: LCCOMB_X28_Y22_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\);

-- Location: FF_X28_Y22_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3));

-- Location: LCCOMB_X28_Y22_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(7),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\);

-- Location: FF_X28_Y22_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4));

-- Location: LCCOMB_X27_Y22_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\);

-- Location: LCCOMB_X30_Y22_N0
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X28_Y23_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\);

-- Location: LCCOMB_X27_Y23_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X27_Y23_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~7_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\);

-- Location: FF_X27_Y23_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[3]~8_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3));

-- Location: LCCOMB_X27_Y23_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\);

-- Location: LCCOMB_X27_Y23_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\);

-- Location: FF_X28_Y23_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~3_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2));

-- Location: LCCOMB_X28_Y23_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\);

-- Location: FF_X28_Y23_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1));

-- Location: LCCOMB_X27_Y22_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\);

-- Location: LCCOMB_X27_Y22_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2_combout\);

-- Location: FF_X27_Y22_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[1]~2_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1));

-- Location: LCCOMB_X28_Y23_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \~GND~combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\);

-- Location: FF_X28_Y23_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0));

-- Location: LCCOMB_X29_Y22_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\);

-- Location: LCCOMB_X29_Y22_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|reset_ena_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~3_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~4_combout\);

-- Location: FF_X29_Y22_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg[2]~4_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2));

-- Location: LCCOMB_X27_Y22_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\);

-- Location: FF_X27_Y22_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\);

-- Location: FF_X27_Y22_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg~4_combout\,
	asdata => \~GND~combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4));

-- Location: LCCOMB_X28_Y21_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~7_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X27_Y22_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X27_Y22_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X27_Y21_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X27_Y21_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X27_Y21_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X27_Y21_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X27_Y22_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|tms_cnt\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\);

-- Location: FF_X27_Y22_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0));

-- Location: FF_X25_Y22_N29
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5));

-- Location: LCCOMB_X25_Y22_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X25_Y22_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4));

-- Location: FF_X25_Y22_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3));

-- Location: LCCOMB_X25_Y22_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X25_Y22_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2));

-- Location: LCCOMB_X25_Y22_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X25_Y22_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1));

-- Location: LCCOMB_X25_Y22_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X25_Y22_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0));

-- Location: LCCOMB_X25_Y22_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(5),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y22_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\);

-- Location: FF_X28_Y22_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~2_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X28_Y22_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~13_combout\);

-- Location: FF_X28_Y21_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X28_Y21_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\);

-- Location: FF_X28_Y21_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR~6_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X25_Y22_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\);

-- Location: LCCOMB_X28_Y23_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\);

-- Location: FF_X25_Y22_N1
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X28_Y23_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg|WORD_SR\(0),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_minor_ver_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\);

-- Location: LCCOMB_X27_Y22_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\);

-- Location: FF_X27_Y22_N25
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\);

-- Location: LCCOMB_X28_Y23_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~1_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~0_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo_bypass_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\);

-- Location: LCCOMB_X28_Y23_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~3_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\);

-- Location: LCCOMB_X30_Y23_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X28_Y23_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X28_Y23_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X30_Y23_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3));

-- Location: FF_X30_Y23_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X30_Y23_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X30_Y23_N7
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X30_Y23_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X30_Y23_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X30_Y23_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y23_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\);

-- Location: FF_X30_Y23_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0));

-- Location: LCCOMB_X29_Y21_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datad => VCC,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~8\);

-- Location: LCCOMB_X29_Y21_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~8\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\);

-- Location: LCCOMB_X29_Y21_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~10\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\);

-- Location: LCCOMB_X28_Y22_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\);

-- Location: FF_X29_Y21_N11
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[0]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0));

-- Location: LCCOMB_X29_Y21_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\);

-- Location: LCCOMB_X29_Y21_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(8),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~15_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\);

-- Location: FF_X29_Y21_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2));

-- Location: LCCOMB_X29_Y21_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => VCC,
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[2]~12\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\,
	cout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\);

-- Location: FF_X29_Y21_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~13_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3));

-- Location: LCCOMB_X29_Y21_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	cin => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[3]~14\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\);

-- Location: FF_X29_Y21_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~17_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4));

-- Location: LCCOMB_X30_Y21_N0
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12_combout\);

-- Location: LCCOMB_X30_Y21_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~12_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\);

-- Location: LCCOMB_X30_Y21_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~5_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~13_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\);

-- Location: FF_X29_Y21_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[1]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~19_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1));

-- Location: LCCOMB_X30_Y21_N24
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\);

-- Location: LCCOMB_X30_Y21_N28
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~6_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\);

-- Location: LCCOMB_X30_Y23_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\);

-- Location: FF_X30_Y23_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[1]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1));

-- Location: LCCOMB_X30_Y21_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~5_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~7_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X30_Y21_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\);

-- Location: LCCOMB_X30_Y21_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~10_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\);

-- Location: LCCOMB_X30_Y23_N16
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\);

-- Location: FF_X30_Y23_N17
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[2]~feeder_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2));

-- Location: LCCOMB_X30_Y21_N30
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~5_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~11_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(2),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X30_Y21_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\);

-- Location: LCCOMB_X30_Y21_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|mixer_addr_reg\(1),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~8_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9_combout\);

-- Location: FF_X30_Y23_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_shift_reg\(3),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3));

-- Location: LCCOMB_X30_Y21_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~5_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg~9_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|identity_contrib_update_reg\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X28_Y22_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\);

-- Location: LCCOMB_X28_Y22_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_dr_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\);

-- Location: FF_X30_Y21_N15
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3));

-- Location: FF_X30_Y21_N31
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(3),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2));

-- Location: FF_X30_Y21_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(2),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1));

-- Location: FF_X30_Y21_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(1),
	sload => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_proc~0_combout\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0));

-- Location: LCCOMB_X28_Y23_N8
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~2_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~4_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|design_hash_reg\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\);

-- Location: FF_X28_Y23_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~5_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|ALT_INV_state\(8),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\);

-- Location: LCCOMB_X28_Y23_N14
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|tdo~_wirecell_combout\);

-- Location: FF_X25_Y22_N19
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9));

-- Location: LCCOMB_X25_Y22_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\);

-- Location: FF_X25_Y22_N21
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[8]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8));

-- Location: LCCOMB_X25_Y22_N22
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X25_Y22_N23
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7));

-- Location: FF_X25_Y22_N9
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6));

-- Location: LCCOMB_X25_Y22_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(7),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(6),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(9),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(8),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y22_N12
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~0_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|jtag_ir_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal0~1_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\);

-- Location: FF_X28_Y22_N13
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|Equal1~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X29_Y23_N26
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~0_combout\);

-- Location: LCCOMB_X29_Y23_N10
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][3]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][3]~1_combout\);

-- Location: LCCOMB_X29_Y23_N20
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][0]~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][3]~1_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][0]~2_combout\);

-- Location: FF_X29_Y23_N27
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][0]~q\);

-- Location: LCCOMB_X29_Y23_N2
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~0\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_irf_reg[1][0]~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~0_combout\);

-- Location: LCCOMB_X27_Y23_N18
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~1\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(3),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~1_combout\);

-- Location: LCCOMB_X28_Y23_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~2\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(2),
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(0),
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irsr_reg\(4),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~2_combout\);

-- Location: LCCOMB_X28_Y23_N6
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~3\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|hub_mode_reg\(1),
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~1_combout\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~2_combout\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_proc~0_combout\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~3_combout\);

-- Location: FF_X29_Y23_N3
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg~0_combout\,
	clrn => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|ALT_INV_clr_reg~q\,
	ena => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\);

-- Location: LCCOMB_X27_Y23_N0
\rgbmatrix_1|U_JTAGIFACE|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\ = (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\ & (!\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\ & (\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\ & 
-- \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|node_ena[1]~reg0_q\,
	datab => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|virtual_ir_scan_reg~q\,
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|irf_reg[1][0]~q\,
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(4),
	combout => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\);

-- Location: FF_X31_Y23_N31
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[46]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(46));

-- Location: FF_X31_Y23_N29
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(46),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(45));

-- Location: LCCOMB_X31_Y23_N26
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[44]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(45),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[44]~feeder_combout\);

-- Location: FF_X31_Y23_N27
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[44]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(44));

-- Location: FF_X31_Y23_N25
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(44),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(43));

-- Location: LCCOMB_X31_Y23_N14
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[42]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(43),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[42]~feeder_combout\);

-- Location: FF_X31_Y23_N15
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[42]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(42));

-- Location: FF_X31_Y23_N21
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(42),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(41));

-- Location: LCCOMB_X31_Y23_N10
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[40]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(41),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[40]~feeder_combout\);

-- Location: FF_X31_Y23_N11
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[40]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(40));

-- Location: LCCOMB_X31_Y23_N16
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[39]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(40),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[39]~feeder_combout\);

-- Location: FF_X31_Y23_N17
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[39]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(39));

-- Location: LCCOMB_X31_Y23_N22
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[38]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(39),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[38]~feeder_combout\);

-- Location: FF_X31_Y23_N23
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[38]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(38));

-- Location: FF_X31_Y23_N5
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(38),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(37));

-- Location: FF_X31_Y23_N19
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(37),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(36));

-- Location: LCCOMB_X31_Y23_N8
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[35]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(36),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[35]~feeder_combout\);

-- Location: FF_X31_Y23_N9
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[35]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(35));

-- Location: FF_X31_Y23_N7
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(35),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(34));

-- Location: LCCOMB_X31_Y23_N12
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[33]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(34),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[33]~feeder_combout\);

-- Location: FF_X31_Y23_N13
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[33]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(33));

-- Location: LCCOMB_X31_Y23_N2
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[32]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(33),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[32]~feeder_combout\);

-- Location: FF_X31_Y23_N3
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[32]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(32));

-- Location: LCCOMB_X31_Y23_N0
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[31]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(32),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[31]~feeder_combout\);

-- Location: FF_X31_Y23_N1
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[31]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(31));

-- Location: LCCOMB_X30_Y24_N30
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[30]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(31),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[30]~feeder_combout\);

-- Location: FF_X30_Y24_N31
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[30]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(30));

-- Location: FF_X30_Y24_N29
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(30),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(29));

-- Location: LCCOMB_X30_Y24_N2
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[28]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(29),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[28]~feeder_combout\);

-- Location: FF_X30_Y24_N3
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[28]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(28));

-- Location: LCCOMB_X30_Y24_N24
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[27]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(28),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[27]~feeder_combout\);

-- Location: FF_X30_Y24_N25
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[27]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(27));

-- Location: LCCOMB_X30_Y24_N14
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[26]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(27),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[26]~feeder_combout\);

-- Location: FF_X30_Y24_N15
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[26]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(26));

-- Location: FF_X30_Y24_N21
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(26),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(25));

-- Location: LCCOMB_X30_Y24_N10
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[24]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(25),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[24]~feeder_combout\);

-- Location: FF_X30_Y24_N11
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[24]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(24));

-- Location: LCCOMB_X30_Y24_N16
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[23]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(24),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[23]~feeder_combout\);

-- Location: FF_X30_Y24_N17
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[23]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(23));

-- Location: LCCOMB_X30_Y24_N22
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[22]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(23),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[22]~feeder_combout\);

-- Location: FF_X30_Y24_N23
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[22]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(22));

-- Location: FF_X30_Y24_N5
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(22),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(21));

-- Location: FF_X30_Y24_N19
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(21),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(20));

-- Location: LCCOMB_X30_Y24_N0
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[19]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(20),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[19]~feeder_combout\);

-- Location: FF_X30_Y24_N1
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[19]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(19));

-- Location: LCCOMB_X30_Y24_N6
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[18]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(19),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[18]~feeder_combout\);

-- Location: FF_X30_Y24_N7
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[18]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(18));

-- Location: LCCOMB_X30_Y24_N12
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[17]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(18),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[17]~feeder_combout\);

-- Location: FF_X30_Y24_N13
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[17]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(17));

-- Location: LCCOMB_X30_Y24_N26
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[16]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(17),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[16]~feeder_combout\);

-- Location: FF_X30_Y24_N27
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[16]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(16));

-- Location: FF_X30_Y24_N9
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(16),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(15));

-- Location: LCCOMB_X31_Y24_N30
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[14]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(15),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[14]~feeder_combout\);

-- Location: FF_X31_Y24_N31
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[14]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(14));

-- Location: FF_X31_Y24_N29
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(14),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(13));

-- Location: LCCOMB_X31_Y24_N26
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[12]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(13),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[12]~feeder_combout\);

-- Location: FF_X31_Y24_N27
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[12]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(12));

-- Location: FF_X31_Y24_N25
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(12),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(11));

-- Location: LCCOMB_X31_Y24_N14
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[10]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(11),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[10]~feeder_combout\);

-- Location: FF_X31_Y24_N15
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[10]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(10));

-- Location: FF_X31_Y24_N21
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(10),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(9));

-- Location: LCCOMB_X31_Y24_N10
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[8]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(9),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[8]~feeder_combout\);

-- Location: FF_X31_Y24_N11
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[8]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(8));

-- Location: LCCOMB_X31_Y24_N16
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[7]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(8),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[7]~feeder_combout\);

-- Location: FF_X31_Y24_N17
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[7]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(7));

-- Location: LCCOMB_X31_Y24_N22
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[6]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(7),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[6]~feeder_combout\);

-- Location: FF_X31_Y24_N23
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[6]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(6));

-- Location: FF_X31_Y24_N5
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(6),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(5));

-- Location: FF_X31_Y24_N3
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(5),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(4));

-- Location: LCCOMB_X31_Y24_N8
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[3]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(4),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[3]~feeder_combout\);

-- Location: FF_X31_Y24_N9
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[3]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(3));

-- Location: FF_X31_Y24_N7
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(3),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(2));

-- Location: LCCOMB_X31_Y24_N12
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[1]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(2),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[1]~feeder_combout\);

-- Location: FF_X31_Y24_N13
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[1]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(1));

-- Location: LCCOMB_X31_Y24_N18
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[0]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(1),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[0]~feeder_combout\);

-- Location: FF_X31_Y24_N19
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[0]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(0));

-- Location: LCCOMB_X27_Y23_N30
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[47]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[47]~0_combout\ = !\rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(0),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[47]~0_combout\);

-- Location: FF_X27_Y23_N31
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[47]~0_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse\(47));

-- Location: CLKCTRL_G12
\rgbmatrix_1|U_JTAGIFACE|dr1_pulse[47]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[47]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rgbmatrix_1|U_JTAGIFACE|dr1_pulse[47]~clkctrl_outclk\);

-- Location: CLKCTRL_G18
\pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y24_N20
\rgbmatrix_1|U_JTAGIFACE|dr1[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[47]~feeder_combout\ = \altera_internal_jtag~TDIUTAP\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[47]~feeder_combout\);

-- Location: FF_X32_Y24_N21
\rgbmatrix_1|U_JTAGIFACE|dr1[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[47]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(47));

-- Location: LCCOMB_X32_Y24_N30
\rgbmatrix_1|U_JTAGIFACE|dr1[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[46]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(47),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[46]~feeder_combout\);

-- Location: FF_X32_Y24_N31
\rgbmatrix_1|U_JTAGIFACE|dr1[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[46]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(46));

-- Location: FF_X32_Y24_N17
\rgbmatrix_1|U_JTAGIFACE|dr1[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(46),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(45));

-- Location: LCCOMB_X32_Y24_N18
\rgbmatrix_1|U_JTAGIFACE|dr1[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[44]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(45),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[44]~feeder_combout\);

-- Location: FF_X32_Y24_N19
\rgbmatrix_1|U_JTAGIFACE|dr1[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[44]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(44));

-- Location: LCCOMB_X32_Y24_N4
\rgbmatrix_1|U_JTAGIFACE|dr1[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[43]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(44),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[43]~feeder_combout\);

-- Location: FF_X32_Y24_N5
\rgbmatrix_1|U_JTAGIFACE|dr1[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[43]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(43));

-- Location: FF_X32_Y23_N25
\rgbmatrix_1|U_JTAGIFACE|dr1[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(43),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(42));

-- Location: LCCOMB_X32_Y23_N26
\rgbmatrix_1|U_JTAGIFACE|dr1[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[41]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(42),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[41]~feeder_combout\);

-- Location: FF_X32_Y23_N27
\rgbmatrix_1|U_JTAGIFACE|dr1[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[41]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(41));

-- Location: FF_X32_Y23_N13
\rgbmatrix_1|U_JTAGIFACE|dr1[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(41),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(40));

-- Location: LCCOMB_X32_Y23_N8
\rgbmatrix_1|U_JTAGIFACE|dr1[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[39]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(40),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[39]~feeder_combout\);

-- Location: FF_X32_Y23_N9
\rgbmatrix_1|U_JTAGIFACE|dr1[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[39]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(39));

-- Location: FF_X32_Y23_N3
\rgbmatrix_1|U_JTAGIFACE|dr1[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(39),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(38));

-- Location: LCCOMB_X32_Y23_N20
\rgbmatrix_1|U_JTAGIFACE|dr1[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[37]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(38),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[37]~feeder_combout\);

-- Location: FF_X32_Y23_N21
\rgbmatrix_1|U_JTAGIFACE|dr1[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[37]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(37));

-- Location: LCCOMB_X32_Y23_N6
\rgbmatrix_1|U_JTAGIFACE|dr1[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[36]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(37),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[36]~feeder_combout\);

-- Location: FF_X32_Y23_N7
\rgbmatrix_1|U_JTAGIFACE|dr1[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[36]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(36));

-- Location: LCCOMB_X32_Y23_N0
\rgbmatrix_1|U_JTAGIFACE|dr1[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[35]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(36),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[35]~feeder_combout\);

-- Location: FF_X32_Y23_N1
\rgbmatrix_1|U_JTAGIFACE|dr1[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[35]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(35));

-- Location: FF_X32_Y23_N19
\rgbmatrix_1|U_JTAGIFACE|dr1[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(35),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(34));

-- Location: LCCOMB_X32_Y23_N4
\rgbmatrix_1|U_JTAGIFACE|dr1[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[33]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(34),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[33]~feeder_combout\);

-- Location: FF_X32_Y23_N5
\rgbmatrix_1|U_JTAGIFACE|dr1[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[33]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(33));

-- Location: FF_X32_Y23_N31
\rgbmatrix_1|U_JTAGIFACE|dr1[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(33),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(32));

-- Location: LCCOMB_X32_Y23_N14
\rgbmatrix_1|U_JTAGIFACE|dr1[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[31]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(32),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[31]~feeder_combout\);

-- Location: FF_X32_Y23_N15
\rgbmatrix_1|U_JTAGIFACE|dr1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[31]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(31));

-- Location: FF_X32_Y23_N17
\rgbmatrix_1|U_JTAGIFACE|dr1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(31),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(30));

-- Location: LCCOMB_X34_Y22_N8
\rgbmatrix_1|U_MEMORY|waddr[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_MEMORY|waddr[0]~24_combout\ = !\rgbmatrix_1|U_MEMORY|waddr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgbmatrix_1|U_MEMORY|waddr\(0),
	combout => \rgbmatrix_1|U_MEMORY|waddr[0]~24_combout\);

-- Location: FF_X34_Y22_N9
\rgbmatrix_1|U_MEMORY|waddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\,
	d => \rgbmatrix_1|U_MEMORY|waddr[0]~24_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_MEMORY|waddr\(0));

-- Location: LCCOMB_X34_Y22_N10
\rgbmatrix_1|U_MEMORY|waddr[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_MEMORY|waddr[1]~8_combout\ = (\rgbmatrix_1|U_MEMORY|waddr\(1) & (\rgbmatrix_1|U_MEMORY|waddr\(0) $ (VCC))) # (!\rgbmatrix_1|U_MEMORY|waddr\(1) & (\rgbmatrix_1|U_MEMORY|waddr\(0) & VCC))
-- \rgbmatrix_1|U_MEMORY|waddr[1]~9\ = CARRY((\rgbmatrix_1|U_MEMORY|waddr\(1) & \rgbmatrix_1|U_MEMORY|waddr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|waddr\(1),
	datab => \rgbmatrix_1|U_MEMORY|waddr\(0),
	datad => VCC,
	combout => \rgbmatrix_1|U_MEMORY|waddr[1]~8_combout\,
	cout => \rgbmatrix_1|U_MEMORY|waddr[1]~9\);

-- Location: FF_X34_Y22_N11
\rgbmatrix_1|U_MEMORY|waddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\,
	d => \rgbmatrix_1|U_MEMORY|waddr[1]~8_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_MEMORY|waddr\(1));

-- Location: LCCOMB_X34_Y22_N12
\rgbmatrix_1|U_MEMORY|waddr[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_MEMORY|waddr[2]~10_combout\ = (\rgbmatrix_1|U_MEMORY|waddr\(2) & (!\rgbmatrix_1|U_MEMORY|waddr[1]~9\)) # (!\rgbmatrix_1|U_MEMORY|waddr\(2) & ((\rgbmatrix_1|U_MEMORY|waddr[1]~9\) # (GND)))
-- \rgbmatrix_1|U_MEMORY|waddr[2]~11\ = CARRY((!\rgbmatrix_1|U_MEMORY|waddr[1]~9\) # (!\rgbmatrix_1|U_MEMORY|waddr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|waddr\(2),
	datad => VCC,
	cin => \rgbmatrix_1|U_MEMORY|waddr[1]~9\,
	combout => \rgbmatrix_1|U_MEMORY|waddr[2]~10_combout\,
	cout => \rgbmatrix_1|U_MEMORY|waddr[2]~11\);

-- Location: FF_X34_Y22_N13
\rgbmatrix_1|U_MEMORY|waddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\,
	d => \rgbmatrix_1|U_MEMORY|waddr[2]~10_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_MEMORY|waddr\(2));

-- Location: LCCOMB_X34_Y22_N14
\rgbmatrix_1|U_MEMORY|waddr[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_MEMORY|waddr[3]~12_combout\ = (\rgbmatrix_1|U_MEMORY|waddr\(3) & (\rgbmatrix_1|U_MEMORY|waddr[2]~11\ $ (GND))) # (!\rgbmatrix_1|U_MEMORY|waddr\(3) & (!\rgbmatrix_1|U_MEMORY|waddr[2]~11\ & VCC))
-- \rgbmatrix_1|U_MEMORY|waddr[3]~13\ = CARRY((\rgbmatrix_1|U_MEMORY|waddr\(3) & !\rgbmatrix_1|U_MEMORY|waddr[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_MEMORY|waddr\(3),
	datad => VCC,
	cin => \rgbmatrix_1|U_MEMORY|waddr[2]~11\,
	combout => \rgbmatrix_1|U_MEMORY|waddr[3]~12_combout\,
	cout => \rgbmatrix_1|U_MEMORY|waddr[3]~13\);

-- Location: FF_X34_Y22_N15
\rgbmatrix_1|U_MEMORY|waddr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\,
	d => \rgbmatrix_1|U_MEMORY|waddr[3]~12_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_MEMORY|waddr\(3));

-- Location: LCCOMB_X34_Y22_N16
\rgbmatrix_1|U_MEMORY|waddr[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_MEMORY|waddr[4]~14_combout\ = (\rgbmatrix_1|U_MEMORY|waddr\(4) & (!\rgbmatrix_1|U_MEMORY|waddr[3]~13\)) # (!\rgbmatrix_1|U_MEMORY|waddr\(4) & ((\rgbmatrix_1|U_MEMORY|waddr[3]~13\) # (GND)))
-- \rgbmatrix_1|U_MEMORY|waddr[4]~15\ = CARRY((!\rgbmatrix_1|U_MEMORY|waddr[3]~13\) # (!\rgbmatrix_1|U_MEMORY|waddr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_MEMORY|waddr\(4),
	datad => VCC,
	cin => \rgbmatrix_1|U_MEMORY|waddr[3]~13\,
	combout => \rgbmatrix_1|U_MEMORY|waddr[4]~14_combout\,
	cout => \rgbmatrix_1|U_MEMORY|waddr[4]~15\);

-- Location: FF_X34_Y22_N17
\rgbmatrix_1|U_MEMORY|waddr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\,
	d => \rgbmatrix_1|U_MEMORY|waddr[4]~14_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_MEMORY|waddr\(4));

-- Location: LCCOMB_X34_Y22_N18
\rgbmatrix_1|U_MEMORY|waddr[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_MEMORY|waddr[5]~16_combout\ = (\rgbmatrix_1|U_MEMORY|waddr\(5) & (\rgbmatrix_1|U_MEMORY|waddr[4]~15\ $ (GND))) # (!\rgbmatrix_1|U_MEMORY|waddr\(5) & (!\rgbmatrix_1|U_MEMORY|waddr[4]~15\ & VCC))
-- \rgbmatrix_1|U_MEMORY|waddr[5]~17\ = CARRY((\rgbmatrix_1|U_MEMORY|waddr\(5) & !\rgbmatrix_1|U_MEMORY|waddr[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_MEMORY|waddr\(5),
	datad => VCC,
	cin => \rgbmatrix_1|U_MEMORY|waddr[4]~15\,
	combout => \rgbmatrix_1|U_MEMORY|waddr[5]~16_combout\,
	cout => \rgbmatrix_1|U_MEMORY|waddr[5]~17\);

-- Location: FF_X34_Y22_N19
\rgbmatrix_1|U_MEMORY|waddr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\,
	d => \rgbmatrix_1|U_MEMORY|waddr[5]~16_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_MEMORY|waddr\(5));

-- Location: LCCOMB_X34_Y22_N20
\rgbmatrix_1|U_MEMORY|waddr[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_MEMORY|waddr[6]~18_combout\ = (\rgbmatrix_1|U_MEMORY|waddr\(6) & (!\rgbmatrix_1|U_MEMORY|waddr[5]~17\)) # (!\rgbmatrix_1|U_MEMORY|waddr\(6) & ((\rgbmatrix_1|U_MEMORY|waddr[5]~17\) # (GND)))
-- \rgbmatrix_1|U_MEMORY|waddr[6]~19\ = CARRY((!\rgbmatrix_1|U_MEMORY|waddr[5]~17\) # (!\rgbmatrix_1|U_MEMORY|waddr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_MEMORY|waddr\(6),
	datad => VCC,
	cin => \rgbmatrix_1|U_MEMORY|waddr[5]~17\,
	combout => \rgbmatrix_1|U_MEMORY|waddr[6]~18_combout\,
	cout => \rgbmatrix_1|U_MEMORY|waddr[6]~19\);

-- Location: FF_X34_Y22_N21
\rgbmatrix_1|U_MEMORY|waddr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\,
	d => \rgbmatrix_1|U_MEMORY|waddr[6]~18_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_MEMORY|waddr\(6));

-- Location: LCCOMB_X34_Y22_N22
\rgbmatrix_1|U_MEMORY|waddr[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_MEMORY|waddr[7]~20_combout\ = (\rgbmatrix_1|U_MEMORY|waddr\(7) & (\rgbmatrix_1|U_MEMORY|waddr[6]~19\ $ (GND))) # (!\rgbmatrix_1|U_MEMORY|waddr\(7) & (!\rgbmatrix_1|U_MEMORY|waddr[6]~19\ & VCC))
-- \rgbmatrix_1|U_MEMORY|waddr[7]~21\ = CARRY((\rgbmatrix_1|U_MEMORY|waddr\(7) & !\rgbmatrix_1|U_MEMORY|waddr[6]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|waddr\(7),
	datad => VCC,
	cin => \rgbmatrix_1|U_MEMORY|waddr[6]~19\,
	combout => \rgbmatrix_1|U_MEMORY|waddr[7]~20_combout\,
	cout => \rgbmatrix_1|U_MEMORY|waddr[7]~21\);

-- Location: FF_X34_Y22_N23
\rgbmatrix_1|U_MEMORY|waddr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\,
	d => \rgbmatrix_1|U_MEMORY|waddr[7]~20_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_MEMORY|waddr\(7));

-- Location: LCCOMB_X34_Y22_N24
\rgbmatrix_1|U_MEMORY|waddr[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_MEMORY|waddr[8]~22_combout\ = \rgbmatrix_1|U_MEMORY|waddr[7]~21\ $ (\rgbmatrix_1|U_MEMORY|waddr\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_MEMORY|waddr\(8),
	cin => \rgbmatrix_1|U_MEMORY|waddr[7]~21\,
	combout => \rgbmatrix_1|U_MEMORY|waddr[8]~22_combout\);

-- Location: FF_X34_Y22_N25
\rgbmatrix_1|U_MEMORY|waddr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_JTAGIFACE|ALT_INV_dr1_pulse[47]~clkctrl_outclk\,
	d => \rgbmatrix_1|U_MEMORY|waddr[8]~22_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_MEMORY|waddr\(8));

-- Location: LCCOMB_X34_Y26_N30
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[0]~8_combout\ = \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(0) $ (\rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(0),
	datad => \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[0]~8_combout\);

-- Location: FF_X34_Y26_N31
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[0]~8_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(0));

-- Location: LCCOMB_X34_Y26_N2
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[1]~9_combout\ = (\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(0) & (\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(1) $ (VCC))) # (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(0) & (\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(1) & VCC))
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[1]~10\ = CARRY((\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(0) & \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(0),
	datab => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(1),
	datad => VCC,
	combout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[1]~9_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[1]~10\);

-- Location: FF_X34_Y26_N3
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[1]~9_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(1));

-- Location: LCCOMB_X34_Y26_N4
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[2]~11_combout\ = (\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(2) & (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr[1]~10\)) # (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(2) & ((\rgbmatrix_1|U_LEDCTRL|s_ram_addr[1]~10\) # (GND)))
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[2]~12\ = CARRY((!\rgbmatrix_1|U_LEDCTRL|s_ram_addr[1]~10\) # (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(2),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[1]~10\,
	combout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[2]~11_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[2]~12\);

-- Location: FF_X34_Y26_N5
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[2]~11_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(2));

-- Location: LCCOMB_X34_Y26_N6
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[3]~13_combout\ = (\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(3) & (\rgbmatrix_1|U_LEDCTRL|s_ram_addr[2]~12\ $ (GND))) # (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(3) & (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr[2]~12\ & VCC))
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[3]~14\ = CARRY((\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(3) & !\rgbmatrix_1|U_LEDCTRL|s_ram_addr[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(3),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[2]~12\,
	combout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[3]~13_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[3]~14\);

-- Location: FF_X34_Y26_N7
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[3]~13_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(3));

-- Location: LCCOMB_X34_Y26_N8
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[4]~15_combout\ = (\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(4) & (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr[3]~14\)) # (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(4) & ((\rgbmatrix_1|U_LEDCTRL|s_ram_addr[3]~14\) # (GND)))
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[4]~16\ = CARRY((!\rgbmatrix_1|U_LEDCTRL|s_ram_addr[3]~14\) # (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(4),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[3]~14\,
	combout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[4]~15_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[4]~16\);

-- Location: FF_X34_Y26_N9
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[4]~15_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(4));

-- Location: LCCOMB_X34_Y26_N10
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[5]~17_combout\ = (\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(5) & (\rgbmatrix_1|U_LEDCTRL|s_ram_addr[4]~16\ $ (GND))) # (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(5) & (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr[4]~16\ & VCC))
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[5]~18\ = CARRY((\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(5) & !\rgbmatrix_1|U_LEDCTRL|s_ram_addr[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(5),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[4]~16\,
	combout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[5]~17_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[5]~18\);

-- Location: FF_X34_Y26_N11
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[5]~17_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(5));

-- Location: LCCOMB_X34_Y26_N12
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[6]~19_combout\ = (\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(6) & (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr[5]~18\)) # (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(6) & ((\rgbmatrix_1|U_LEDCTRL|s_ram_addr[5]~18\) # (GND)))
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[6]~20\ = CARRY((!\rgbmatrix_1|U_LEDCTRL|s_ram_addr[5]~18\) # (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(6),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[5]~18\,
	combout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[6]~19_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[6]~20\);

-- Location: FF_X34_Y26_N13
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[6]~19_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(6));

-- Location: LCCOMB_X34_Y26_N14
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[7]~21_combout\ = (\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(7) & (\rgbmatrix_1|U_LEDCTRL|s_ram_addr[6]~20\ $ (GND))) # (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(7) & (!\rgbmatrix_1|U_LEDCTRL|s_ram_addr[6]~20\ & VCC))
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[7]~22\ = CARRY((\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(7) & !\rgbmatrix_1|U_LEDCTRL|s_ram_addr[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(7),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[6]~20\,
	combout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[7]~21_combout\,
	cout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[7]~22\);

-- Location: FF_X34_Y26_N15
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[7]~21_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(7));

-- Location: LCCOMB_X34_Y26_N16
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|s_ram_addr[8]~23_combout\ = \rgbmatrix_1|U_LEDCTRL|s_ram_addr[7]~22\ $ (\rgbmatrix_1|U_LEDCTRL|s_ram_addr\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(8),
	cin => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[7]~22\,
	combout => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[8]~23_combout\);

-- Location: FF_X34_Y26_N17
\rgbmatrix_1|U_LEDCTRL|s_ram_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|s_ram_addr[8]~23_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_ram_addr\(8));

-- Location: LCCOMB_X34_Y23_N16
\rgbmatrix_1|U_LEDCTRL|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan1~1_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a32\ & !\rgbmatrix_1|U_LEDCTRL|bpp_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a32\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(0),
	datad => VCC,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan1~1_cout\);

-- Location: LCCOMB_X34_Y23_N18
\rgbmatrix_1|U_LEDCTRL|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan1~3_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a33\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(1) & !\rgbmatrix_1|U_LEDCTRL|LessThan1~1_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a33\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(1)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a33\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(1),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan1~1_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan1~3_cout\);

-- Location: LCCOMB_X34_Y23_N20
\rgbmatrix_1|U_LEDCTRL|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan1~5_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a34\ & ((!\rgbmatrix_1|U_LEDCTRL|LessThan1~3_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(2)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a34\ & (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(2) & !\rgbmatrix_1|U_LEDCTRL|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a34\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(2),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan1~3_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan1~5_cout\);

-- Location: LCCOMB_X34_Y23_N22
\rgbmatrix_1|U_LEDCTRL|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan1~7_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a35\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(3) & !\rgbmatrix_1|U_LEDCTRL|LessThan1~5_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a35\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(3)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a35\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(3),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan1~5_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan1~7_cout\);

-- Location: LCCOMB_X34_Y23_N24
\rgbmatrix_1|U_LEDCTRL|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan1~9_cout\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a36\ & !\rgbmatrix_1|U_LEDCTRL|LessThan1~7_cout\)) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & 
-- ((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a36\) # (!\rgbmatrix_1|U_LEDCTRL|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(4),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a36\,
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan1~7_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan1~9_cout\);

-- Location: LCCOMB_X34_Y23_N26
\rgbmatrix_1|U_LEDCTRL|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan1~11_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a37\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(5) & !\rgbmatrix_1|U_LEDCTRL|LessThan1~9_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a37\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(5)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a37\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(5),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan1~9_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan1~11_cout\);

-- Location: LCCOMB_X34_Y23_N28
\rgbmatrix_1|U_LEDCTRL|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan1~13_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a38\ & ((!\rgbmatrix_1|U_LEDCTRL|LessThan1~11_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(6)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a38\ & (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & !\rgbmatrix_1|U_LEDCTRL|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a38\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(6),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan1~11_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan1~13_cout\);

-- Location: LCCOMB_X34_Y23_N30
\rgbmatrix_1|U_LEDCTRL|LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan1~14_combout\ = (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a39\ & ((\rgbmatrix_1|U_LEDCTRL|LessThan1~13_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(7)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a39\ & (\rgbmatrix_1|U_LEDCTRL|LessThan1~13_cout\ & !\rgbmatrix_1|U_LEDCTRL|bpp_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a39\,
	datad => \rgbmatrix_1|U_LEDCTRL|bpp_count\(7),
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan1~13_cout\,
	combout => \rgbmatrix_1|U_LEDCTRL|LessThan1~14_combout\);

-- Location: FF_X34_Y23_N31
\rgbmatrix_1|U_LEDCTRL|s_rgb1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|LessThan1~14_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_rgb1\(1));

-- Location: LCCOMB_X34_Y23_N0
\rgbmatrix_1|U_LEDCTRL|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan0~1_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a40\ & !\rgbmatrix_1|U_LEDCTRL|bpp_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a40\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(0),
	datad => VCC,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan0~1_cout\);

-- Location: LCCOMB_X34_Y23_N2
\rgbmatrix_1|U_LEDCTRL|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan0~3_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a41\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(1) & !\rgbmatrix_1|U_LEDCTRL|LessThan0~1_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a41\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(1)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a41\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(1),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan0~1_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan0~3_cout\);

-- Location: LCCOMB_X34_Y23_N4
\rgbmatrix_1|U_LEDCTRL|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan0~5_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a42\ & ((!\rgbmatrix_1|U_LEDCTRL|LessThan0~3_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(2)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a42\ & (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(2) & !\rgbmatrix_1|U_LEDCTRL|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a42\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(2),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan0~3_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan0~5_cout\);

-- Location: LCCOMB_X34_Y23_N6
\rgbmatrix_1|U_LEDCTRL|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan0~7_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a43\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(3) & !\rgbmatrix_1|U_LEDCTRL|LessThan0~5_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a43\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(3)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a43\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(3),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan0~5_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan0~7_cout\);

-- Location: LCCOMB_X34_Y23_N8
\rgbmatrix_1|U_LEDCTRL|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan0~9_cout\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a44\ & !\rgbmatrix_1|U_LEDCTRL|LessThan0~7_cout\)) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & 
-- ((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a44\) # (!\rgbmatrix_1|U_LEDCTRL|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(4),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a44\,
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan0~7_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan0~9_cout\);

-- Location: LCCOMB_X34_Y23_N10
\rgbmatrix_1|U_LEDCTRL|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan0~11_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a45\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(5) & !\rgbmatrix_1|U_LEDCTRL|LessThan0~9_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a45\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(5)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a45\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(5),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan0~9_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan0~11_cout\);

-- Location: LCCOMB_X34_Y23_N12
\rgbmatrix_1|U_LEDCTRL|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan0~13_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a46\ & ((!\rgbmatrix_1|U_LEDCTRL|LessThan0~11_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(6)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a46\ & (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & !\rgbmatrix_1|U_LEDCTRL|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a46\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(6),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan0~11_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan0~13_cout\);

-- Location: LCCOMB_X34_Y23_N14
\rgbmatrix_1|U_LEDCTRL|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan0~14_combout\ = (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a47\ & ((\rgbmatrix_1|U_LEDCTRL|LessThan0~13_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(7)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a47\ & (\rgbmatrix_1|U_LEDCTRL|LessThan0~13_cout\ & !\rgbmatrix_1|U_LEDCTRL|bpp_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a47\,
	datad => \rgbmatrix_1|U_LEDCTRL|bpp_count\(7),
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan0~13_cout\,
	combout => \rgbmatrix_1|U_LEDCTRL|LessThan0~14_combout\);

-- Location: FF_X34_Y23_N15
\rgbmatrix_1|U_LEDCTRL|s_rgb1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|LessThan0~14_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_rgb1\(2));

-- Location: FF_X35_Y24_N13
\rgbmatrix_1|U_LEDCTRL|bpp_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|bpp_count[4]~16_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|Equal1~2_combout\,
	ena => \rgbmatrix_1|U_LEDCTRL|bpp_count[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|bpp_count\(4));

-- Location: LCCOMB_X32_Y23_N10
\rgbmatrix_1|U_JTAGIFACE|dr1[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[29]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(30),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[29]~feeder_combout\);

-- Location: FF_X32_Y23_N11
\rgbmatrix_1|U_JTAGIFACE|dr1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[29]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(29));

-- Location: LCCOMB_X32_Y23_N28
\rgbmatrix_1|U_JTAGIFACE|dr1[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[28]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(29),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[28]~feeder_combout\);

-- Location: FF_X32_Y23_N29
\rgbmatrix_1|U_JTAGIFACE|dr1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[28]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(28));

-- Location: LCCOMB_X32_Y23_N22
\rgbmatrix_1|U_JTAGIFACE|dr1[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[27]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(28),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[27]~feeder_combout\);

-- Location: FF_X32_Y23_N23
\rgbmatrix_1|U_JTAGIFACE|dr1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[27]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(27));

-- Location: FF_X32_Y25_N17
\rgbmatrix_1|U_JTAGIFACE|dr1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(27),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(26));

-- Location: LCCOMB_X32_Y25_N18
\rgbmatrix_1|U_JTAGIFACE|dr1[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[25]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(26),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[25]~feeder_combout\);

-- Location: FF_X32_Y25_N19
\rgbmatrix_1|U_JTAGIFACE|dr1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[25]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(25));

-- Location: LCCOMB_X32_Y25_N20
\rgbmatrix_1|U_JTAGIFACE|dr1[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[24]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(25),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[24]~feeder_combout\);

-- Location: FF_X32_Y25_N21
\rgbmatrix_1|U_JTAGIFACE|dr1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[24]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(24));

-- Location: LCCOMB_X32_Y25_N8
\rgbmatrix_1|U_JTAGIFACE|dr1[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[23]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(24),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[23]~feeder_combout\);

-- Location: FF_X32_Y25_N9
\rgbmatrix_1|U_JTAGIFACE|dr1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[23]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(23));

-- Location: FF_X32_Y25_N3
\rgbmatrix_1|U_JTAGIFACE|dr1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(23),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(22));

-- Location: LCCOMB_X32_Y25_N12
\rgbmatrix_1|U_JTAGIFACE|dr1[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[21]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(22),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[21]~feeder_combout\);

-- Location: FF_X32_Y25_N13
\rgbmatrix_1|U_JTAGIFACE|dr1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[21]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(21));

-- Location: LCCOMB_X32_Y25_N6
\rgbmatrix_1|U_JTAGIFACE|dr1[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[20]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(21),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[20]~feeder_combout\);

-- Location: FF_X32_Y25_N7
\rgbmatrix_1|U_JTAGIFACE|dr1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[20]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(20));

-- Location: LCCOMB_X32_Y25_N0
\rgbmatrix_1|U_JTAGIFACE|dr1[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[19]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(20),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[19]~feeder_combout\);

-- Location: FF_X32_Y25_N1
\rgbmatrix_1|U_JTAGIFACE|dr1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[19]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(19));

-- Location: LCCOMB_X32_Y25_N26
\rgbmatrix_1|U_JTAGIFACE|dr1[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[18]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(19),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[18]~feeder_combout\);

-- Location: FF_X32_Y25_N27
\rgbmatrix_1|U_JTAGIFACE|dr1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[18]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(18));

-- Location: FF_X32_Y25_N29
\rgbmatrix_1|U_JTAGIFACE|dr1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(18),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(17));

-- Location: LCCOMB_X32_Y25_N22
\rgbmatrix_1|U_JTAGIFACE|dr1[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[16]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(17),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[16]~feeder_combout\);

-- Location: FF_X32_Y25_N23
\rgbmatrix_1|U_JTAGIFACE|dr1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[16]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(16));

-- Location: FF_X32_Y25_N15
\rgbmatrix_1|U_JTAGIFACE|dr1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(16),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(15));

-- Location: FF_X32_Y25_N25
\rgbmatrix_1|U_JTAGIFACE|dr1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(15),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(14));

-- Location: LCCOMB_X32_Y25_N10
\rgbmatrix_1|U_JTAGIFACE|dr1[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[13]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(14),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[13]~feeder_combout\);

-- Location: FF_X32_Y25_N11
\rgbmatrix_1|U_JTAGIFACE|dr1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[13]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(13));

-- Location: LCCOMB_X32_Y25_N4
\rgbmatrix_1|U_JTAGIFACE|dr1[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[12]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(13),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[12]~feeder_combout\);

-- Location: FF_X32_Y25_N5
\rgbmatrix_1|U_JTAGIFACE|dr1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[12]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(12));

-- Location: FF_X32_Y25_N31
\rgbmatrix_1|U_JTAGIFACE|dr1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(12),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(11));

-- Location: FF_X31_Y24_N1
\rgbmatrix_1|U_JTAGIFACE|dr1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(11),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(10));

-- Location: FF_X32_Y24_N23
\rgbmatrix_1|U_JTAGIFACE|dr1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(10),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(9));

-- Location: FF_X32_Y24_N1
\rgbmatrix_1|U_JTAGIFACE|dr1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(9),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(8));

-- Location: LCCOMB_X34_Y25_N0
\rgbmatrix_1|U_LEDCTRL|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan2~1_cout\ = CARRY((!\rgbmatrix_1|U_LEDCTRL|bpp_count\(0) & \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(0),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a24\,
	datad => VCC,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan2~1_cout\);

-- Location: LCCOMB_X34_Y25_N2
\rgbmatrix_1|U_LEDCTRL|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan2~3_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a25\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(1) & !\rgbmatrix_1|U_LEDCTRL|LessThan2~1_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a25\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(1)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a25\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(1),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan2~1_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan2~3_cout\);

-- Location: LCCOMB_X34_Y25_N4
\rgbmatrix_1|U_LEDCTRL|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan2~5_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a26\ & ((!\rgbmatrix_1|U_LEDCTRL|LessThan2~3_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(2)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a26\ & (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(2) & !\rgbmatrix_1|U_LEDCTRL|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a26\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(2),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan2~3_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan2~5_cout\);

-- Location: LCCOMB_X34_Y25_N6
\rgbmatrix_1|U_LEDCTRL|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan2~7_cout\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(3) & ((!\rgbmatrix_1|U_LEDCTRL|LessThan2~5_cout\) # (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a27\))) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(3) & 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a27\ & !\rgbmatrix_1|U_LEDCTRL|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(3),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a27\,
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan2~5_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan2~7_cout\);

-- Location: LCCOMB_X34_Y25_N8
\rgbmatrix_1|U_LEDCTRL|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan2~9_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a28\ & ((!\rgbmatrix_1|U_LEDCTRL|LessThan2~7_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(4)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a28\ & (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & !\rgbmatrix_1|U_LEDCTRL|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a28\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(4),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan2~7_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan2~9_cout\);

-- Location: LCCOMB_X34_Y25_N10
\rgbmatrix_1|U_LEDCTRL|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan2~11_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a29\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(5) & !\rgbmatrix_1|U_LEDCTRL|LessThan2~9_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a29\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(5)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a29\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(5),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan2~9_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan2~11_cout\);

-- Location: LCCOMB_X34_Y25_N12
\rgbmatrix_1|U_LEDCTRL|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan2~13_cout\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30~portbdataout\ & !\rgbmatrix_1|U_LEDCTRL|LessThan2~11_cout\)) # 
-- (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & ((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30~portbdataout\) # (!\rgbmatrix_1|U_LEDCTRL|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(6),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan2~11_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan2~13_cout\);

-- Location: LCCOMB_X34_Y25_N14
\rgbmatrix_1|U_LEDCTRL|LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan2~14_combout\ = (\rgbmatrix_1|U_LEDCTRL|bpp_count\(7) & (\rgbmatrix_1|U_LEDCTRL|LessThan2~13_cout\ & \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a31\)) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(7) & 
-- ((\rgbmatrix_1|U_LEDCTRL|LessThan2~13_cout\) # (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(7),
	datad => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a31\,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan2~13_cout\,
	combout => \rgbmatrix_1|U_LEDCTRL|LessThan2~14_combout\);

-- Location: FF_X34_Y25_N15
\rgbmatrix_1|U_LEDCTRL|s_rgb1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|LessThan2~14_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_rgb1\(0));

-- Location: LCCOMB_X34_Y25_N16
\rgbmatrix_1|U_LEDCTRL|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan4~1_cout\ = CARRY((!\rgbmatrix_1|U_LEDCTRL|bpp_count\(0) & \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(0),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datad => VCC,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan4~1_cout\);

-- Location: LCCOMB_X34_Y25_N18
\rgbmatrix_1|U_LEDCTRL|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan4~3_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a9\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(1) & !\rgbmatrix_1|U_LEDCTRL|LessThan4~1_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a9\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(1)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a9\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(1),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan4~1_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan4~3_cout\);

-- Location: LCCOMB_X34_Y25_N20
\rgbmatrix_1|U_LEDCTRL|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan4~5_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a10\ & ((!\rgbmatrix_1|U_LEDCTRL|LessThan4~3_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(2)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a10\ & (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(2) & !\rgbmatrix_1|U_LEDCTRL|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a10\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(2),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan4~3_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan4~5_cout\);

-- Location: LCCOMB_X34_Y25_N22
\rgbmatrix_1|U_LEDCTRL|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan4~7_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a11\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(3) & !\rgbmatrix_1|U_LEDCTRL|LessThan4~5_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a11\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(3)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a11\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(3),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan4~5_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan4~7_cout\);

-- Location: LCCOMB_X34_Y25_N24
\rgbmatrix_1|U_LEDCTRL|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan4~9_cout\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a12\ & !\rgbmatrix_1|U_LEDCTRL|LessThan4~7_cout\)) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & 
-- ((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a12\) # (!\rgbmatrix_1|U_LEDCTRL|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(4),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a12\,
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan4~7_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan4~9_cout\);

-- Location: LCCOMB_X34_Y25_N26
\rgbmatrix_1|U_LEDCTRL|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan4~11_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a13\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(5) & !\rgbmatrix_1|U_LEDCTRL|LessThan4~9_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a13\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(5)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a13\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(5),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan4~9_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan4~11_cout\);

-- Location: LCCOMB_X34_Y25_N28
\rgbmatrix_1|U_LEDCTRL|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan4~13_cout\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a14\ & !\rgbmatrix_1|U_LEDCTRL|LessThan4~11_cout\)) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & 
-- ((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a14\) # (!\rgbmatrix_1|U_LEDCTRL|LessThan4~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(6),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a14\,
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan4~11_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan4~13_cout\);

-- Location: LCCOMB_X34_Y25_N30
\rgbmatrix_1|U_LEDCTRL|LessThan4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan4~14_combout\ = (\rgbmatrix_1|U_LEDCTRL|bpp_count\(7) & (\rgbmatrix_1|U_LEDCTRL|LessThan4~13_cout\ & \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a15\)) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(7) & 
-- ((\rgbmatrix_1|U_LEDCTRL|LessThan4~13_cout\) # (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(7),
	datad => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a15\,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan4~13_cout\,
	combout => \rgbmatrix_1|U_LEDCTRL|LessThan4~14_combout\);

-- Location: FF_X34_Y25_N31
\rgbmatrix_1|U_LEDCTRL|s_rgb2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|LessThan4~14_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_rgb2\(1));

-- Location: LCCOMB_X32_Y24_N10
\rgbmatrix_1|U_JTAGIFACE|dr1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[7]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(8),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[7]~feeder_combout\);

-- Location: FF_X32_Y24_N11
\rgbmatrix_1|U_JTAGIFACE|dr1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[7]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(7));

-- Location: LCCOMB_X32_Y24_N28
\rgbmatrix_1|U_JTAGIFACE|dr1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[6]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(7),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[6]~feeder_combout\);

-- Location: FF_X32_Y24_N29
\rgbmatrix_1|U_JTAGIFACE|dr1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[6]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(6));

-- Location: LCCOMB_X32_Y24_N14
\rgbmatrix_1|U_JTAGIFACE|dr1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[5]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(6),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[5]~feeder_combout\);

-- Location: FF_X32_Y24_N15
\rgbmatrix_1|U_JTAGIFACE|dr1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[5]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(5));

-- Location: FF_X32_Y24_N3
\rgbmatrix_1|U_JTAGIFACE|dr1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(5),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(4));

-- Location: LCCOMB_X32_Y24_N24
\rgbmatrix_1|U_JTAGIFACE|dr1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[3]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(4),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[3]~feeder_combout\);

-- Location: FF_X32_Y24_N25
\rgbmatrix_1|U_JTAGIFACE|dr1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[3]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(3));

-- Location: FF_X32_Y24_N7
\rgbmatrix_1|U_JTAGIFACE|dr1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \rgbmatrix_1|U_JTAGIFACE|dr1\(3),
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sload => VCC,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(2));

-- Location: LCCOMB_X32_Y24_N12
\rgbmatrix_1|U_JTAGIFACE|dr1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[1]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(2),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[1]~feeder_combout\);

-- Location: FF_X32_Y24_N13
\rgbmatrix_1|U_JTAGIFACE|dr1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[1]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(1));

-- Location: LCCOMB_X32_Y24_N8
\rgbmatrix_1|U_JTAGIFACE|dr1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_JTAGIFACE|dr1[0]~feeder_combout\ = \rgbmatrix_1|U_JTAGIFACE|dr1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgbmatrix_1|U_JTAGIFACE|dr1\(1),
	combout => \rgbmatrix_1|U_JTAGIFACE|dr1[0]~feeder_combout\);

-- Location: FF_X32_Y24_N9
\rgbmatrix_1|U_JTAGIFACE|dr1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \rgbmatrix_1|U_JTAGIFACE|dr1[0]~feeder_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	ena => \rgbmatrix_1|U_JTAGIFACE|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_JTAGIFACE|dr1\(0));

-- Location: LCCOMB_X34_Y24_N0
\rgbmatrix_1|U_LEDCTRL|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan3~1_cout\ = CARRY((!\rgbmatrix_1|U_LEDCTRL|bpp_count\(0) & \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(0),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a16\,
	datad => VCC,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan3~1_cout\);

-- Location: LCCOMB_X34_Y24_N2
\rgbmatrix_1|U_LEDCTRL|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan3~3_cout\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(1) & ((!\rgbmatrix_1|U_LEDCTRL|LessThan3~1_cout\) # (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a17\))) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(1) & 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a17\ & !\rgbmatrix_1|U_LEDCTRL|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(1),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a17\,
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan3~1_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan3~3_cout\);

-- Location: LCCOMB_X34_Y24_N4
\rgbmatrix_1|U_LEDCTRL|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan3~5_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a18\ & ((!\rgbmatrix_1|U_LEDCTRL|LessThan3~3_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(2)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a18\ & (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(2) & !\rgbmatrix_1|U_LEDCTRL|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a18\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(2),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan3~3_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan3~5_cout\);

-- Location: LCCOMB_X34_Y24_N6
\rgbmatrix_1|U_LEDCTRL|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan3~7_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a19\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(3) & !\rgbmatrix_1|U_LEDCTRL|LessThan3~5_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a19\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(3)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a19\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(3),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan3~5_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan3~7_cout\);

-- Location: LCCOMB_X34_Y24_N8
\rgbmatrix_1|U_LEDCTRL|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan3~9_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a20\ & ((!\rgbmatrix_1|U_LEDCTRL|LessThan3~7_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(4)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a20\ & (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & !\rgbmatrix_1|U_LEDCTRL|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a20\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(4),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan3~7_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan3~9_cout\);

-- Location: LCCOMB_X34_Y24_N10
\rgbmatrix_1|U_LEDCTRL|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan3~11_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a21\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(5) & !\rgbmatrix_1|U_LEDCTRL|LessThan3~9_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a21\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(5)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a21\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(5),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan3~9_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan3~11_cout\);

-- Location: LCCOMB_X34_Y24_N12
\rgbmatrix_1|U_LEDCTRL|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan3~13_cout\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a22\ & !\rgbmatrix_1|U_LEDCTRL|LessThan3~11_cout\)) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & 
-- ((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a22\) # (!\rgbmatrix_1|U_LEDCTRL|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(6),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a22\,
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan3~11_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan3~13_cout\);

-- Location: LCCOMB_X34_Y24_N14
\rgbmatrix_1|U_LEDCTRL|LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan3~14_combout\ = (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a23\ & ((\rgbmatrix_1|U_LEDCTRL|LessThan3~13_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(7)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a23\ & (\rgbmatrix_1|U_LEDCTRL|LessThan3~13_cout\ & !\rgbmatrix_1|U_LEDCTRL|bpp_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \rgbmatrix_1|U_LEDCTRL|bpp_count\(7),
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan3~13_cout\,
	combout => \rgbmatrix_1|U_LEDCTRL|LessThan3~14_combout\);

-- Location: FF_X34_Y24_N15
\rgbmatrix_1|U_LEDCTRL|s_rgb2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|LessThan3~14_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_rgb2\(2));

-- Location: LCCOMB_X34_Y24_N16
\rgbmatrix_1|U_LEDCTRL|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan5~1_cout\ = CARRY((!\rgbmatrix_1|U_LEDCTRL|bpp_count\(0) & \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(0),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => VCC,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan5~1_cout\);

-- Location: LCCOMB_X34_Y24_N18
\rgbmatrix_1|U_LEDCTRL|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan5~3_cout\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(1) & ((!\rgbmatrix_1|U_LEDCTRL|LessThan5~1_cout\) # (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a1\))) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(1) & 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a1\ & !\rgbmatrix_1|U_LEDCTRL|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(1),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a1\,
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan5~1_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan5~3_cout\);

-- Location: LCCOMB_X34_Y24_N20
\rgbmatrix_1|U_LEDCTRL|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan5~5_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a2\ & ((!\rgbmatrix_1|U_LEDCTRL|LessThan5~3_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(2)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a2\ & (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(2) & !\rgbmatrix_1|U_LEDCTRL|LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a2\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(2),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan5~3_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan5~5_cout\);

-- Location: LCCOMB_X34_Y24_N22
\rgbmatrix_1|U_LEDCTRL|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan5~7_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a3\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(3) & !\rgbmatrix_1|U_LEDCTRL|LessThan5~5_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a3\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(3)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a3\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(3),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan5~5_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan5~7_cout\);

-- Location: LCCOMB_X34_Y24_N24
\rgbmatrix_1|U_LEDCTRL|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan5~9_cout\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a4\ & !\rgbmatrix_1|U_LEDCTRL|LessThan5~7_cout\)) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(4) & 
-- ((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a4\) # (!\rgbmatrix_1|U_LEDCTRL|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(4),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a4\,
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan5~7_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan5~9_cout\);

-- Location: LCCOMB_X34_Y24_N26
\rgbmatrix_1|U_LEDCTRL|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan5~11_cout\ = CARRY((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a5\ & (\rgbmatrix_1|U_LEDCTRL|bpp_count\(5) & !\rgbmatrix_1|U_LEDCTRL|LessThan5~9_cout\)) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a5\ & ((\rgbmatrix_1|U_LEDCTRL|bpp_count\(5)) # (!\rgbmatrix_1|U_LEDCTRL|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a5\,
	datab => \rgbmatrix_1|U_LEDCTRL|bpp_count\(5),
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan5~9_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan5~11_cout\);

-- Location: LCCOMB_X34_Y24_N28
\rgbmatrix_1|U_LEDCTRL|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan5~13_cout\ = CARRY((\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a6\ & !\rgbmatrix_1|U_LEDCTRL|LessThan5~11_cout\)) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(6) & 
-- ((\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a6\) # (!\rgbmatrix_1|U_LEDCTRL|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|bpp_count\(6),
	datab => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a6\,
	datad => VCC,
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan5~11_cout\,
	cout => \rgbmatrix_1|U_LEDCTRL|LessThan5~13_cout\);

-- Location: LCCOMB_X34_Y24_N30
\rgbmatrix_1|U_LEDCTRL|LessThan5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|LessThan5~14_combout\ = (\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a7\ & ((\rgbmatrix_1|U_LEDCTRL|LessThan5~13_cout\) # (!\rgbmatrix_1|U_LEDCTRL|bpp_count\(7)))) # 
-- (!\rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a7\ & (\rgbmatrix_1|U_LEDCTRL|LessThan5~13_cout\ & !\rgbmatrix_1|U_LEDCTRL|bpp_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_MEMORY|ram_block_rtl_0|auto_generated|ram_block1a7\,
	datad => \rgbmatrix_1|U_LEDCTRL|bpp_count\(7),
	cin => \rgbmatrix_1|U_LEDCTRL|LessThan5~13_cout\,
	combout => \rgbmatrix_1|U_LEDCTRL|LessThan5~14_combout\);

-- Location: FF_X34_Y24_N31
\rgbmatrix_1|U_LEDCTRL|s_rgb2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rgbmatrix_1|U_LEDCTRL|U_CLKDIV|clk_out~clkctrl_outclk\,
	d => \rgbmatrix_1|U_LEDCTRL|LessThan5~14_combout\,
	clrn => \rgbmatrix_1|ALT_INV_rst~clkctrl_outclk\,
	sclr => \rgbmatrix_1|U_LEDCTRL|ALT_INV_state.READ_PIXEL_DATA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgbmatrix_1|U_LEDCTRL|s_rgb2\(0));

-- Location: LCCOMB_X39_Y30_N24
\rgbmatrix_1|U_LEDCTRL|s_oe~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rgbmatrix_1|U_LEDCTRL|s_oe~0_combout\ = (!\rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\ & !\rgbmatrix_1|U_LEDCTRL|state.READ_PIXEL_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgbmatrix_1|U_LEDCTRL|state.INCR_RAM_ADDR~q\,
	datac => \rgbmatrix_1|U_LEDCTRL|state.READ_PIXEL_DATA~q\,
	combout => \rgbmatrix_1|U_LEDCTRL|s_oe~0_combout\);

-- Location: LCCOMB_X15_Y29_N0
\counter[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~93_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	combout => \counter[0]~93_combout\);

-- Location: FF_X15_Y29_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[0]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X15_Y29_N4
\counter[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~33_combout\ = (counter(2) & (!\counter[1]~32\)) # (!counter(2) & ((\counter[1]~32\) # (GND)))
-- \counter[2]~34\ = CARRY((!\counter[1]~32\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~32\,
	combout => \counter[2]~33_combout\,
	cout => \counter[2]~34\);

-- Location: FF_X15_Y29_N5
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[2]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X15_Y29_N8
\counter[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~37_combout\ = (counter(4) & (!\counter[3]~36\)) # (!counter(4) & ((\counter[3]~36\) # (GND)))
-- \counter[4]~38\ = CARRY((!\counter[3]~36\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~36\,
	combout => \counter[4]~37_combout\,
	cout => \counter[4]~38\);

-- Location: FF_X15_Y29_N9
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X15_Y29_N14
\counter[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~43_combout\ = (counter(7) & (\counter[6]~42\ $ (GND))) # (!counter(7) & (!\counter[6]~42\ & VCC))
-- \counter[7]~44\ = CARRY((counter(7) & !\counter[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~42\,
	combout => \counter[7]~43_combout\,
	cout => \counter[7]~44\);

-- Location: FF_X15_Y29_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[7]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X15_Y29_N16
\counter[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~45_combout\ = (counter(8) & (!\counter[7]~44\)) # (!counter(8) & ((\counter[7]~44\) # (GND)))
-- \counter[8]~46\ = CARRY((!\counter[7]~44\) # (!counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~44\,
	combout => \counter[8]~45_combout\,
	cout => \counter[8]~46\);

-- Location: FF_X15_Y29_N17
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[8]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X15_Y29_N18
\counter[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~47_combout\ = (counter(9) & (\counter[8]~46\ $ (GND))) # (!counter(9) & (!\counter[8]~46\ & VCC))
-- \counter[9]~48\ = CARRY((counter(9) & !\counter[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~46\,
	combout => \counter[9]~47_combout\,
	cout => \counter[9]~48\);

-- Location: FF_X15_Y29_N19
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[9]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X15_Y29_N20
\counter[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[10]~49_combout\ = (counter(10) & (!\counter[9]~48\)) # (!counter(10) & ((\counter[9]~48\) # (GND)))
-- \counter[10]~50\ = CARRY((!\counter[9]~48\) # (!counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~48\,
	combout => \counter[10]~49_combout\,
	cout => \counter[10]~50\);

-- Location: FF_X15_Y29_N21
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[10]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X15_Y29_N24
\counter[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[12]~53_combout\ = (counter(12) & (!\counter[11]~52\)) # (!counter(12) & ((\counter[11]~52\) # (GND)))
-- \counter[12]~54\ = CARRY((!\counter[11]~52\) # (!counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~52\,
	combout => \counter[12]~53_combout\,
	cout => \counter[12]~54\);

-- Location: FF_X15_Y29_N25
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[12]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X15_Y29_N28
\counter[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[14]~57_combout\ = (counter(14) & (!\counter[13]~56\)) # (!counter(14) & ((\counter[13]~56\) # (GND)))
-- \counter[14]~58\ = CARRY((!\counter[13]~56\) # (!counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~56\,
	combout => \counter[14]~57_combout\,
	cout => \counter[14]~58\);

-- Location: FF_X15_Y29_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[14]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X15_Y28_N0
\counter[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[16]~61_combout\ = (counter(16) & (!\counter[15]~60\)) # (!counter(16) & ((\counter[15]~60\) # (GND)))
-- \counter[16]~62\ = CARRY((!\counter[15]~60\) # (!counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~60\,
	combout => \counter[16]~61_combout\,
	cout => \counter[16]~62\);

-- Location: FF_X15_Y28_N1
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[16]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X15_Y28_N2
\counter[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[17]~63_combout\ = (counter(17) & (\counter[16]~62\ $ (GND))) # (!counter(17) & (!\counter[16]~62\ & VCC))
-- \counter[17]~64\ = CARRY((counter(17) & !\counter[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~62\,
	combout => \counter[17]~63_combout\,
	cout => \counter[17]~64\);

-- Location: FF_X15_Y28_N3
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[17]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X15_Y28_N4
\counter[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[18]~65_combout\ = (counter(18) & (!\counter[17]~64\)) # (!counter(18) & ((\counter[17]~64\) # (GND)))
-- \counter[18]~66\ = CARRY((!\counter[17]~64\) # (!counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \counter[17]~64\,
	combout => \counter[18]~65_combout\,
	cout => \counter[18]~66\);

-- Location: FF_X15_Y28_N5
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[18]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X15_Y28_N8
\counter[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~69_combout\ = (counter(20) & (!\counter[19]~68\)) # (!counter(20) & ((\counter[19]~68\) # (GND)))
-- \counter[20]~70\ = CARRY((!\counter[19]~68\) # (!counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~68\,
	combout => \counter[20]~69_combout\,
	cout => \counter[20]~70\);

-- Location: FF_X15_Y28_N9
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[20]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X15_Y28_N14
\counter[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[23]~75_combout\ = (counter(23) & (\counter[22]~74\ $ (GND))) # (!counter(23) & (!\counter[22]~74\ & VCC))
-- \counter[23]~76\ = CARRY((counter(23) & !\counter[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~74\,
	combout => \counter[23]~75_combout\,
	cout => \counter[23]~76\);

-- Location: FF_X15_Y28_N15
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[23]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X15_Y28_N16
\counter[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[24]~77_combout\ = (counter(24) & (!\counter[23]~76\)) # (!counter(24) & ((\counter[23]~76\) # (GND)))
-- \counter[24]~78\ = CARRY((!\counter[23]~76\) # (!counter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \counter[23]~76\,
	combout => \counter[24]~77_combout\,
	cout => \counter[24]~78\);

-- Location: FF_X15_Y28_N17
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[24]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X14_Y28_N24
\LED[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[0]~reg0feeder_combout\ = counter(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => counter(24),
	combout => \LED[0]~reg0feeder_combout\);

-- Location: FF_X14_Y28_N25
\LED[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \LED[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[0]~reg0_q\);

-- Location: LCCOMB_X15_Y28_N18
\counter[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[25]~79_combout\ = (counter(25) & (\counter[24]~78\ $ (GND))) # (!counter(25) & (!\counter[24]~78\ & VCC))
-- \counter[25]~80\ = CARRY((counter(25) & !\counter[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \counter[24]~78\,
	combout => \counter[25]~79_combout\,
	cout => \counter[25]~80\);

-- Location: FF_X15_Y28_N19
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[25]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X14_Y28_N10
\LED[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[1]~reg0feeder_combout\ = counter(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => counter(25),
	combout => \LED[1]~reg0feeder_combout\);

-- Location: FF_X14_Y28_N11
\LED[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \LED[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[1]~reg0_q\);

-- Location: LCCOMB_X15_Y28_N20
\counter[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[26]~81_combout\ = (counter(26) & (!\counter[25]~80\)) # (!counter(26) & ((\counter[25]~80\) # (GND)))
-- \counter[26]~82\ = CARRY((!\counter[25]~80\) # (!counter(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \counter[25]~80\,
	combout => \counter[26]~81_combout\,
	cout => \counter[26]~82\);

-- Location: FF_X15_Y28_N21
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[26]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: FF_X14_Y28_N13
\LED[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => counter(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[2]~reg0_q\);

-- Location: LCCOMB_X15_Y28_N22
\counter[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[27]~83_combout\ = (counter(27) & (\counter[26]~82\ $ (GND))) # (!counter(27) & (!\counter[26]~82\ & VCC))
-- \counter[27]~84\ = CARRY((counter(27) & !\counter[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \counter[26]~82\,
	combout => \counter[27]~83_combout\,
	cout => \counter[27]~84\);

-- Location: FF_X15_Y28_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[27]~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X14_Y28_N14
\LED[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[3]~reg0feeder_combout\ = counter(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => counter(27),
	combout => \LED[3]~reg0feeder_combout\);

-- Location: FF_X14_Y28_N15
\LED[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \LED[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[3]~reg0_q\);

-- Location: LCCOMB_X15_Y28_N24
\counter[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[28]~85_combout\ = (counter(28) & (!\counter[27]~84\)) # (!counter(28) & ((\counter[27]~84\) # (GND)))
-- \counter[28]~86\ = CARRY((!\counter[27]~84\) # (!counter(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	datad => VCC,
	cin => \counter[27]~84\,
	combout => \counter[28]~85_combout\,
	cout => \counter[28]~86\);

-- Location: FF_X15_Y28_N25
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[28]~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X14_Y28_N8
\LED[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[4]~reg0feeder_combout\ = counter(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => counter(28),
	combout => \LED[4]~reg0feeder_combout\);

-- Location: FF_X14_Y28_N9
\LED[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \LED[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[4]~reg0_q\);

-- Location: LCCOMB_X15_Y28_N26
\counter[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[29]~87_combout\ = (counter(29) & (\counter[28]~86\ $ (GND))) # (!counter(29) & (!\counter[28]~86\ & VCC))
-- \counter[29]~88\ = CARRY((counter(29) & !\counter[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \counter[28]~86\,
	combout => \counter[29]~87_combout\,
	cout => \counter[29]~88\);

-- Location: FF_X15_Y28_N27
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[29]~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: FF_X14_Y28_N27
\LED[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => counter(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[5]~reg0_q\);

-- Location: LCCOMB_X15_Y28_N28
\counter[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[30]~89_combout\ = (counter(30) & (!\counter[29]~88\)) # (!counter(30) & ((\counter[29]~88\) # (GND)))
-- \counter[30]~90\ = CARRY((!\counter[29]~88\) # (!counter(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \counter[29]~88\,
	combout => \counter[30]~89_combout\,
	cout => \counter[30]~90\);

-- Location: FF_X15_Y28_N29
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[30]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X14_Y28_N28
\LED[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED[6]~reg0feeder_combout\ = counter(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => counter(30),
	combout => \LED[6]~reg0feeder_combout\);

-- Location: FF_X14_Y28_N29
\LED[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \LED[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[6]~reg0_q\);

-- Location: LCCOMB_X15_Y28_N30
\counter[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[31]~91_combout\ = counter(31) $ (!\counter[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	cin => \counter[30]~90\,
	combout => \counter[31]~91_combout\);

-- Location: FF_X15_Y28_N31
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \counter[31]~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: FF_X14_Y28_N7
\LED[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll1_1|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => counter(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED[7]~reg0_q\);

-- Location: IOIBUF_X0_Y18_N22
\altera_reserved_tms~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: LCCOMB_X41_Y14_N0
\auto_hub|~GND\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X29_Y23_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~q\,
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X27_Y22_N4
\auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell\ : cycloneive_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state\(0),
	combout => \auto_hub|jtag_hub_gen:sld_jtag_hub_inst|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: IOIBUF_X53_Y14_N1
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X25_Y34_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X0_Y22_N8
\EPCS_DATA0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EPCS_DATA0,
	o => \EPCS_DATA0~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\G_SENSOR_INT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_G_SENSOR_INT,
	o => \G_SENSOR_INT~input_o\);

-- Location: IOIBUF_X25_Y34_N1
\ADC_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_SDAT,
	o => \ADC_SDAT~input_o\);

-- Location: IOIBUF_X53_Y17_N1
\GPIO_2_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_2_IN(0),
	o => \GPIO_2_IN[0]~input_o\);

-- Location: IOIBUF_X53_Y17_N8
\GPIO_2_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_2_IN(1),
	o => \GPIO_2_IN[1]~input_o\);

-- Location: IOIBUF_X53_Y17_N22
\GPIO_2_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_2_IN(2),
	o => \GPIO_2_IN[2]~input_o\);

-- Location: IOIBUF_X25_Y34_N15
\GPIO_0_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0_IN(0),
	o => \GPIO_0_IN[0]~input_o\);

-- Location: IOIBUF_X25_Y34_N22
\GPIO_0_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_0_IN(1),
	o => \GPIO_0_IN[1]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\GPIO_1_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1_IN(0),
	o => \GPIO_1_IN[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\GPIO_1_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GPIO_1_IN(1),
	o => \GPIO_1_IN[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\DRAM_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(0),
	o => \DRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\DRAM_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(1),
	o => \DRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\DRAM_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(2),
	o => \DRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\DRAM_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(3),
	o => \DRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\DRAM_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(4),
	o => \DRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X0_Y15_N1
\DRAM_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(5),
	o => \DRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X0_Y15_N8
\DRAM_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(6),
	o => \DRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\DRAM_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(7),
	o => \DRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\DRAM_DQ[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(8),
	o => \DRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\DRAM_DQ[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(9),
	o => \DRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\DRAM_DQ[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(10),
	o => \DRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\DRAM_DQ[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(11),
	o => \DRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\DRAM_DQ[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(12),
	o => \DRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\DRAM_DQ[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(13),
	o => \DRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\DRAM_DQ[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(14),
	o => \DRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\DRAM_DQ[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(15),
	o => \DRAM_DQ[15]~input_o\);

-- Location: IOIBUF_X47_Y34_N22
\GPIO_2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(0),
	o => \GPIO_2[0]~input_o\);

-- Location: IOIBUF_X53_Y22_N1
\GPIO_2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(1),
	o => \GPIO_2[1]~input_o\);

-- Location: IOIBUF_X51_Y34_N1
\GPIO_2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(2),
	o => \GPIO_2[2]~input_o\);

-- Location: IOIBUF_X53_Y30_N8
\GPIO_2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(3),
	o => \GPIO_2[3]~input_o\);

-- Location: IOIBUF_X53_Y30_N1
\GPIO_2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(4),
	o => \GPIO_2[4]~input_o\);

-- Location: IOIBUF_X53_Y25_N1
\GPIO_2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(5),
	o => \GPIO_2[5]~input_o\);

-- Location: IOIBUF_X53_Y26_N22
\GPIO_2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(6),
	o => \GPIO_2[6]~input_o\);

-- Location: IOIBUF_X51_Y34_N8
\GPIO_2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(7),
	o => \GPIO_2[7]~input_o\);

-- Location: IOIBUF_X53_Y22_N8
\GPIO_2[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(8),
	o => \GPIO_2[8]~input_o\);

-- Location: IOIBUF_X53_Y21_N15
\GPIO_2[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(9),
	o => \GPIO_2[9]~input_o\);

-- Location: IOIBUF_X53_Y24_N22
\GPIO_2[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(10),
	o => \GPIO_2[10]~input_o\);

-- Location: IOIBUF_X53_Y20_N22
\GPIO_2[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(11),
	o => \GPIO_2[11]~input_o\);

-- Location: IOIBUF_X53_Y20_N15
\GPIO_2[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_2(12),
	o => \GPIO_2[12]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\GPIO_0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(0),
	o => \GPIO_0[0]~input_o\);

-- Location: IOIBUF_X1_Y34_N1
\GPIO_0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(1),
	o => \GPIO_0[1]~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\GPIO_0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(2),
	o => \GPIO_0[2]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\GPIO_0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(3),
	o => \GPIO_0[3]~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\GPIO_0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(4),
	o => \GPIO_0[4]~input_o\);

-- Location: IOIBUF_X7_Y34_N1
\GPIO_0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(5),
	o => \GPIO_0[5]~input_o\);

-- Location: IOIBUF_X9_Y34_N22
\GPIO_0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(6),
	o => \GPIO_0[6]~input_o\);

-- Location: IOIBUF_X11_Y34_N1
\GPIO_0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(7),
	o => \GPIO_0[7]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\GPIO_0[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(8),
	o => \GPIO_0[8]~input_o\);

-- Location: IOIBUF_X5_Y34_N15
\GPIO_0[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(9),
	o => \GPIO_0[9]~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\GPIO_0[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(10),
	o => \GPIO_0[10]~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\GPIO_0[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(11),
	o => \GPIO_0[11]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\GPIO_0[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(12),
	o => \GPIO_0[12]~input_o\);

-- Location: IOIBUF_X9_Y34_N8
\GPIO_0[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(13),
	o => \GPIO_0[13]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\GPIO_0[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(14),
	o => \GPIO_0[14]~input_o\);

-- Location: IOIBUF_X18_Y34_N22
\GPIO_0[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(15),
	o => \GPIO_0[15]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\GPIO_0[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(16),
	o => \GPIO_0[16]~input_o\);

-- Location: IOIBUF_X14_Y34_N15
\GPIO_0[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(17),
	o => \GPIO_0[17]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\GPIO_0[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(18),
	o => \GPIO_0[18]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\GPIO_0[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(19),
	o => \GPIO_0[19]~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\GPIO_0[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(20),
	o => \GPIO_0[20]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\GPIO_0[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(21),
	o => \GPIO_0[21]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\GPIO_1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(0),
	o => \GPIO_1[0]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\GPIO_1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(1),
	o => \GPIO_1[1]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\GPIO_1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(2),
	o => \GPIO_1[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\GPIO_1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(3),
	o => \GPIO_1[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\GPIO_1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(4),
	o => \GPIO_1[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\GPIO_1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(5),
	o => \GPIO_1[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N15
\GPIO_1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(6),
	o => \GPIO_1[6]~input_o\);

-- Location: IOIBUF_X36_Y0_N22
\GPIO_1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(7),
	o => \GPIO_1[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\GPIO_1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(8),
	o => \GPIO_1[8]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\GPIO_1[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(9),
	o => \GPIO_1[9]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\GPIO_1[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(10),
	o => \GPIO_1[10]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\GPIO_1[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(11),
	o => \GPIO_1[11]~input_o\);

-- Location: IOIBUF_X47_Y0_N22
\GPIO_1[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(12),
	o => \GPIO_1[12]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\GPIO_1[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(13),
	o => \GPIO_1[13]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\GPIO_1[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(14),
	o => \GPIO_1[14]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\GPIO_1[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(15),
	o => \GPIO_1[15]~input_o\);

-- Location: IOIBUF_X53_Y11_N8
\GPIO_1[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(16),
	o => \GPIO_1[16]~input_o\);

-- Location: IOIBUF_X53_Y12_N1
\GPIO_1[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(17),
	o => \GPIO_1[17]~input_o\);

-- Location: IOIBUF_X53_Y8_N22
\GPIO_1[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(18),
	o => \GPIO_1[18]~input_o\);

-- Location: IOIBUF_X53_Y11_N1
\GPIO_1[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(19),
	o => \GPIO_1[19]~input_o\);

-- Location: IOIBUF_X53_Y6_N15
\GPIO_1[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(20),
	o => \GPIO_1[20]~input_o\);

-- Location: IOIBUF_X53_Y7_N8
\GPIO_1[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(21),
	o => \GPIO_1[21]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\GPIO_1[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(22),
	o => \GPIO_1[22]~input_o\);

-- Location: IOIBUF_X53_Y9_N22
\GPIO_1[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(23),
	o => \GPIO_1[23]~input_o\);

-- Location: IOIBUF_X53_Y9_N15
\GPIO_1[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(24),
	o => \GPIO_1[24]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\GPIO_1[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(25),
	o => \GPIO_1[25]~input_o\);

-- Location: IOIBUF_X53_Y9_N8
\GPIO_1[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(26),
	o => \GPIO_1[26]~input_o\);

-- Location: IOIBUF_X53_Y6_N22
\GPIO_1[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(27),
	o => \GPIO_1[27]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\GPIO_1[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(28),
	o => \GPIO_1[28]~input_o\);

-- Location: IOIBUF_X53_Y10_N15
\GPIO_1[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(29),
	o => \GPIO_1[29]~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\GPIO_1[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(30),
	o => \GPIO_1[30]~input_o\);

-- Location: IOIBUF_X53_Y13_N8
\GPIO_1[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(31),
	o => \GPIO_1[31]~input_o\);

-- Location: IOIBUF_X53_Y16_N8
\GPIO_1[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(32),
	o => \GPIO_1[32]~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\GPIO_1[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_1(33),
	o => \GPIO_1[33]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\GPIO_0[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(22),
	o => \GPIO_0[22]~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\GPIO_0[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(23),
	o => \GPIO_0[23]~input_o\);

-- Location: IOIBUF_X31_Y34_N1
\GPIO_0[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(24),
	o => \GPIO_0[24]~input_o\);

-- Location: IOIBUF_X31_Y34_N8
\GPIO_0[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(25),
	o => \GPIO_0[25]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\GPIO_0[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(26),
	o => \GPIO_0[26]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\GPIO_0[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(27),
	o => \GPIO_0[27]~input_o\);

-- Location: IOIBUF_X38_Y34_N1
\GPIO_0[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(28),
	o => \GPIO_0[28]~input_o\);

-- Location: IOIBUF_X40_Y34_N8
\GPIO_0[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(29),
	o => \GPIO_0[29]~input_o\);

-- Location: IOIBUF_X43_Y34_N15
\GPIO_0[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(30),
	o => \GPIO_0[30]~input_o\);

-- Location: IOIBUF_X51_Y34_N15
\GPIO_0[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(31),
	o => \GPIO_0[31]~input_o\);

-- Location: IOIBUF_X51_Y34_N22
\GPIO_0[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(32),
	o => \GPIO_0[32]~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\GPIO_0[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO_0(33),
	o => \GPIO_0[33]~input_o\);
END structure;


