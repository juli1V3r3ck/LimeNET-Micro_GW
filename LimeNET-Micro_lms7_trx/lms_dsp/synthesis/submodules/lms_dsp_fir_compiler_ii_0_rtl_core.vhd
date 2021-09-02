-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #625)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from lms_dsp_fir_compiler_ii_0_rtl_core
-- VHDL created on Thu Jun 24 18:57:03 2021


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity lms_dsp_fir_compiler_ii_0_rtl_core is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(11 downto 0);  -- sfix12
        xIn_1 : in std_logic_vector(11 downto 0);  -- sfix12
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(26 downto 0);  -- sfix27
        xOut_1 : out std_logic_vector(26 downto 0);  -- sfix27
        clk : in std_logic;
        areset : in std_logic
    );
end lms_dsp_fir_compiler_ii_0_rtl_core;

architecture normal of lms_dsp_fir_compiler_ii_0_rtl_core is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_memread_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_12_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_17_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr2_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr4_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr6_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr7_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr7_q_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr8_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr8_q_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr9_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr9_q_13_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr10_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr11_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr12_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr12_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr13_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr13_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr14_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr14_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr15_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr16_q_12_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr17_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr17_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr18_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr18_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr19_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr19_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr20_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr21_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr21_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr22_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr22_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr23_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr24_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr25_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr26_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr26_q_12_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr27_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr28_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr28_q_12_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr29_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr30_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr31_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr32_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr32_q_15_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr33_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_mtree_add0_4_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_4_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_4_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_4_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_6_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_6_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_6_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_6_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_8_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_8_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_8_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_8_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add0_9_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add0_9_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add0_9_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add0_9_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add0_10_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add0_10_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add0_10_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add0_10_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add0_11_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_11_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_11_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_11_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add0_13_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_13_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_13_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_13_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_14_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_14_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_14_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_14_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add0_16_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_16_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_16_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add0_16_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_add1_2_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add1_2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add1_2_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add1_2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_add1_3_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add1_3_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add1_3_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add1_3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add1_4_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add1_4_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add1_4_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add1_4_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add1_5_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add1_5_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add1_5_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add1_5_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u0_m0_wo0_mtree_add1_6_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add1_6_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add1_6_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add1_6_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add1_7_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add1_7_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add1_7_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add1_7_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_add2_1_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add2_1_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add2_1_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add2_1_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_add2_2_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add2_2_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add2_2_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add2_2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u0_m0_wo0_mtree_add2_3_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add2_3_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add2_3_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add2_3_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add3_0_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add3_0_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add3_0_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add3_0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u0_m0_wo0_mtree_add3_1_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add3_1_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add3_1_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add3_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u0_m0_wo0_mtree_add4_0_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add4_0_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add4_0_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add4_0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u0_m0_wo0_mtree_add5_0_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add5_0_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add5_0_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_add5_0_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr1_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr2_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr3_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr4_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr5_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr6_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr7_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr7_q_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr8_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr8_q_16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr9_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr9_q_13_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr10_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr11_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr12_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr12_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr13_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr13_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr14_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr14_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr15_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr16_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr16_q_12_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr17_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr17_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr18_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr18_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr19_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr19_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr20_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr21_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr21_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr22_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr22_q_11_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr23_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr24_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr25_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr26_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr26_q_12_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr27_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr28_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr28_q_12_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr29_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr30_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr31_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr32_q : STD_LOGIC_VECTOR (11 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr32_q_15_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr33_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u1_m0_wo0_mtree_add0_4_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_add0_4_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_add0_4_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_add0_4_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_add0_6_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add0_6_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add0_6_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add0_6_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add0_8_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_add0_8_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_add0_8_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_add0_8_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_add0_9_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add0_9_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add0_9_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add0_9_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add0_10_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add0_10_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add0_10_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add0_10_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add0_11_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_add0_11_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_add0_11_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_add0_11_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_add0_13_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add0_13_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add0_13_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add0_13_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add0_14_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add0_14_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add0_14_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add0_14_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add0_16_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_add0_16_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_add0_16_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_add0_16_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_add1_2_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add1_2_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add1_2_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add1_2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_add1_3_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_add1_3_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_add1_3_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_add1_3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_add1_4_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u1_m0_wo0_mtree_add1_4_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u1_m0_wo0_mtree_add1_4_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u1_m0_wo0_mtree_add1_4_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u1_m0_wo0_mtree_add1_5_a : STD_LOGIC_VECTOR (20 downto 0);
    signal u1_m0_wo0_mtree_add1_5_b : STD_LOGIC_VECTOR (20 downto 0);
    signal u1_m0_wo0_mtree_add1_5_o : STD_LOGIC_VECTOR (20 downto 0);
    signal u1_m0_wo0_mtree_add1_5_q : STD_LOGIC_VECTOR (20 downto 0);
    signal u1_m0_wo0_mtree_add1_6_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_add1_6_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_add1_6_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_add1_6_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_add1_7_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_add1_7_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_add1_7_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_add1_7_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_add2_1_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_add2_1_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_add2_1_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_add2_1_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_add2_2_a : STD_LOGIC_VECTOR (21 downto 0);
    signal u1_m0_wo0_mtree_add2_2_b : STD_LOGIC_VECTOR (21 downto 0);
    signal u1_m0_wo0_mtree_add2_2_o : STD_LOGIC_VECTOR (21 downto 0);
    signal u1_m0_wo0_mtree_add2_2_q : STD_LOGIC_VECTOR (21 downto 0);
    signal u1_m0_wo0_mtree_add2_3_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add2_3_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add2_3_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add2_3_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add3_0_a : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add3_0_b : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add3_0_o : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add3_0_q : STD_LOGIC_VECTOR (19 downto 0);
    signal u1_m0_wo0_mtree_add3_1_a : STD_LOGIC_VECTOR (22 downto 0);
    signal u1_m0_wo0_mtree_add3_1_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u1_m0_wo0_mtree_add3_1_o : STD_LOGIC_VECTOR (22 downto 0);
    signal u1_m0_wo0_mtree_add3_1_q : STD_LOGIC_VECTOR (22 downto 0);
    signal u1_m0_wo0_mtree_add4_0_a : STD_LOGIC_VECTOR (23 downto 0);
    signal u1_m0_wo0_mtree_add4_0_b : STD_LOGIC_VECTOR (23 downto 0);
    signal u1_m0_wo0_mtree_add4_0_o : STD_LOGIC_VECTOR (23 downto 0);
    signal u1_m0_wo0_mtree_add4_0_q : STD_LOGIC_VECTOR (23 downto 0);
    signal u1_m0_wo0_mtree_add5_0_a : STD_LOGIC_VECTOR (24 downto 0);
    signal u1_m0_wo0_mtree_add5_0_b : STD_LOGIC_VECTOR (24 downto 0);
    signal u1_m0_wo0_mtree_add5_0_o : STD_LOGIC_VECTOR (24 downto 0);
    signal u1_m0_wo0_mtree_add5_0_q : STD_LOGIC_VECTOR (24 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_sub_1_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_sub_1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_sub_1_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_sub_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_add_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_3_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_3_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_3_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_add_3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_add_1_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_add_1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_add_1_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_add_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_3_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_3_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_3_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_sub_3_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_3_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_3_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_3_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_3_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_5_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_5_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_5_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_add_5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_add_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_sub_3_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_sub_3_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_sub_3_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_sub_3_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_3_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_3_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_3_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_add_3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_add_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_sub_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_29_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_29_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_29_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_29_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_28_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_28_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_28_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_28_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_27_sub_1_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_27_sub_1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_27_sub_1_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_27_sub_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_26_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_26_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_26_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_26_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_24_add_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_24_add_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_24_add_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_24_add_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_23_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_23_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_23_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_23_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_22_add_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_22_add_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_22_add_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_22_add_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_22_add_3_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_22_add_3_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_22_add_3_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_22_add_3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_21_add_1_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_21_add_1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_21_add_1_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_21_add_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_21_sub_3_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_mult1_21_sub_3_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_mult1_21_sub_3_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_mult1_21_sub_3_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_add_3_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_add_3_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_add_3_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_add_3_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_add_5_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_add_5_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_add_5_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_add_5_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_mult1_19_add_1_a : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_19_add_1_b : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_19_add_1_o : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_19_add_1_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_19_sub_3_a : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_mult1_19_sub_3_b : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_mult1_19_sub_3_o : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_mult1_19_sub_3_q : STD_LOGIC_VECTOR (18 downto 0);
    signal u1_m0_wo0_mtree_mult1_18_add_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_18_add_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_18_add_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_18_add_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_18_add_3_a : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_18_add_3_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_18_add_3_o : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_18_add_3_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_17_add_1_a : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_17_add_1_b : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_17_add_1_o : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_17_add_1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_16_add_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_16_add_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_16_add_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_16_add_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_14_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_14_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_14_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_14_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_13_sub_1_a : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_13_sub_1_b : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_13_sub_1_o : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_13_sub_1_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_12_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_12_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_12_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_12_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_11_sub_1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_11_sub_1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_11_sub_1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_11_sub_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_32_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_31_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_29_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_shift0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_27_shift0_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_22_shift2_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift0_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift0_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift2_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_21_shift2_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift2_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift0_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift0_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift2_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_19_shift2_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_18_shift2_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_shift0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_13_shift0_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_11_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_9_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_8_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_32_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_32_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_31_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_31_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_29_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_29_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_28_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_28_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_27_shift0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_27_shift0_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_26_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_26_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_24_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_24_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_23_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_23_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_22_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_22_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_22_shift2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_22_shift2_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_21_shift0_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_21_shift0_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_21_shift2_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_21_shift2_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_shift2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_shift2_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_19_shift0_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_19_shift0_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_19_shift2_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_19_shift2_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_18_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_18_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_18_shift2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_18_shift2_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_17_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_17_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_16_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_16_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_14_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_14_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_13_shift0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_13_shift0_qint : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_mult1_12_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_12_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_11_shift0_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_11_shift0_qint : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_mtree_mult1_9_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_9_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_8_shift0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_mtree_mult1_8_shift0_qint : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_28_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_26_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_24_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_23_shift2_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift4_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_20_shift4_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_17_shift2_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_16_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_14_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u0_m0_wo0_mtree_mult1_12_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_28_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_28_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_26_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_26_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_24_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_24_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_23_shift2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_23_shift2_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_shift4_q : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_20_shift4_qint : STD_LOGIC_VECTOR (17 downto 0);
    signal u1_m0_wo0_mtree_mult1_17_shift2_q : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_17_shift2_qint : STD_LOGIC_VECTOR (16 downto 0);
    signal u1_m0_wo0_mtree_mult1_16_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_16_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_14_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_14_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_12_shift2_q : STD_LOGIC_VECTOR (15 downto 0);
    signal u1_m0_wo0_mtree_mult1_12_shift2_qint : STD_LOGIC_VECTOR (15 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- u1_m0_wo0_wi0_r0_delayr1(DELAY,199)@10
    u1_m0_wo0_wi0_r0_delayr1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_1, xout => u1_m0_wo0_wi0_r0_delayr1_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr2(DELAY,200)@10
    u1_m0_wo0_wi0_r0_delayr2 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr1_q, xout => u1_m0_wo0_wi0_r0_delayr2_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr3(DELAY,201)@10
    u1_m0_wo0_wi0_r0_delayr3 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr2_q, xout => u1_m0_wo0_wi0_r0_delayr3_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr4(DELAY,202)@10
    u1_m0_wo0_wi0_r0_delayr4 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr3_q, xout => u1_m0_wo0_wi0_r0_delayr4_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr5(DELAY,203)@10
    u1_m0_wo0_wi0_r0_delayr5 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr4_q, xout => u1_m0_wo0_wi0_r0_delayr5_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr6(DELAY,204)@10
    u1_m0_wo0_wi0_r0_delayr6 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr5_q, xout => u1_m0_wo0_wi0_r0_delayr6_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr7(DELAY,205)@10
    u1_m0_wo0_wi0_r0_delayr7 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr6_q, xout => u1_m0_wo0_wi0_r0_delayr7_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr7_q_16(DELAY,565)@10 + 6
    d_u1_m0_wo0_wi0_r0_delayr7_q_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr7_q, xout => d_u1_m0_wo0_wi0_r0_delayr7_q_16_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr8(DELAY,206)@10
    u1_m0_wo0_wi0_r0_delayr8 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr7_q, xout => u1_m0_wo0_wi0_r0_delayr8_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr8_q_16(DELAY,566)@10 + 6
    d_u1_m0_wo0_wi0_r0_delayr8_q_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr8_q, xout => d_u1_m0_wo0_wi0_r0_delayr8_q_16_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_32_shift0(BITSHIFT,484)@16
    u1_m0_wo0_mtree_mult1_32_shift0_qint <= d_u1_m0_wo0_wi0_r0_delayr8_q_16_q & "0";
    u1_m0_wo0_mtree_mult1_32_shift0_q <= u1_m0_wo0_mtree_mult1_32_shift0_qint(12 downto 0);

    -- u1_m0_wo0_mtree_add0_16(ADD,340)@16 + 1
    u1_m0_wo0_mtree_add0_16_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u1_m0_wo0_mtree_mult1_32_shift0_q(12)) & u1_m0_wo0_mtree_mult1_32_shift0_q));
    u1_m0_wo0_mtree_add0_16_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => d_u1_m0_wo0_wi0_r0_delayr7_q_16_q(11)) & d_u1_m0_wo0_wi0_r0_delayr7_q_16_q));
    u1_m0_wo0_mtree_add0_16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add0_16_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add0_16_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add0_16_a) + SIGNED(u1_m0_wo0_mtree_add0_16_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add0_16_q <= u1_m0_wo0_mtree_add0_16_o(13 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr9(DELAY,207)@10
    u1_m0_wo0_wi0_r0_delayr9 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr8_q, xout => u1_m0_wo0_wi0_r0_delayr9_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr9_q_13(DELAY,567)@10 + 3
    d_u1_m0_wo0_wi0_r0_delayr9_q_13 : dspba_delay
    GENERIC MAP ( width => 12, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr9_q, xout => d_u1_m0_wo0_wi0_r0_delayr9_q_13_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_31_shift0(BITSHIFT,485)@13
    u1_m0_wo0_mtree_mult1_31_shift0_qint <= d_u1_m0_wo0_wi0_r0_delayr9_q_13_q & "0";
    u1_m0_wo0_mtree_mult1_31_shift0_q <= u1_m0_wo0_mtree_mult1_31_shift0_qint(12 downto 0);

    -- u1_m0_wo0_mtree_mult1_29_shift0(BITSHIFT,486)@11
    u1_m0_wo0_mtree_mult1_29_shift0_qint <= d_u1_m0_wo0_wi0_r0_delayr11_q_11_q & "00";
    u1_m0_wo0_mtree_mult1_29_shift0_q <= u1_m0_wo0_mtree_mult1_29_shift0_qint(13 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr10(DELAY,208)@10
    u1_m0_wo0_wi0_r0_delayr10 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr9_q, xout => u1_m0_wo0_wi0_r0_delayr10_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr11(DELAY,209)@10
    u1_m0_wo0_wi0_r0_delayr11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr10_q, xout => u1_m0_wo0_wi0_r0_delayr11_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr11_q_11(DELAY,568)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr11_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr11_q, xout => d_u1_m0_wo0_wi0_r0_delayr11_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_29_sub_1(SUB,487)@11 + 1
    u1_m0_wo0_mtree_mult1_29_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => d_u1_m0_wo0_wi0_r0_delayr11_q_11_q(11)) & d_u1_m0_wo0_wi0_r0_delayr11_q_11_q));
    u1_m0_wo0_mtree_mult1_29_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_mtree_mult1_29_shift0_q(13)) & u1_m0_wo0_mtree_mult1_29_shift0_q));
    u1_m0_wo0_mtree_mult1_29_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_29_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_29_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_29_sub_1_a) - SIGNED(u1_m0_wo0_mtree_mult1_29_sub_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_29_sub_1_q <= u1_m0_wo0_mtree_mult1_29_sub_1_o(14 downto 0);

    -- u1_m0_wo0_mtree_mult1_28_shift0(BITSHIFT,488)@11
    u1_m0_wo0_mtree_mult1_28_shift0_qint <= d_u1_m0_wo0_wi0_r0_delayr12_q_11_q & "00";
    u1_m0_wo0_mtree_mult1_28_shift0_q <= u1_m0_wo0_mtree_mult1_28_shift0_qint(13 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr12(DELAY,210)@10
    u1_m0_wo0_wi0_r0_delayr12 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr11_q, xout => u1_m0_wo0_wi0_r0_delayr12_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr12_q_11(DELAY,569)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr12_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr12_q, xout => d_u1_m0_wo0_wi0_r0_delayr12_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_28_sub_1(SUB,489)@11 + 1
    u1_m0_wo0_mtree_mult1_28_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => d_u1_m0_wo0_wi0_r0_delayr12_q_11_q(11)) & d_u1_m0_wo0_wi0_r0_delayr12_q_11_q));
    u1_m0_wo0_mtree_mult1_28_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_mtree_mult1_28_shift0_q(13)) & u1_m0_wo0_mtree_mult1_28_shift0_q));
    u1_m0_wo0_mtree_mult1_28_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_28_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_28_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_28_sub_1_a) - SIGNED(u1_m0_wo0_mtree_mult1_28_sub_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_28_sub_1_q <= u1_m0_wo0_mtree_mult1_28_sub_1_o(14 downto 0);

    -- u1_m0_wo0_mtree_mult1_28_shift2(BITSHIFT,490)@12
    u1_m0_wo0_mtree_mult1_28_shift2_qint <= u1_m0_wo0_mtree_mult1_28_sub_1_q & "0";
    u1_m0_wo0_mtree_mult1_28_shift2_q <= u1_m0_wo0_mtree_mult1_28_shift2_qint(15 downto 0);

    -- u1_m0_wo0_mtree_add0_14(ADD,338)@12 + 1
    u1_m0_wo0_mtree_add0_14_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u1_m0_wo0_mtree_mult1_28_shift2_q(15)) & u1_m0_wo0_mtree_mult1_28_shift2_q));
    u1_m0_wo0_mtree_add0_14_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => u1_m0_wo0_mtree_mult1_29_sub_1_q(14)) & u1_m0_wo0_mtree_mult1_29_sub_1_q));
    u1_m0_wo0_mtree_add0_14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add0_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add0_14_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add0_14_a) + SIGNED(u1_m0_wo0_mtree_add0_14_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add0_14_q <= u1_m0_wo0_mtree_add0_14_o(16 downto 0);

    -- u1_m0_wo0_mtree_add1_7(ADD,351)@13 + 1
    u1_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u1_m0_wo0_mtree_add0_14_q(16)) & u1_m0_wo0_mtree_add0_14_q));
    u1_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 13 => u1_m0_wo0_mtree_mult1_31_shift0_q(12)) & u1_m0_wo0_mtree_mult1_31_shift0_q));
    u1_m0_wo0_mtree_add1_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add1_7_a) + SIGNED(u1_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add1_7_q <= u1_m0_wo0_mtree_add1_7_o(17 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr13(DELAY,211)@10
    u1_m0_wo0_wi0_r0_delayr13 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr12_q, xout => u1_m0_wo0_wi0_r0_delayr13_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr13_q_11(DELAY,570)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr13_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr13_q, xout => d_u1_m0_wo0_wi0_r0_delayr13_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_27_shift0(BITSHIFT,491)@11
    u1_m0_wo0_mtree_mult1_27_shift0_qint <= d_u1_m0_wo0_wi0_r0_delayr13_q_11_q & "000";
    u1_m0_wo0_mtree_mult1_27_shift0_q <= u1_m0_wo0_mtree_mult1_27_shift0_qint(14 downto 0);

    -- u1_m0_wo0_mtree_mult1_27_sub_1(SUB,492)@11 + 1
    u1_m0_wo0_mtree_mult1_27_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => GND_q(0)) & GND_q));
    u1_m0_wo0_mtree_mult1_27_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u1_m0_wo0_mtree_mult1_27_shift0_q(14)) & u1_m0_wo0_mtree_mult1_27_shift0_q));
    u1_m0_wo0_mtree_mult1_27_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_27_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_27_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_27_sub_1_a) - SIGNED(u1_m0_wo0_mtree_mult1_27_sub_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_27_sub_1_q <= u1_m0_wo0_mtree_mult1_27_sub_1_o(15 downto 0);

    -- u1_m0_wo0_mtree_mult1_26_shift0(BITSHIFT,493)@11
    u1_m0_wo0_mtree_mult1_26_shift0_qint <= d_u1_m0_wo0_wi0_r0_delayr14_q_11_q & "00";
    u1_m0_wo0_mtree_mult1_26_shift0_q <= u1_m0_wo0_mtree_mult1_26_shift0_qint(13 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr14(DELAY,212)@10
    u1_m0_wo0_wi0_r0_delayr14 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr13_q, xout => u1_m0_wo0_wi0_r0_delayr14_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr14_q_11(DELAY,571)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr14_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr14_q, xout => d_u1_m0_wo0_wi0_r0_delayr14_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_26_sub_1(SUB,494)@11 + 1
    u1_m0_wo0_mtree_mult1_26_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => d_u1_m0_wo0_wi0_r0_delayr14_q_11_q(11)) & d_u1_m0_wo0_wi0_r0_delayr14_q_11_q));
    u1_m0_wo0_mtree_mult1_26_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_mtree_mult1_26_shift0_q(13)) & u1_m0_wo0_mtree_mult1_26_shift0_q));
    u1_m0_wo0_mtree_mult1_26_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_26_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_26_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_26_sub_1_a) - SIGNED(u1_m0_wo0_mtree_mult1_26_sub_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_26_sub_1_q <= u1_m0_wo0_mtree_mult1_26_sub_1_o(14 downto 0);

    -- u1_m0_wo0_mtree_mult1_26_shift2(BITSHIFT,495)@12
    u1_m0_wo0_mtree_mult1_26_shift2_qint <= u1_m0_wo0_mtree_mult1_26_sub_1_q & "0";
    u1_m0_wo0_mtree_mult1_26_shift2_q <= u1_m0_wo0_mtree_mult1_26_shift2_qint(15 downto 0);

    -- u1_m0_wo0_mtree_add0_13(ADD,337)@12 + 1
    u1_m0_wo0_mtree_add0_13_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u1_m0_wo0_mtree_mult1_26_shift2_q(15)) & u1_m0_wo0_mtree_mult1_26_shift2_q));
    u1_m0_wo0_mtree_add0_13_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u1_m0_wo0_mtree_mult1_27_sub_1_q(15)) & u1_m0_wo0_mtree_mult1_27_sub_1_q));
    u1_m0_wo0_mtree_add0_13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add0_13_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add0_13_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add0_13_a) + SIGNED(u1_m0_wo0_mtree_add0_13_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add0_13_q <= u1_m0_wo0_mtree_add0_13_o(16 downto 0);

    -- u1_m0_wo0_mtree_mult1_24_shift0(BITSHIFT,496)@12
    u1_m0_wo0_mtree_mult1_24_shift0_qint <= d_u1_m0_wo0_wi0_r0_delayr16_q_12_q & "00";
    u1_m0_wo0_mtree_mult1_24_shift0_q <= u1_m0_wo0_mtree_mult1_24_shift0_qint(13 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr15(DELAY,213)@10
    u1_m0_wo0_wi0_r0_delayr15 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr14_q, xout => u1_m0_wo0_wi0_r0_delayr15_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr16(DELAY,214)@10
    u1_m0_wo0_wi0_r0_delayr16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr15_q, xout => u1_m0_wo0_wi0_r0_delayr16_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr16_q_12(DELAY,572)@10 + 2
    d_u1_m0_wo0_wi0_r0_delayr16_q_12 : dspba_delay
    GENERIC MAP ( width => 12, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr16_q, xout => d_u1_m0_wo0_wi0_r0_delayr16_q_12_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_24_add_1(ADD,497)@12 + 1
    u1_m0_wo0_mtree_mult1_24_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => d_u1_m0_wo0_wi0_r0_delayr16_q_12_q(11)) & d_u1_m0_wo0_wi0_r0_delayr16_q_12_q));
    u1_m0_wo0_mtree_mult1_24_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_mtree_mult1_24_shift0_q(13)) & u1_m0_wo0_mtree_mult1_24_shift0_q));
    u1_m0_wo0_mtree_mult1_24_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_24_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_24_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_24_add_1_a) + SIGNED(u1_m0_wo0_mtree_mult1_24_add_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_24_add_1_q <= u1_m0_wo0_mtree_mult1_24_add_1_o(14 downto 0);

    -- u1_m0_wo0_mtree_mult1_24_shift2(BITSHIFT,498)@13
    u1_m0_wo0_mtree_mult1_24_shift2_qint <= u1_m0_wo0_mtree_mult1_24_add_1_q & "0";
    u1_m0_wo0_mtree_mult1_24_shift2_q <= u1_m0_wo0_mtree_mult1_24_shift2_qint(15 downto 0);

    -- u1_m0_wo0_mtree_add1_6(ADD,350)@13 + 1
    u1_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 16 => u1_m0_wo0_mtree_mult1_24_shift2_q(15)) & u1_m0_wo0_mtree_mult1_24_shift2_q));
    u1_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u1_m0_wo0_mtree_add0_13_q(16)) & u1_m0_wo0_mtree_add0_13_q));
    u1_m0_wo0_mtree_add1_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add1_6_a) + SIGNED(u1_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add1_6_q <= u1_m0_wo0_mtree_add1_6_o(18 downto 0);

    -- u1_m0_wo0_mtree_add2_3(ADD,357)@14 + 1
    u1_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u1_m0_wo0_mtree_add1_6_q(18)) & u1_m0_wo0_mtree_add1_6_q));
    u1_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => u1_m0_wo0_mtree_add1_7_q(17)) & u1_m0_wo0_mtree_add1_7_q));
    u1_m0_wo0_mtree_add2_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add2_3_a) + SIGNED(u1_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add2_3_q <= u1_m0_wo0_mtree_add2_3_o(19 downto 0);

    -- u1_m0_wo0_mtree_mult1_23_shift0(BITSHIFT,499)@11
    u1_m0_wo0_mtree_mult1_23_shift0_qint <= d_u1_m0_wo0_wi0_r0_delayr17_q_11_q & "0";
    u1_m0_wo0_mtree_mult1_23_shift0_q <= u1_m0_wo0_mtree_mult1_23_shift0_qint(12 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr17(DELAY,215)@10
    u1_m0_wo0_wi0_r0_delayr17 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr16_q, xout => u1_m0_wo0_wi0_r0_delayr17_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr17_q_11(DELAY,573)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr17_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr17_q, xout => d_u1_m0_wo0_wi0_r0_delayr17_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_23_add_1(ADD,500)@11 + 1
    u1_m0_wo0_mtree_mult1_23_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => d_u1_m0_wo0_wi0_r0_delayr17_q_11_q(11)) & d_u1_m0_wo0_wi0_r0_delayr17_q_11_q));
    u1_m0_wo0_mtree_mult1_23_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u1_m0_wo0_mtree_mult1_23_shift0_q(12)) & u1_m0_wo0_mtree_mult1_23_shift0_q));
    u1_m0_wo0_mtree_mult1_23_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_23_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_23_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_23_add_1_a) + SIGNED(u1_m0_wo0_mtree_mult1_23_add_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_23_add_1_q <= u1_m0_wo0_mtree_mult1_23_add_1_o(13 downto 0);

    -- u1_m0_wo0_mtree_mult1_23_shift2(BITSHIFT,501)@12
    u1_m0_wo0_mtree_mult1_23_shift2_qint <= u1_m0_wo0_mtree_mult1_23_add_1_q & "000";
    u1_m0_wo0_mtree_mult1_23_shift2_q <= u1_m0_wo0_mtree_mult1_23_shift2_qint(16 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr18(DELAY,216)@10
    u1_m0_wo0_wi0_r0_delayr18 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr17_q, xout => u1_m0_wo0_wi0_r0_delayr18_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr18_q_11(DELAY,574)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr18_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr18_q, xout => d_u1_m0_wo0_wi0_r0_delayr18_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_22_shift2(BITSHIFT,504)@11
    u1_m0_wo0_mtree_mult1_22_shift2_qint <= d_u1_m0_wo0_wi0_r0_delayr18_q_11_q & "00000";
    u1_m0_wo0_mtree_mult1_22_shift2_q <= u1_m0_wo0_mtree_mult1_22_shift2_qint(16 downto 0);

    -- u1_m0_wo0_mtree_mult1_22_shift0(BITSHIFT,502)@10
    u1_m0_wo0_mtree_mult1_22_shift0_qint <= u1_m0_wo0_wi0_r0_delayr18_q & "00";
    u1_m0_wo0_mtree_mult1_22_shift0_q <= u1_m0_wo0_mtree_mult1_22_shift0_qint(13 downto 0);

    -- u1_m0_wo0_mtree_mult1_22_add_1(ADD,503)@10 + 1
    u1_m0_wo0_mtree_mult1_22_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => u1_m0_wo0_wi0_r0_delayr18_q(11)) & u1_m0_wo0_wi0_r0_delayr18_q));
    u1_m0_wo0_mtree_mult1_22_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_mtree_mult1_22_shift0_q(13)) & u1_m0_wo0_mtree_mult1_22_shift0_q));
    u1_m0_wo0_mtree_mult1_22_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_22_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_22_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_22_add_1_a) + SIGNED(u1_m0_wo0_mtree_mult1_22_add_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_22_add_1_q <= u1_m0_wo0_mtree_mult1_22_add_1_o(14 downto 0);

    -- u1_m0_wo0_mtree_mult1_22_add_3(ADD,505)@11 + 1
    u1_m0_wo0_mtree_mult1_22_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 15 => u1_m0_wo0_mtree_mult1_22_add_1_q(14)) & u1_m0_wo0_mtree_mult1_22_add_1_q));
    u1_m0_wo0_mtree_mult1_22_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u1_m0_wo0_mtree_mult1_22_shift2_q(16)) & u1_m0_wo0_mtree_mult1_22_shift2_q));
    u1_m0_wo0_mtree_mult1_22_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_22_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_22_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_22_add_3_a) + SIGNED(u1_m0_wo0_mtree_mult1_22_add_3_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_22_add_3_q <= u1_m0_wo0_mtree_mult1_22_add_3_o(17 downto 0);

    -- u1_m0_wo0_mtree_add0_11(ADD,335)@12 + 1
    u1_m0_wo0_mtree_add0_11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u1_m0_wo0_mtree_mult1_22_add_3_q(17)) & u1_m0_wo0_mtree_mult1_22_add_3_q));
    u1_m0_wo0_mtree_add0_11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u1_m0_wo0_mtree_mult1_23_shift2_q(16)) & u1_m0_wo0_mtree_mult1_23_shift2_q));
    u1_m0_wo0_mtree_add0_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add0_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add0_11_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add0_11_a) + SIGNED(u1_m0_wo0_mtree_add0_11_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add0_11_q <= u1_m0_wo0_mtree_add0_11_o(18 downto 0);

    -- u1_m0_wo0_mtree_mult1_21_shift0(BITSHIFT,506)@10
    u1_m0_wo0_mtree_mult1_21_shift0_qint <= u1_m0_wo0_wi0_r0_delayr19_q & "0000";
    u1_m0_wo0_mtree_mult1_21_shift0_q <= u1_m0_wo0_mtree_mult1_21_shift0_qint(15 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr19(DELAY,217)@10
    u1_m0_wo0_wi0_r0_delayr19 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr18_q, xout => u1_m0_wo0_wi0_r0_delayr19_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_21_add_1(ADD,507)@10 + 1
    u1_m0_wo0_mtree_mult1_21_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 12 => u1_m0_wo0_wi0_r0_delayr19_q(11)) & u1_m0_wo0_wi0_r0_delayr19_q));
    u1_m0_wo0_mtree_mult1_21_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u1_m0_wo0_mtree_mult1_21_shift0_q(15)) & u1_m0_wo0_mtree_mult1_21_shift0_q));
    u1_m0_wo0_mtree_mult1_21_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_21_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_21_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_21_add_1_a) + SIGNED(u1_m0_wo0_mtree_mult1_21_add_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_21_add_1_q <= u1_m0_wo0_mtree_mult1_21_add_1_o(16 downto 0);

    -- d_u1_m0_wo0_wi0_r0_delayr19_q_11(DELAY,575)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr19_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr19_q, xout => d_u1_m0_wo0_wi0_r0_delayr19_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_21_shift2(BITSHIFT,508)@11
    u1_m0_wo0_mtree_mult1_21_shift2_qint <= d_u1_m0_wo0_wi0_r0_delayr19_q_11_q & "000000";
    u1_m0_wo0_mtree_mult1_21_shift2_q <= u1_m0_wo0_mtree_mult1_21_shift2_qint(17 downto 0);

    -- u1_m0_wo0_mtree_mult1_21_sub_3(SUB,509)@11 + 1
    u1_m0_wo0_mtree_mult1_21_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u1_m0_wo0_mtree_mult1_21_shift2_q(17)) & u1_m0_wo0_mtree_mult1_21_shift2_q));
    u1_m0_wo0_mtree_mult1_21_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u1_m0_wo0_mtree_mult1_21_add_1_q(16)) & u1_m0_wo0_mtree_mult1_21_add_1_q));
    u1_m0_wo0_mtree_mult1_21_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_21_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_21_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_21_sub_3_a) - SIGNED(u1_m0_wo0_mtree_mult1_21_sub_3_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_21_sub_3_q <= u1_m0_wo0_mtree_mult1_21_sub_3_o(18 downto 0);

    -- u1_m0_wo0_mtree_mult1_20_shift2(BITSHIFT,512)@10
    u1_m0_wo0_mtree_mult1_20_shift2_qint <= u1_m0_wo0_wi0_r0_delayr20_q & "0";
    u1_m0_wo0_mtree_mult1_20_shift2_q <= u1_m0_wo0_mtree_mult1_20_shift2_qint(12 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr20(DELAY,218)@10
    u1_m0_wo0_wi0_r0_delayr20 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr19_q, xout => u1_m0_wo0_wi0_r0_delayr20_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_20_add_3(ADD,513)@10 + 1
    u1_m0_wo0_mtree_mult1_20_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => u1_m0_wo0_wi0_r0_delayr20_q(11)) & u1_m0_wo0_wi0_r0_delayr20_q));
    u1_m0_wo0_mtree_mult1_20_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u1_m0_wo0_mtree_mult1_20_shift2_q(12)) & u1_m0_wo0_mtree_mult1_20_shift2_q));
    u1_m0_wo0_mtree_mult1_20_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_20_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_20_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_20_add_3_a) + SIGNED(u1_m0_wo0_mtree_mult1_20_add_3_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_20_add_3_q <= u1_m0_wo0_mtree_mult1_20_add_3_o(13 downto 0);

    -- u1_m0_wo0_mtree_mult1_20_shift4(BITSHIFT,514)@11
    u1_m0_wo0_mtree_mult1_20_shift4_qint <= u1_m0_wo0_mtree_mult1_20_add_3_q & "0000";
    u1_m0_wo0_mtree_mult1_20_shift4_q <= u1_m0_wo0_mtree_mult1_20_shift4_qint(17 downto 0);

    -- u1_m0_wo0_mtree_mult1_20_shift0(BITSHIFT,510)@10
    u1_m0_wo0_mtree_mult1_20_shift0_qint <= u1_m0_wo0_wi0_r0_delayr20_q & "0";
    u1_m0_wo0_mtree_mult1_20_shift0_q <= u1_m0_wo0_mtree_mult1_20_shift0_qint(12 downto 0);

    -- u1_m0_wo0_mtree_mult1_20_add_1(ADD,511)@10 + 1
    u1_m0_wo0_mtree_mult1_20_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => u1_m0_wo0_wi0_r0_delayr20_q(11)) & u1_m0_wo0_wi0_r0_delayr20_q));
    u1_m0_wo0_mtree_mult1_20_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u1_m0_wo0_mtree_mult1_20_shift0_q(12)) & u1_m0_wo0_mtree_mult1_20_shift0_q));
    u1_m0_wo0_mtree_mult1_20_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_20_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_20_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_20_add_1_a) + SIGNED(u1_m0_wo0_mtree_mult1_20_add_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_20_add_1_q <= u1_m0_wo0_mtree_mult1_20_add_1_o(13 downto 0);

    -- u1_m0_wo0_mtree_mult1_20_add_5(ADD,515)@11 + 1
    u1_m0_wo0_mtree_mult1_20_add_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 14 => u1_m0_wo0_mtree_mult1_20_add_1_q(13)) & u1_m0_wo0_mtree_mult1_20_add_1_q));
    u1_m0_wo0_mtree_mult1_20_add_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u1_m0_wo0_mtree_mult1_20_shift4_q(17)) & u1_m0_wo0_mtree_mult1_20_shift4_q));
    u1_m0_wo0_mtree_mult1_20_add_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_20_add_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_20_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_20_add_5_a) + SIGNED(u1_m0_wo0_mtree_mult1_20_add_5_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_20_add_5_q <= u1_m0_wo0_mtree_mult1_20_add_5_o(18 downto 0);

    -- u1_m0_wo0_mtree_add0_10(ADD,334)@12 + 1
    u1_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u1_m0_wo0_mtree_mult1_20_add_5_q(18)) & u1_m0_wo0_mtree_mult1_20_add_5_q));
    u1_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u1_m0_wo0_mtree_mult1_21_sub_3_q(18)) & u1_m0_wo0_mtree_mult1_21_sub_3_q));
    u1_m0_wo0_mtree_add0_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add0_10_a) + SIGNED(u1_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add0_10_q <= u1_m0_wo0_mtree_add0_10_o(19 downto 0);

    -- u1_m0_wo0_mtree_add1_5(ADD,349)@13 + 1
    u1_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u1_m0_wo0_mtree_add0_10_q(19)) & u1_m0_wo0_mtree_add0_10_q));
    u1_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => u1_m0_wo0_mtree_add0_11_q(18)) & u1_m0_wo0_mtree_add0_11_q));
    u1_m0_wo0_mtree_add1_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add1_5_a) + SIGNED(u1_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add1_5_q <= u1_m0_wo0_mtree_add1_5_o(20 downto 0);

    -- u1_m0_wo0_mtree_mult1_19_shift0(BITSHIFT,516)@10
    u1_m0_wo0_mtree_mult1_19_shift0_qint <= u1_m0_wo0_wi0_r0_delayr21_q & "0000";
    u1_m0_wo0_mtree_mult1_19_shift0_q <= u1_m0_wo0_mtree_mult1_19_shift0_qint(15 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr21(DELAY,219)@10
    u1_m0_wo0_wi0_r0_delayr21 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr20_q, xout => u1_m0_wo0_wi0_r0_delayr21_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_19_add_1(ADD,517)@10 + 1
    u1_m0_wo0_mtree_mult1_19_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 12 => u1_m0_wo0_wi0_r0_delayr21_q(11)) & u1_m0_wo0_wi0_r0_delayr21_q));
    u1_m0_wo0_mtree_mult1_19_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u1_m0_wo0_mtree_mult1_19_shift0_q(15)) & u1_m0_wo0_mtree_mult1_19_shift0_q));
    u1_m0_wo0_mtree_mult1_19_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_19_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_19_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_19_add_1_a) + SIGNED(u1_m0_wo0_mtree_mult1_19_add_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_19_add_1_q <= u1_m0_wo0_mtree_mult1_19_add_1_o(16 downto 0);

    -- d_u1_m0_wo0_wi0_r0_delayr21_q_11(DELAY,576)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr21_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr21_q, xout => d_u1_m0_wo0_wi0_r0_delayr21_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_19_shift2(BITSHIFT,518)@11
    u1_m0_wo0_mtree_mult1_19_shift2_qint <= d_u1_m0_wo0_wi0_r0_delayr21_q_11_q & "000000";
    u1_m0_wo0_mtree_mult1_19_shift2_q <= u1_m0_wo0_mtree_mult1_19_shift2_qint(17 downto 0);

    -- u1_m0_wo0_mtree_mult1_19_sub_3(SUB,519)@11 + 1
    u1_m0_wo0_mtree_mult1_19_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u1_m0_wo0_mtree_mult1_19_shift2_q(17)) & u1_m0_wo0_mtree_mult1_19_shift2_q));
    u1_m0_wo0_mtree_mult1_19_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u1_m0_wo0_mtree_mult1_19_add_1_q(16)) & u1_m0_wo0_mtree_mult1_19_add_1_q));
    u1_m0_wo0_mtree_mult1_19_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_19_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_19_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_19_sub_3_a) - SIGNED(u1_m0_wo0_mtree_mult1_19_sub_3_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_19_sub_3_q <= u1_m0_wo0_mtree_mult1_19_sub_3_o(18 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr22(DELAY,220)@10
    u1_m0_wo0_wi0_r0_delayr22 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr21_q, xout => u1_m0_wo0_wi0_r0_delayr22_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr22_q_11(DELAY,577)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr22_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr22_q, xout => d_u1_m0_wo0_wi0_r0_delayr22_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_18_shift2(BITSHIFT,522)@11
    u1_m0_wo0_mtree_mult1_18_shift2_qint <= d_u1_m0_wo0_wi0_r0_delayr22_q_11_q & "00000";
    u1_m0_wo0_mtree_mult1_18_shift2_q <= u1_m0_wo0_mtree_mult1_18_shift2_qint(16 downto 0);

    -- u1_m0_wo0_mtree_mult1_18_shift0(BITSHIFT,520)@10
    u1_m0_wo0_mtree_mult1_18_shift0_qint <= u1_m0_wo0_wi0_r0_delayr22_q & "00";
    u1_m0_wo0_mtree_mult1_18_shift0_q <= u1_m0_wo0_mtree_mult1_18_shift0_qint(13 downto 0);

    -- u1_m0_wo0_mtree_mult1_18_add_1(ADD,521)@10 + 1
    u1_m0_wo0_mtree_mult1_18_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => u1_m0_wo0_wi0_r0_delayr22_q(11)) & u1_m0_wo0_wi0_r0_delayr22_q));
    u1_m0_wo0_mtree_mult1_18_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_mtree_mult1_18_shift0_q(13)) & u1_m0_wo0_mtree_mult1_18_shift0_q));
    u1_m0_wo0_mtree_mult1_18_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_18_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_18_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_18_add_1_a) + SIGNED(u1_m0_wo0_mtree_mult1_18_add_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_18_add_1_q <= u1_m0_wo0_mtree_mult1_18_add_1_o(14 downto 0);

    -- u1_m0_wo0_mtree_mult1_18_add_3(ADD,523)@11 + 1
    u1_m0_wo0_mtree_mult1_18_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 15 => u1_m0_wo0_mtree_mult1_18_add_1_q(14)) & u1_m0_wo0_mtree_mult1_18_add_1_q));
    u1_m0_wo0_mtree_mult1_18_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u1_m0_wo0_mtree_mult1_18_shift2_q(16)) & u1_m0_wo0_mtree_mult1_18_shift2_q));
    u1_m0_wo0_mtree_mult1_18_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_18_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_18_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_18_add_3_a) + SIGNED(u1_m0_wo0_mtree_mult1_18_add_3_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_18_add_3_q <= u1_m0_wo0_mtree_mult1_18_add_3_o(17 downto 0);

    -- u1_m0_wo0_mtree_add0_9(ADD,333)@12 + 1
    u1_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => u1_m0_wo0_mtree_mult1_18_add_3_q(17)) & u1_m0_wo0_mtree_mult1_18_add_3_q));
    u1_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u1_m0_wo0_mtree_mult1_19_sub_3_q(18)) & u1_m0_wo0_mtree_mult1_19_sub_3_q));
    u1_m0_wo0_mtree_add0_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add0_9_a) + SIGNED(u1_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add0_9_q <= u1_m0_wo0_mtree_add0_9_o(19 downto 0);

    -- u1_m0_wo0_mtree_mult1_17_shift0(BITSHIFT,524)@11
    u1_m0_wo0_mtree_mult1_17_shift0_qint <= u1_m0_wo0_wi0_r0_delayr23_q & "0";
    u1_m0_wo0_mtree_mult1_17_shift0_q <= u1_m0_wo0_mtree_mult1_17_shift0_qint(12 downto 0);

    -- d_u0_m0_wo0_memread_q_11(DELAY,542)@10 + 1
    d_u0_m0_wo0_memread_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_memread_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_11(DELAY,545)@10 + 1
    d_u0_m0_wo0_compute_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_compute_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr23(DELAY,221)@11
    u1_m0_wo0_wi0_r0_delayr23 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u1_m0_wo0_wi0_r0_delayr22_q_11_q, xout => u1_m0_wo0_wi0_r0_delayr23_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_17_add_1(ADD,525)@11 + 1
    u1_m0_wo0_mtree_mult1_17_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => u1_m0_wo0_wi0_r0_delayr23_q(11)) & u1_m0_wo0_wi0_r0_delayr23_q));
    u1_m0_wo0_mtree_mult1_17_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u1_m0_wo0_mtree_mult1_17_shift0_q(12)) & u1_m0_wo0_mtree_mult1_17_shift0_q));
    u1_m0_wo0_mtree_mult1_17_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_17_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_17_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_17_add_1_a) + SIGNED(u1_m0_wo0_mtree_mult1_17_add_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_17_add_1_q <= u1_m0_wo0_mtree_mult1_17_add_1_o(13 downto 0);

    -- u1_m0_wo0_mtree_mult1_17_shift2(BITSHIFT,526)@12
    u1_m0_wo0_mtree_mult1_17_shift2_qint <= u1_m0_wo0_mtree_mult1_17_add_1_q & "000";
    u1_m0_wo0_mtree_mult1_17_shift2_q <= u1_m0_wo0_mtree_mult1_17_shift2_qint(16 downto 0);

    -- u1_m0_wo0_mtree_mult1_16_shift0(BITSHIFT,527)@11
    u1_m0_wo0_mtree_mult1_16_shift0_qint <= u1_m0_wo0_wi0_r0_delayr24_q & "00";
    u1_m0_wo0_mtree_mult1_16_shift0_q <= u1_m0_wo0_mtree_mult1_16_shift0_qint(13 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr24(DELAY,222)@11
    u1_m0_wo0_wi0_r0_delayr24 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr23_q, xout => u1_m0_wo0_wi0_r0_delayr24_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_16_add_1(ADD,528)@11 + 1
    u1_m0_wo0_mtree_mult1_16_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => u1_m0_wo0_wi0_r0_delayr24_q(11)) & u1_m0_wo0_wi0_r0_delayr24_q));
    u1_m0_wo0_mtree_mult1_16_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_mtree_mult1_16_shift0_q(13)) & u1_m0_wo0_mtree_mult1_16_shift0_q));
    u1_m0_wo0_mtree_mult1_16_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_16_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_16_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_16_add_1_a) + SIGNED(u1_m0_wo0_mtree_mult1_16_add_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_16_add_1_q <= u1_m0_wo0_mtree_mult1_16_add_1_o(14 downto 0);

    -- u1_m0_wo0_mtree_mult1_16_shift2(BITSHIFT,529)@12
    u1_m0_wo0_mtree_mult1_16_shift2_qint <= u1_m0_wo0_mtree_mult1_16_add_1_q & "0";
    u1_m0_wo0_mtree_mult1_16_shift2_q <= u1_m0_wo0_mtree_mult1_16_shift2_qint(15 downto 0);

    -- u1_m0_wo0_mtree_add0_8(ADD,332)@12 + 1
    u1_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => u1_m0_wo0_mtree_mult1_16_shift2_q(15)) & u1_m0_wo0_mtree_mult1_16_shift2_q));
    u1_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u1_m0_wo0_mtree_mult1_17_shift2_q(16)) & u1_m0_wo0_mtree_mult1_17_shift2_q));
    u1_m0_wo0_mtree_add0_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add0_8_a) + SIGNED(u1_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add0_8_q <= u1_m0_wo0_mtree_add0_8_o(17 downto 0);

    -- u1_m0_wo0_mtree_add1_4(ADD,348)@13 + 1
    u1_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => u1_m0_wo0_mtree_add0_8_q(17)) & u1_m0_wo0_mtree_add0_8_q));
    u1_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u1_m0_wo0_mtree_add0_9_q(19)) & u1_m0_wo0_mtree_add0_9_q));
    u1_m0_wo0_mtree_add1_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add1_4_a) + SIGNED(u1_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add1_4_q <= u1_m0_wo0_mtree_add1_4_o(20 downto 0);

    -- u1_m0_wo0_mtree_add2_2(ADD,356)@14 + 1
    u1_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u1_m0_wo0_mtree_add1_4_q(20)) & u1_m0_wo0_mtree_add1_4_q));
    u1_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u1_m0_wo0_mtree_add1_5_q(20)) & u1_m0_wo0_mtree_add1_5_q));
    u1_m0_wo0_mtree_add2_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add2_2_a) + SIGNED(u1_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add2_2_q <= u1_m0_wo0_mtree_add2_2_o(21 downto 0);

    -- u1_m0_wo0_mtree_add3_1(ADD,360)@15 + 1
    u1_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u1_m0_wo0_mtree_add2_2_q(21)) & u1_m0_wo0_mtree_add2_2_q));
    u1_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 20 => u1_m0_wo0_mtree_add2_3_q(19)) & u1_m0_wo0_mtree_add2_3_q));
    u1_m0_wo0_mtree_add3_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add3_1_a) + SIGNED(u1_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add3_1_q <= u1_m0_wo0_mtree_add3_1_o(22 downto 0);

    -- u1_m0_wo0_mtree_mult1_14_shift0(BITSHIFT,530)@12
    u1_m0_wo0_mtree_mult1_14_shift0_qint <= d_u1_m0_wo0_wi0_r0_delayr26_q_12_q & "00";
    u1_m0_wo0_mtree_mult1_14_shift0_q <= u1_m0_wo0_mtree_mult1_14_shift0_qint(13 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr25(DELAY,223)@11
    u1_m0_wo0_wi0_r0_delayr25 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr24_q, xout => u1_m0_wo0_wi0_r0_delayr25_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr26(DELAY,224)@11
    u1_m0_wo0_wi0_r0_delayr26 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr25_q, xout => u1_m0_wo0_wi0_r0_delayr26_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr26_q_12(DELAY,578)@11 + 1
    d_u1_m0_wo0_wi0_r0_delayr26_q_12 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr26_q, xout => d_u1_m0_wo0_wi0_r0_delayr26_q_12_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_14_sub_1(SUB,531)@12 + 1
    u1_m0_wo0_mtree_mult1_14_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => d_u1_m0_wo0_wi0_r0_delayr26_q_12_q(11)) & d_u1_m0_wo0_wi0_r0_delayr26_q_12_q));
    u1_m0_wo0_mtree_mult1_14_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_mtree_mult1_14_shift0_q(13)) & u1_m0_wo0_mtree_mult1_14_shift0_q));
    u1_m0_wo0_mtree_mult1_14_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_14_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_14_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_14_sub_1_a) - SIGNED(u1_m0_wo0_mtree_mult1_14_sub_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_14_sub_1_q <= u1_m0_wo0_mtree_mult1_14_sub_1_o(14 downto 0);

    -- u1_m0_wo0_mtree_mult1_14_shift2(BITSHIFT,532)@13
    u1_m0_wo0_mtree_mult1_14_shift2_qint <= u1_m0_wo0_mtree_mult1_14_sub_1_q & "0";
    u1_m0_wo0_mtree_mult1_14_shift2_q <= u1_m0_wo0_mtree_mult1_14_shift2_qint(15 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr27(DELAY,225)@11
    u1_m0_wo0_wi0_r0_delayr27 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr26_q, xout => u1_m0_wo0_wi0_r0_delayr27_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_13_shift0(BITSHIFT,533)@11
    u1_m0_wo0_mtree_mult1_13_shift0_qint <= u1_m0_wo0_wi0_r0_delayr27_q & "000";
    u1_m0_wo0_mtree_mult1_13_shift0_q <= u1_m0_wo0_mtree_mult1_13_shift0_qint(14 downto 0);

    -- u1_m0_wo0_mtree_mult1_13_sub_1(SUB,534)@11 + 1
    u1_m0_wo0_mtree_mult1_13_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => GND_q(0)) & GND_q));
    u1_m0_wo0_mtree_mult1_13_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u1_m0_wo0_mtree_mult1_13_shift0_q(14)) & u1_m0_wo0_mtree_mult1_13_shift0_q));
    u1_m0_wo0_mtree_mult1_13_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_13_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_13_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_13_sub_1_a) - SIGNED(u1_m0_wo0_mtree_mult1_13_sub_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_13_sub_1_q <= u1_m0_wo0_mtree_mult1_13_sub_1_o(15 downto 0);

    -- u1_m0_wo0_mtree_mult1_12_shift0(BITSHIFT,535)@11
    u1_m0_wo0_mtree_mult1_12_shift0_qint <= u1_m0_wo0_wi0_r0_delayr28_q & "00";
    u1_m0_wo0_mtree_mult1_12_shift0_q <= u1_m0_wo0_mtree_mult1_12_shift0_qint(13 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr28(DELAY,226)@11
    u1_m0_wo0_wi0_r0_delayr28 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr27_q, xout => u1_m0_wo0_wi0_r0_delayr28_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_12_sub_1(SUB,536)@11 + 1
    u1_m0_wo0_mtree_mult1_12_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => u1_m0_wo0_wi0_r0_delayr28_q(11)) & u1_m0_wo0_wi0_r0_delayr28_q));
    u1_m0_wo0_mtree_mult1_12_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_mtree_mult1_12_shift0_q(13)) & u1_m0_wo0_mtree_mult1_12_shift0_q));
    u1_m0_wo0_mtree_mult1_12_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_12_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_12_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_12_sub_1_a) - SIGNED(u1_m0_wo0_mtree_mult1_12_sub_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_12_sub_1_q <= u1_m0_wo0_mtree_mult1_12_sub_1_o(14 downto 0);

    -- u1_m0_wo0_mtree_mult1_12_shift2(BITSHIFT,537)@12
    u1_m0_wo0_mtree_mult1_12_shift2_qint <= u1_m0_wo0_mtree_mult1_12_sub_1_q & "0";
    u1_m0_wo0_mtree_mult1_12_shift2_q <= u1_m0_wo0_mtree_mult1_12_shift2_qint(15 downto 0);

    -- u1_m0_wo0_mtree_add0_6(ADD,330)@12 + 1
    u1_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u1_m0_wo0_mtree_mult1_12_shift2_q(15)) & u1_m0_wo0_mtree_mult1_12_shift2_q));
    u1_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u1_m0_wo0_mtree_mult1_13_sub_1_q(15)) & u1_m0_wo0_mtree_mult1_13_sub_1_q));
    u1_m0_wo0_mtree_add0_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add0_6_a) + SIGNED(u1_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add0_6_q <= u1_m0_wo0_mtree_add0_6_o(16 downto 0);

    -- u1_m0_wo0_mtree_add1_3(ADD,347)@13 + 1
    u1_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u1_m0_wo0_mtree_add0_6_q(16)) & u1_m0_wo0_mtree_add0_6_q));
    u1_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => u1_m0_wo0_mtree_mult1_14_shift2_q(15)) & u1_m0_wo0_mtree_mult1_14_shift2_q));
    u1_m0_wo0_mtree_add1_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add1_3_a) + SIGNED(u1_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add1_3_q <= u1_m0_wo0_mtree_add1_3_o(17 downto 0);

    -- u1_m0_wo0_mtree_mult1_11_shift0(BITSHIFT,538)@12
    u1_m0_wo0_mtree_mult1_11_shift0_qint <= u1_m0_wo0_wi0_r0_delayr29_q & "00";
    u1_m0_wo0_mtree_mult1_11_shift0_q <= u1_m0_wo0_mtree_mult1_11_shift0_qint(13 downto 0);

    -- d_u0_m0_wo0_memread_q_12(DELAY,543)@11 + 1
    d_u0_m0_wo0_memread_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_11_q, xout => d_u0_m0_wo0_memread_q_12_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_12(DELAY,546)@11 + 1
    d_u0_m0_wo0_compute_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_11_q, xout => d_u0_m0_wo0_compute_q_12_q, clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr28_q_12(DELAY,579)@11 + 1
    d_u1_m0_wo0_wi0_r0_delayr28_q_12 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr28_q, xout => d_u1_m0_wo0_wi0_r0_delayr28_q_12_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr29(DELAY,227)@12
    u1_m0_wo0_wi0_r0_delayr29 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u1_m0_wo0_wi0_r0_delayr28_q_12_q, xout => u1_m0_wo0_wi0_r0_delayr29_q, ena => d_u0_m0_wo0_compute_q_12_q(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_11_sub_1(SUB,539)@12 + 1
    u1_m0_wo0_mtree_mult1_11_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => u1_m0_wo0_wi0_r0_delayr29_q(11)) & u1_m0_wo0_wi0_r0_delayr29_q));
    u1_m0_wo0_mtree_mult1_11_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_mtree_mult1_11_shift0_q(13)) & u1_m0_wo0_mtree_mult1_11_shift0_q));
    u1_m0_wo0_mtree_mult1_11_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_mult1_11_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_mult1_11_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_mult1_11_sub_1_a) - SIGNED(u1_m0_wo0_mtree_mult1_11_sub_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_mult1_11_sub_1_q <= u1_m0_wo0_mtree_mult1_11_sub_1_o(14 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr30(DELAY,228)@12
    u1_m0_wo0_wi0_r0_delayr30 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr29_q, xout => u1_m0_wo0_wi0_r0_delayr30_q, ena => d_u0_m0_wo0_compute_q_12_q(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr31(DELAY,229)@12
    u1_m0_wo0_wi0_r0_delayr31 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr30_q, xout => u1_m0_wo0_wi0_r0_delayr31_q, ena => d_u0_m0_wo0_compute_q_12_q(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_9_shift0(BITSHIFT,540)@12
    u1_m0_wo0_mtree_mult1_9_shift0_qint <= u1_m0_wo0_wi0_r0_delayr31_q & "0";
    u1_m0_wo0_mtree_mult1_9_shift0_q <= u1_m0_wo0_mtree_mult1_9_shift0_qint(12 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr32(DELAY,230)@12
    u1_m0_wo0_wi0_r0_delayr32 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr31_q, xout => u1_m0_wo0_wi0_r0_delayr32_q, ena => d_u0_m0_wo0_compute_q_12_q(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_mult1_8_shift0(BITSHIFT,541)@12
    u1_m0_wo0_mtree_mult1_8_shift0_qint <= u1_m0_wo0_wi0_r0_delayr32_q & "0";
    u1_m0_wo0_mtree_mult1_8_shift0_q <= u1_m0_wo0_mtree_mult1_8_shift0_qint(12 downto 0);

    -- u1_m0_wo0_mtree_add0_4(ADD,328)@12 + 1
    u1_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u1_m0_wo0_mtree_mult1_8_shift0_q(12)) & u1_m0_wo0_mtree_mult1_8_shift0_q));
    u1_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u1_m0_wo0_mtree_mult1_9_shift0_q(12)) & u1_m0_wo0_mtree_mult1_9_shift0_q));
    u1_m0_wo0_mtree_add0_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add0_4_a) + SIGNED(u1_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add0_4_q <= u1_m0_wo0_mtree_add0_4_o(13 downto 0);

    -- u1_m0_wo0_mtree_add1_2(ADD,346)@13 + 1
    u1_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 14 => u1_m0_wo0_mtree_add0_4_q(13)) & u1_m0_wo0_mtree_add0_4_q));
    u1_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => u1_m0_wo0_mtree_mult1_11_sub_1_q(14)) & u1_m0_wo0_mtree_mult1_11_sub_1_q));
    u1_m0_wo0_mtree_add1_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add1_2_a) + SIGNED(u1_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add1_2_q <= u1_m0_wo0_mtree_add1_2_o(16 downto 0);

    -- u1_m0_wo0_mtree_add2_1(ADD,355)@14 + 1
    u1_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u1_m0_wo0_mtree_add1_2_q(16)) & u1_m0_wo0_mtree_add1_2_q));
    u1_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u1_m0_wo0_mtree_add1_3_q(17)) & u1_m0_wo0_mtree_add1_3_q));
    u1_m0_wo0_mtree_add2_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add2_1_a) + SIGNED(u1_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add2_1_q <= u1_m0_wo0_mtree_add2_1_o(18 downto 0);

    -- d_u0_m0_wo0_memread_q_15(DELAY,544)@12 + 3
    d_u0_m0_wo0_memread_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_12_q, xout => d_u0_m0_wo0_memread_q_15_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_15(DELAY,547)@12 + 3
    d_u0_m0_wo0_compute_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_12_q, xout => d_u0_m0_wo0_compute_q_15_q, clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr32_q_15(DELAY,580)@12 + 3
    d_u1_m0_wo0_wi0_r0_delayr32_q_15 : dspba_delay
    GENERIC MAP ( width => 12, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr32_q, xout => d_u1_m0_wo0_wi0_r0_delayr32_q_15_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr33(DELAY,231)@15
    u1_m0_wo0_wi0_r0_delayr33 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u1_m0_wo0_wi0_r0_delayr32_q_15_q, xout => u1_m0_wo0_wi0_r0_delayr33_q, ena => d_u0_m0_wo0_compute_q_15_q(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_mtree_add3_0(ADD,359)@15 + 1
    u1_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 12 => u1_m0_wo0_wi0_r0_delayr33_q(11)) & u1_m0_wo0_wi0_r0_delayr33_q));
    u1_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u1_m0_wo0_mtree_add2_1_q(18)) & u1_m0_wo0_mtree_add2_1_q));
    u1_m0_wo0_mtree_add3_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add3_0_a) + SIGNED(u1_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add3_0_q <= u1_m0_wo0_mtree_add3_0_o(19 downto 0);

    -- u1_m0_wo0_mtree_add4_0(ADD,362)@16 + 1
    u1_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 20 => u1_m0_wo0_mtree_add3_0_q(19)) & u1_m0_wo0_mtree_add3_0_q));
    u1_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u1_m0_wo0_mtree_add3_1_q(22)) & u1_m0_wo0_mtree_add3_1_q));
    u1_m0_wo0_mtree_add4_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add4_0_a) + SIGNED(u1_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add4_0_q <= u1_m0_wo0_mtree_add4_0_o(23 downto 0);

    -- u1_m0_wo0_mtree_add5_0(ADD,363)@17 + 1
    u1_m0_wo0_mtree_add5_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u1_m0_wo0_mtree_add4_0_q(23)) & u1_m0_wo0_mtree_add4_0_q));
    u1_m0_wo0_mtree_add5_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 14 => u1_m0_wo0_mtree_add0_16_q(13)) & u1_m0_wo0_mtree_add0_16_q));
    u1_m0_wo0_mtree_add5_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add5_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add5_0_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add5_0_a) + SIGNED(u1_m0_wo0_mtree_add5_0_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add5_0_q <= u1_m0_wo0_mtree_add5_0_o(24 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr1(DELAY,21)@10
    u0_m0_wo0_wi0_r0_delayr1 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => xIn_0, xout => u0_m0_wo0_wi0_r0_delayr1_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr2(DELAY,22)@10
    u0_m0_wo0_wi0_r0_delayr2 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr1_q, xout => u0_m0_wo0_wi0_r0_delayr2_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr3(DELAY,23)@10
    u0_m0_wo0_wi0_r0_delayr3 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr2_q, xout => u0_m0_wo0_wi0_r0_delayr3_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr4(DELAY,24)@10
    u0_m0_wo0_wi0_r0_delayr4 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr3_q, xout => u0_m0_wo0_wi0_r0_delayr4_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr5(DELAY,25)@10
    u0_m0_wo0_wi0_r0_delayr5 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr4_q, xout => u0_m0_wo0_wi0_r0_delayr5_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr6(DELAY,26)@10
    u0_m0_wo0_wi0_r0_delayr6 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr5_q, xout => u0_m0_wo0_wi0_r0_delayr6_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr7(DELAY,27)@10
    u0_m0_wo0_wi0_r0_delayr7 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr6_q, xout => u0_m0_wo0_wi0_r0_delayr7_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr7_q_16(DELAY,549)@10 + 6
    d_u0_m0_wo0_wi0_r0_delayr7_q_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr7_q, xout => d_u0_m0_wo0_wi0_r0_delayr7_q_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr8(DELAY,28)@10
    u0_m0_wo0_wi0_r0_delayr8 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr7_q, xout => u0_m0_wo0_wi0_r0_delayr8_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr8_q_16(DELAY,550)@10 + 6
    d_u0_m0_wo0_wi0_r0_delayr8_q_16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 6, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr8_q, xout => d_u0_m0_wo0_wi0_r0_delayr8_q_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_32_shift0(BITSHIFT,426)@16
    u0_m0_wo0_mtree_mult1_32_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr8_q_16_q & "0";
    u0_m0_wo0_mtree_mult1_32_shift0_q <= u0_m0_wo0_mtree_mult1_32_shift0_qint(12 downto 0);

    -- u0_m0_wo0_mtree_add0_16(ADD,162)@16 + 1
    u0_m0_wo0_mtree_add0_16_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_32_shift0_q(12)) & u0_m0_wo0_mtree_mult1_32_shift0_q));
    u0_m0_wo0_mtree_add0_16_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => d_u0_m0_wo0_wi0_r0_delayr7_q_16_q(11)) & d_u0_m0_wo0_wi0_r0_delayr7_q_16_q));
    u0_m0_wo0_mtree_add0_16_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_16_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_16_a) + SIGNED(u0_m0_wo0_mtree_add0_16_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_16_q <= u0_m0_wo0_mtree_add0_16_o(13 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr9(DELAY,29)@10
    u0_m0_wo0_wi0_r0_delayr9 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr8_q, xout => u0_m0_wo0_wi0_r0_delayr9_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr9_q_13(DELAY,551)@10 + 3
    d_u0_m0_wo0_wi0_r0_delayr9_q_13 : dspba_delay
    GENERIC MAP ( width => 12, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr9_q, xout => d_u0_m0_wo0_wi0_r0_delayr9_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_31_shift0(BITSHIFT,427)@13
    u0_m0_wo0_mtree_mult1_31_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr9_q_13_q & "0";
    u0_m0_wo0_mtree_mult1_31_shift0_q <= u0_m0_wo0_mtree_mult1_31_shift0_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_29_shift0(BITSHIFT,428)@11
    u0_m0_wo0_mtree_mult1_29_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr11_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_29_shift0_q <= u0_m0_wo0_mtree_mult1_29_shift0_qint(13 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr10(DELAY,30)@10
    u0_m0_wo0_wi0_r0_delayr10 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr9_q, xout => u0_m0_wo0_wi0_r0_delayr10_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr11(DELAY,31)@10
    u0_m0_wo0_wi0_r0_delayr11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr10_q, xout => u0_m0_wo0_wi0_r0_delayr11_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr11_q_11(DELAY,552)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr11_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr11_q, xout => d_u0_m0_wo0_wi0_r0_delayr11_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_29_sub_1(SUB,429)@11 + 1
    u0_m0_wo0_mtree_mult1_29_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => d_u0_m0_wo0_wi0_r0_delayr11_q_11_q(11)) & d_u0_m0_wo0_wi0_r0_delayr11_q_11_q));
    u0_m0_wo0_mtree_mult1_29_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_29_shift0_q(13)) & u0_m0_wo0_mtree_mult1_29_shift0_q));
    u0_m0_wo0_mtree_mult1_29_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_29_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_29_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_29_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_29_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_29_sub_1_q <= u0_m0_wo0_mtree_mult1_29_sub_1_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_shift0(BITSHIFT,430)@11
    u0_m0_wo0_mtree_mult1_28_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr12_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_28_shift0_q <= u0_m0_wo0_mtree_mult1_28_shift0_qint(13 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr12(DELAY,32)@10
    u0_m0_wo0_wi0_r0_delayr12 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr11_q, xout => u0_m0_wo0_wi0_r0_delayr12_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr12_q_11(DELAY,553)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr12_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr12_q, xout => d_u0_m0_wo0_wi0_r0_delayr12_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_28_sub_1(SUB,431)@11 + 1
    u0_m0_wo0_mtree_mult1_28_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => d_u0_m0_wo0_wi0_r0_delayr12_q_11_q(11)) & d_u0_m0_wo0_wi0_r0_delayr12_q_11_q));
    u0_m0_wo0_mtree_mult1_28_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_28_shift0_q(13)) & u0_m0_wo0_mtree_mult1_28_shift0_q));
    u0_m0_wo0_mtree_mult1_28_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_28_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_28_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_28_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_28_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_28_sub_1_q <= u0_m0_wo0_mtree_mult1_28_sub_1_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_28_shift2(BITSHIFT,432)@12
    u0_m0_wo0_mtree_mult1_28_shift2_qint <= u0_m0_wo0_mtree_mult1_28_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_28_shift2_q <= u0_m0_wo0_mtree_mult1_28_shift2_qint(15 downto 0);

    -- u0_m0_wo0_mtree_add0_14(ADD,160)@12 + 1
    u0_m0_wo0_mtree_add0_14_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_28_shift2_q(15)) & u0_m0_wo0_mtree_mult1_28_shift2_q));
    u0_m0_wo0_mtree_add0_14_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => u0_m0_wo0_mtree_mult1_29_sub_1_q(14)) & u0_m0_wo0_mtree_mult1_29_sub_1_q));
    u0_m0_wo0_mtree_add0_14_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_14_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_14_a) + SIGNED(u0_m0_wo0_mtree_add0_14_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_14_q <= u0_m0_wo0_mtree_add0_14_o(16 downto 0);

    -- u0_m0_wo0_mtree_add1_7(ADD,173)@13 + 1
    u0_m0_wo0_mtree_add1_7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_add0_14_q(16)) & u0_m0_wo0_mtree_add0_14_q));
    u0_m0_wo0_mtree_add1_7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 13 => u0_m0_wo0_mtree_mult1_31_shift0_q(12)) & u0_m0_wo0_mtree_mult1_31_shift0_q));
    u0_m0_wo0_mtree_add1_7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_7_a) + SIGNED(u0_m0_wo0_mtree_add1_7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_7_q <= u0_m0_wo0_mtree_add1_7_o(17 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr13(DELAY,33)@10
    u0_m0_wo0_wi0_r0_delayr13 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr12_q, xout => u0_m0_wo0_wi0_r0_delayr13_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr13_q_11(DELAY,554)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr13_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr13_q, xout => d_u0_m0_wo0_wi0_r0_delayr13_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_27_shift0(BITSHIFT,433)@11
    u0_m0_wo0_mtree_mult1_27_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr13_q_11_q & "000";
    u0_m0_wo0_mtree_mult1_27_shift0_q <= u0_m0_wo0_mtree_mult1_27_shift0_qint(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_27_sub_1(SUB,434)@11 + 1
    u0_m0_wo0_mtree_mult1_27_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_27_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_27_shift0_q(14)) & u0_m0_wo0_mtree_mult1_27_shift0_q));
    u0_m0_wo0_mtree_mult1_27_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_27_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_27_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_27_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_27_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_27_sub_1_q <= u0_m0_wo0_mtree_mult1_27_sub_1_o(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_26_shift0(BITSHIFT,435)@11
    u0_m0_wo0_mtree_mult1_26_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr14_q_11_q & "00";
    u0_m0_wo0_mtree_mult1_26_shift0_q <= u0_m0_wo0_mtree_mult1_26_shift0_qint(13 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr14(DELAY,34)@10
    u0_m0_wo0_wi0_r0_delayr14 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr13_q, xout => u0_m0_wo0_wi0_r0_delayr14_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr14_q_11(DELAY,555)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr14_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr14_q, xout => d_u0_m0_wo0_wi0_r0_delayr14_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_26_sub_1(SUB,436)@11 + 1
    u0_m0_wo0_mtree_mult1_26_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => d_u0_m0_wo0_wi0_r0_delayr14_q_11_q(11)) & d_u0_m0_wo0_wi0_r0_delayr14_q_11_q));
    u0_m0_wo0_mtree_mult1_26_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_26_shift0_q(13)) & u0_m0_wo0_mtree_mult1_26_shift0_q));
    u0_m0_wo0_mtree_mult1_26_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_26_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_26_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_26_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_26_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_26_sub_1_q <= u0_m0_wo0_mtree_mult1_26_sub_1_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_26_shift2(BITSHIFT,437)@12
    u0_m0_wo0_mtree_mult1_26_shift2_qint <= u0_m0_wo0_mtree_mult1_26_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_26_shift2_q <= u0_m0_wo0_mtree_mult1_26_shift2_qint(15 downto 0);

    -- u0_m0_wo0_mtree_add0_13(ADD,159)@12 + 1
    u0_m0_wo0_mtree_add0_13_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_26_shift2_q(15)) & u0_m0_wo0_mtree_mult1_26_shift2_q));
    u0_m0_wo0_mtree_add0_13_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_27_sub_1_q(15)) & u0_m0_wo0_mtree_mult1_27_sub_1_q));
    u0_m0_wo0_mtree_add0_13_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_13_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_13_a) + SIGNED(u0_m0_wo0_mtree_add0_13_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_13_q <= u0_m0_wo0_mtree_add0_13_o(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_shift0(BITSHIFT,438)@12
    u0_m0_wo0_mtree_mult1_24_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr16_q_12_q & "00";
    u0_m0_wo0_mtree_mult1_24_shift0_q <= u0_m0_wo0_mtree_mult1_24_shift0_qint(13 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr15(DELAY,35)@10
    u0_m0_wo0_wi0_r0_delayr15 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr14_q, xout => u0_m0_wo0_wi0_r0_delayr15_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr16(DELAY,36)@10
    u0_m0_wo0_wi0_r0_delayr16 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr15_q, xout => u0_m0_wo0_wi0_r0_delayr16_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr16_q_12(DELAY,556)@10 + 2
    d_u0_m0_wo0_wi0_r0_delayr16_q_12 : dspba_delay
    GENERIC MAP ( width => 12, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr16_q, xout => d_u0_m0_wo0_wi0_r0_delayr16_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_24_add_1(ADD,439)@12 + 1
    u0_m0_wo0_mtree_mult1_24_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => d_u0_m0_wo0_wi0_r0_delayr16_q_12_q(11)) & d_u0_m0_wo0_wi0_r0_delayr16_q_12_q));
    u0_m0_wo0_mtree_mult1_24_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_24_shift0_q(13)) & u0_m0_wo0_mtree_mult1_24_shift0_q));
    u0_m0_wo0_mtree_mult1_24_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_24_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_24_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_24_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_24_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_24_add_1_q <= u0_m0_wo0_mtree_mult1_24_add_1_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_24_shift2(BITSHIFT,440)@13
    u0_m0_wo0_mtree_mult1_24_shift2_qint <= u0_m0_wo0_mtree_mult1_24_add_1_q & "0";
    u0_m0_wo0_mtree_mult1_24_shift2_q <= u0_m0_wo0_mtree_mult1_24_shift2_qint(15 downto 0);

    -- u0_m0_wo0_mtree_add1_6(ADD,172)@13 + 1
    u0_m0_wo0_mtree_add1_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 16 => u0_m0_wo0_mtree_mult1_24_shift2_q(15)) & u0_m0_wo0_mtree_mult1_24_shift2_q));
    u0_m0_wo0_mtree_add1_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u0_m0_wo0_mtree_add0_13_q(16)) & u0_m0_wo0_mtree_add0_13_q));
    u0_m0_wo0_mtree_add1_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_6_a) + SIGNED(u0_m0_wo0_mtree_add1_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_6_q <= u0_m0_wo0_mtree_add1_6_o(18 downto 0);

    -- u0_m0_wo0_mtree_add2_3(ADD,179)@14 + 1
    u0_m0_wo0_mtree_add2_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_add1_6_q(18)) & u0_m0_wo0_mtree_add1_6_q));
    u0_m0_wo0_mtree_add2_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => u0_m0_wo0_mtree_add1_7_q(17)) & u0_m0_wo0_mtree_add1_7_q));
    u0_m0_wo0_mtree_add2_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_3_a) + SIGNED(u0_m0_wo0_mtree_add2_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_3_q <= u0_m0_wo0_mtree_add2_3_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_shift0(BITSHIFT,441)@11
    u0_m0_wo0_mtree_mult1_23_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr17_q_11_q & "0";
    u0_m0_wo0_mtree_mult1_23_shift0_q <= u0_m0_wo0_mtree_mult1_23_shift0_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr17(DELAY,37)@10
    u0_m0_wo0_wi0_r0_delayr17 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr16_q, xout => u0_m0_wo0_wi0_r0_delayr17_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr17_q_11(DELAY,557)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr17_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr17_q, xout => d_u0_m0_wo0_wi0_r0_delayr17_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_23_add_1(ADD,442)@11 + 1
    u0_m0_wo0_mtree_mult1_23_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => d_u0_m0_wo0_wi0_r0_delayr17_q_11_q(11)) & d_u0_m0_wo0_wi0_r0_delayr17_q_11_q));
    u0_m0_wo0_mtree_mult1_23_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_23_shift0_q(12)) & u0_m0_wo0_mtree_mult1_23_shift0_q));
    u0_m0_wo0_mtree_mult1_23_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_23_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_23_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_23_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_23_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_23_add_1_q <= u0_m0_wo0_mtree_mult1_23_add_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_23_shift2(BITSHIFT,443)@12
    u0_m0_wo0_mtree_mult1_23_shift2_qint <= u0_m0_wo0_mtree_mult1_23_add_1_q & "000";
    u0_m0_wo0_mtree_mult1_23_shift2_q <= u0_m0_wo0_mtree_mult1_23_shift2_qint(16 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr18(DELAY,38)@10
    u0_m0_wo0_wi0_r0_delayr18 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr17_q, xout => u0_m0_wo0_wi0_r0_delayr18_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr18_q_11(DELAY,558)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr18_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr18_q, xout => d_u0_m0_wo0_wi0_r0_delayr18_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_22_shift2(BITSHIFT,446)@11
    u0_m0_wo0_mtree_mult1_22_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr18_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_22_shift2_q <= u0_m0_wo0_mtree_mult1_22_shift2_qint(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_22_shift0(BITSHIFT,444)@10
    u0_m0_wo0_mtree_mult1_22_shift0_qint <= u0_m0_wo0_wi0_r0_delayr18_q & "00";
    u0_m0_wo0_mtree_mult1_22_shift0_q <= u0_m0_wo0_mtree_mult1_22_shift0_qint(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_22_add_1(ADD,445)@10 + 1
    u0_m0_wo0_mtree_mult1_22_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => u0_m0_wo0_wi0_r0_delayr18_q(11)) & u0_m0_wo0_wi0_r0_delayr18_q));
    u0_m0_wo0_mtree_mult1_22_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_22_shift0_q(13)) & u0_m0_wo0_mtree_mult1_22_shift0_q));
    u0_m0_wo0_mtree_mult1_22_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_22_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_22_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_22_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_22_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_22_add_1_q <= u0_m0_wo0_mtree_mult1_22_add_1_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_22_add_3(ADD,447)@11 + 1
    u0_m0_wo0_mtree_mult1_22_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 15 => u0_m0_wo0_mtree_mult1_22_add_1_q(14)) & u0_m0_wo0_mtree_mult1_22_add_1_q));
    u0_m0_wo0_mtree_mult1_22_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_22_shift2_q(16)) & u0_m0_wo0_mtree_mult1_22_shift2_q));
    u0_m0_wo0_mtree_mult1_22_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_22_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_22_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_22_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_22_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_22_add_3_q <= u0_m0_wo0_mtree_mult1_22_add_3_o(17 downto 0);

    -- u0_m0_wo0_mtree_add0_11(ADD,157)@12 + 1
    u0_m0_wo0_mtree_add0_11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_22_add_3_q(17)) & u0_m0_wo0_mtree_mult1_22_add_3_q));
    u0_m0_wo0_mtree_add0_11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u0_m0_wo0_mtree_mult1_23_shift2_q(16)) & u0_m0_wo0_mtree_mult1_23_shift2_q));
    u0_m0_wo0_mtree_add0_11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_11_a) + SIGNED(u0_m0_wo0_mtree_add0_11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_11_q <= u0_m0_wo0_mtree_add0_11_o(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_shift0(BITSHIFT,448)@10
    u0_m0_wo0_mtree_mult1_21_shift0_qint <= u0_m0_wo0_wi0_r0_delayr19_q & "0000";
    u0_m0_wo0_mtree_mult1_21_shift0_q <= u0_m0_wo0_mtree_mult1_21_shift0_qint(15 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr19(DELAY,39)@10
    u0_m0_wo0_wi0_r0_delayr19 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr18_q, xout => u0_m0_wo0_wi0_r0_delayr19_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_21_add_1(ADD,449)@10 + 1
    u0_m0_wo0_mtree_mult1_21_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 12 => u0_m0_wo0_wi0_r0_delayr19_q(11)) & u0_m0_wo0_wi0_r0_delayr19_q));
    u0_m0_wo0_mtree_mult1_21_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_21_shift0_q(15)) & u0_m0_wo0_mtree_mult1_21_shift0_q));
    u0_m0_wo0_mtree_mult1_21_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_21_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_add_1_q <= u0_m0_wo0_mtree_mult1_21_add_1_o(16 downto 0);

    -- d_u0_m0_wo0_wi0_r0_delayr19_q_11(DELAY,559)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr19_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr19_q, xout => d_u0_m0_wo0_wi0_r0_delayr19_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_21_shift2(BITSHIFT,450)@11
    u0_m0_wo0_mtree_mult1_21_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr19_q_11_q & "000000";
    u0_m0_wo0_mtree_mult1_21_shift2_q <= u0_m0_wo0_mtree_mult1_21_shift2_qint(17 downto 0);

    -- u0_m0_wo0_mtree_mult1_21_sub_3(SUB,451)@11 + 1
    u0_m0_wo0_mtree_mult1_21_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_21_shift2_q(17)) & u0_m0_wo0_mtree_mult1_21_shift2_q));
    u0_m0_wo0_mtree_mult1_21_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u0_m0_wo0_mtree_mult1_21_add_1_q(16)) & u0_m0_wo0_mtree_mult1_21_add_1_q));
    u0_m0_wo0_mtree_mult1_21_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_21_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_21_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_21_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_21_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_21_sub_3_q <= u0_m0_wo0_mtree_mult1_21_sub_3_o(18 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_shift2(BITSHIFT,454)@10
    u0_m0_wo0_mtree_mult1_20_shift2_qint <= u0_m0_wo0_wi0_r0_delayr20_q & "0";
    u0_m0_wo0_mtree_mult1_20_shift2_q <= u0_m0_wo0_mtree_mult1_20_shift2_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr20(DELAY,40)@10
    u0_m0_wo0_wi0_r0_delayr20 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr19_q, xout => u0_m0_wo0_wi0_r0_delayr20_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_20_add_3(ADD,455)@10 + 1
    u0_m0_wo0_mtree_mult1_20_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => u0_m0_wo0_wi0_r0_delayr20_q(11)) & u0_m0_wo0_wi0_r0_delayr20_q));
    u0_m0_wo0_mtree_mult1_20_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_20_shift2_q(12)) & u0_m0_wo0_mtree_mult1_20_shift2_q));
    u0_m0_wo0_mtree_mult1_20_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_add_3_q <= u0_m0_wo0_mtree_mult1_20_add_3_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_shift4(BITSHIFT,456)@11
    u0_m0_wo0_mtree_mult1_20_shift4_qint <= u0_m0_wo0_mtree_mult1_20_add_3_q & "0000";
    u0_m0_wo0_mtree_mult1_20_shift4_q <= u0_m0_wo0_mtree_mult1_20_shift4_qint(17 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_shift0(BITSHIFT,452)@10
    u0_m0_wo0_mtree_mult1_20_shift0_qint <= u0_m0_wo0_wi0_r0_delayr20_q & "0";
    u0_m0_wo0_mtree_mult1_20_shift0_q <= u0_m0_wo0_mtree_mult1_20_shift0_qint(12 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_add_1(ADD,453)@10 + 1
    u0_m0_wo0_mtree_mult1_20_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => u0_m0_wo0_wi0_r0_delayr20_q(11)) & u0_m0_wo0_wi0_r0_delayr20_q));
    u0_m0_wo0_mtree_mult1_20_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_20_shift0_q(12)) & u0_m0_wo0_mtree_mult1_20_shift0_q));
    u0_m0_wo0_mtree_mult1_20_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_add_1_q <= u0_m0_wo0_mtree_mult1_20_add_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_20_add_5(ADD,457)@11 + 1
    u0_m0_wo0_mtree_mult1_20_add_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 14 => u0_m0_wo0_mtree_mult1_20_add_1_q(13)) & u0_m0_wo0_mtree_mult1_20_add_1_q));
    u0_m0_wo0_mtree_mult1_20_add_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_20_shift4_q(17)) & u0_m0_wo0_mtree_mult1_20_shift4_q));
    u0_m0_wo0_mtree_mult1_20_add_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_20_add_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_20_add_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_20_add_5_a) + SIGNED(u0_m0_wo0_mtree_mult1_20_add_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_20_add_5_q <= u0_m0_wo0_mtree_mult1_20_add_5_o(18 downto 0);

    -- u0_m0_wo0_mtree_add0_10(ADD,156)@12 + 1
    u0_m0_wo0_mtree_add0_10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_20_add_5_q(18)) & u0_m0_wo0_mtree_mult1_20_add_5_q));
    u0_m0_wo0_mtree_add0_10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_21_sub_3_q(18)) & u0_m0_wo0_mtree_mult1_21_sub_3_q));
    u0_m0_wo0_mtree_add0_10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_10_a) + SIGNED(u0_m0_wo0_mtree_add0_10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_10_q <= u0_m0_wo0_mtree_add0_10_o(19 downto 0);

    -- u0_m0_wo0_mtree_add1_5(ADD,171)@13 + 1
    u0_m0_wo0_mtree_add1_5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_add0_10_q(19)) & u0_m0_wo0_mtree_add0_10_q));
    u0_m0_wo0_mtree_add1_5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 19 => u0_m0_wo0_mtree_add0_11_q(18)) & u0_m0_wo0_mtree_add0_11_q));
    u0_m0_wo0_mtree_add1_5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_5_a) + SIGNED(u0_m0_wo0_mtree_add1_5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_5_q <= u0_m0_wo0_mtree_add1_5_o(20 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_shift0(BITSHIFT,458)@10
    u0_m0_wo0_mtree_mult1_19_shift0_qint <= u0_m0_wo0_wi0_r0_delayr21_q & "0000";
    u0_m0_wo0_mtree_mult1_19_shift0_q <= u0_m0_wo0_mtree_mult1_19_shift0_qint(15 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr21(DELAY,41)@10
    u0_m0_wo0_wi0_r0_delayr21 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr20_q, xout => u0_m0_wo0_wi0_r0_delayr21_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_19_add_1(ADD,459)@10 + 1
    u0_m0_wo0_mtree_mult1_19_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 12 => u0_m0_wo0_wi0_r0_delayr21_q(11)) & u0_m0_wo0_wi0_r0_delayr21_q));
    u0_m0_wo0_mtree_mult1_19_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_19_shift0_q(15)) & u0_m0_wo0_mtree_mult1_19_shift0_q));
    u0_m0_wo0_mtree_mult1_19_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_19_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_add_1_q <= u0_m0_wo0_mtree_mult1_19_add_1_o(16 downto 0);

    -- d_u0_m0_wo0_wi0_r0_delayr21_q_11(DELAY,560)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr21_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr21_q, xout => d_u0_m0_wo0_wi0_r0_delayr21_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_19_shift2(BITSHIFT,460)@11
    u0_m0_wo0_mtree_mult1_19_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr21_q_11_q & "000000";
    u0_m0_wo0_mtree_mult1_19_shift2_q <= u0_m0_wo0_mtree_mult1_19_shift2_qint(17 downto 0);

    -- u0_m0_wo0_mtree_mult1_19_sub_3(SUB,461)@11 + 1
    u0_m0_wo0_mtree_mult1_19_sub_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_mult1_19_shift2_q(17)) & u0_m0_wo0_mtree_mult1_19_shift2_q));
    u0_m0_wo0_mtree_mult1_19_sub_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u0_m0_wo0_mtree_mult1_19_add_1_q(16)) & u0_m0_wo0_mtree_mult1_19_add_1_q));
    u0_m0_wo0_mtree_mult1_19_sub_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_19_sub_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_19_sub_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_19_sub_3_a) - SIGNED(u0_m0_wo0_mtree_mult1_19_sub_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_19_sub_3_q <= u0_m0_wo0_mtree_mult1_19_sub_3_o(18 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr22(DELAY,42)@10
    u0_m0_wo0_wi0_r0_delayr22 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr21_q, xout => u0_m0_wo0_wi0_r0_delayr22_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr22_q_11(DELAY,561)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr22_q_11 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr22_q, xout => d_u0_m0_wo0_wi0_r0_delayr22_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_18_shift2(BITSHIFT,464)@11
    u0_m0_wo0_mtree_mult1_18_shift2_qint <= d_u0_m0_wo0_wi0_r0_delayr22_q_11_q & "00000";
    u0_m0_wo0_mtree_mult1_18_shift2_q <= u0_m0_wo0_mtree_mult1_18_shift2_qint(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_shift0(BITSHIFT,462)@10
    u0_m0_wo0_mtree_mult1_18_shift0_qint <= u0_m0_wo0_wi0_r0_delayr22_q & "00";
    u0_m0_wo0_mtree_mult1_18_shift0_q <= u0_m0_wo0_mtree_mult1_18_shift0_qint(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_add_1(ADD,463)@10 + 1
    u0_m0_wo0_mtree_mult1_18_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => u0_m0_wo0_wi0_r0_delayr22_q(11)) & u0_m0_wo0_wi0_r0_delayr22_q));
    u0_m0_wo0_mtree_mult1_18_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_18_shift0_q(13)) & u0_m0_wo0_mtree_mult1_18_shift0_q));
    u0_m0_wo0_mtree_mult1_18_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_18_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_add_1_q <= u0_m0_wo0_mtree_mult1_18_add_1_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_18_add_3(ADD,465)@11 + 1
    u0_m0_wo0_mtree_mult1_18_add_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 15 => u0_m0_wo0_mtree_mult1_18_add_1_q(14)) & u0_m0_wo0_mtree_mult1_18_add_1_q));
    u0_m0_wo0_mtree_mult1_18_add_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_18_shift2_q(16)) & u0_m0_wo0_mtree_mult1_18_shift2_q));
    u0_m0_wo0_mtree_mult1_18_add_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_18_add_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_18_add_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_18_add_3_a) + SIGNED(u0_m0_wo0_mtree_mult1_18_add_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_18_add_3_q <= u0_m0_wo0_mtree_mult1_18_add_3_o(17 downto 0);

    -- u0_m0_wo0_mtree_add0_9(ADD,155)@12 + 1
    u0_m0_wo0_mtree_add0_9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 18 => u0_m0_wo0_mtree_mult1_18_add_3_q(17)) & u0_m0_wo0_mtree_mult1_18_add_3_q));
    u0_m0_wo0_mtree_add0_9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_mult1_19_sub_3_q(18)) & u0_m0_wo0_mtree_mult1_19_sub_3_q));
    u0_m0_wo0_mtree_add0_9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_9_a) + SIGNED(u0_m0_wo0_mtree_add0_9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_9_q <= u0_m0_wo0_mtree_add0_9_o(19 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_shift0(BITSHIFT,466)@11
    u0_m0_wo0_mtree_mult1_17_shift0_qint <= u0_m0_wo0_wi0_r0_delayr23_q & "0";
    u0_m0_wo0_mtree_mult1_17_shift0_q <= u0_m0_wo0_mtree_mult1_17_shift0_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr23(DELAY,43)@11
    u0_m0_wo0_wi0_r0_delayr23 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_r0_delayr22_q_11_q, xout => u0_m0_wo0_wi0_r0_delayr23_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_17_add_1(ADD,467)@11 + 1
    u0_m0_wo0_mtree_mult1_17_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 12 => u0_m0_wo0_wi0_r0_delayr23_q(11)) & u0_m0_wo0_wi0_r0_delayr23_q));
    u0_m0_wo0_mtree_mult1_17_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_17_shift0_q(12)) & u0_m0_wo0_mtree_mult1_17_shift0_q));
    u0_m0_wo0_mtree_mult1_17_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_17_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_17_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_17_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_17_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_17_add_1_q <= u0_m0_wo0_mtree_mult1_17_add_1_o(13 downto 0);

    -- u0_m0_wo0_mtree_mult1_17_shift2(BITSHIFT,468)@12
    u0_m0_wo0_mtree_mult1_17_shift2_qint <= u0_m0_wo0_mtree_mult1_17_add_1_q & "000";
    u0_m0_wo0_mtree_mult1_17_shift2_q <= u0_m0_wo0_mtree_mult1_17_shift2_qint(16 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_shift0(BITSHIFT,469)@11
    u0_m0_wo0_mtree_mult1_16_shift0_qint <= u0_m0_wo0_wi0_r0_delayr24_q & "00";
    u0_m0_wo0_mtree_mult1_16_shift0_q <= u0_m0_wo0_mtree_mult1_16_shift0_qint(13 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr24(DELAY,44)@11
    u0_m0_wo0_wi0_r0_delayr24 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr23_q, xout => u0_m0_wo0_wi0_r0_delayr24_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_16_add_1(ADD,470)@11 + 1
    u0_m0_wo0_mtree_mult1_16_add_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => u0_m0_wo0_wi0_r0_delayr24_q(11)) & u0_m0_wo0_wi0_r0_delayr24_q));
    u0_m0_wo0_mtree_mult1_16_add_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_16_shift0_q(13)) & u0_m0_wo0_mtree_mult1_16_shift0_q));
    u0_m0_wo0_mtree_mult1_16_add_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_16_add_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_16_add_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_16_add_1_a) + SIGNED(u0_m0_wo0_mtree_mult1_16_add_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_16_add_1_q <= u0_m0_wo0_mtree_mult1_16_add_1_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_16_shift2(BITSHIFT,471)@12
    u0_m0_wo0_mtree_mult1_16_shift2_qint <= u0_m0_wo0_mtree_mult1_16_add_1_q & "0";
    u0_m0_wo0_mtree_mult1_16_shift2_q <= u0_m0_wo0_mtree_mult1_16_shift2_qint(15 downto 0);

    -- u0_m0_wo0_mtree_add0_8(ADD,154)@12 + 1
    u0_m0_wo0_mtree_add0_8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => u0_m0_wo0_mtree_mult1_16_shift2_q(15)) & u0_m0_wo0_mtree_mult1_16_shift2_q));
    u0_m0_wo0_mtree_add0_8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_mult1_17_shift2_q(16)) & u0_m0_wo0_mtree_mult1_17_shift2_q));
    u0_m0_wo0_mtree_add0_8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_8_a) + SIGNED(u0_m0_wo0_mtree_add0_8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_8_q <= u0_m0_wo0_mtree_add0_8_o(17 downto 0);

    -- u0_m0_wo0_mtree_add1_4(ADD,170)@13 + 1
    u0_m0_wo0_mtree_add1_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 18 => u0_m0_wo0_mtree_add0_8_q(17)) & u0_m0_wo0_mtree_add0_8_q));
    u0_m0_wo0_mtree_add1_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((20 downto 20 => u0_m0_wo0_mtree_add0_9_q(19)) & u0_m0_wo0_mtree_add0_9_q));
    u0_m0_wo0_mtree_add1_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_4_a) + SIGNED(u0_m0_wo0_mtree_add1_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_4_q <= u0_m0_wo0_mtree_add1_4_o(20 downto 0);

    -- u0_m0_wo0_mtree_add2_2(ADD,178)@14 + 1
    u0_m0_wo0_mtree_add2_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_add1_4_q(20)) & u0_m0_wo0_mtree_add1_4_q));
    u0_m0_wo0_mtree_add2_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((21 downto 21 => u0_m0_wo0_mtree_add1_5_q(20)) & u0_m0_wo0_mtree_add1_5_q));
    u0_m0_wo0_mtree_add2_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_2_a) + SIGNED(u0_m0_wo0_mtree_add2_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_2_q <= u0_m0_wo0_mtree_add2_2_o(21 downto 0);

    -- u0_m0_wo0_mtree_add3_1(ADD,182)@15 + 1
    u0_m0_wo0_mtree_add3_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 22 => u0_m0_wo0_mtree_add2_2_q(21)) & u0_m0_wo0_mtree_add2_2_q));
    u0_m0_wo0_mtree_add3_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((22 downto 20 => u0_m0_wo0_mtree_add2_3_q(19)) & u0_m0_wo0_mtree_add2_3_q));
    u0_m0_wo0_mtree_add3_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_1_a) + SIGNED(u0_m0_wo0_mtree_add3_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_1_q <= u0_m0_wo0_mtree_add3_1_o(22 downto 0);

    -- u0_m0_wo0_mtree_mult1_14_shift0(BITSHIFT,472)@12
    u0_m0_wo0_mtree_mult1_14_shift0_qint <= d_u0_m0_wo0_wi0_r0_delayr26_q_12_q & "00";
    u0_m0_wo0_mtree_mult1_14_shift0_q <= u0_m0_wo0_mtree_mult1_14_shift0_qint(13 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr25(DELAY,45)@11
    u0_m0_wo0_wi0_r0_delayr25 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr24_q, xout => u0_m0_wo0_wi0_r0_delayr25_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr26(DELAY,46)@11
    u0_m0_wo0_wi0_r0_delayr26 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr25_q, xout => u0_m0_wo0_wi0_r0_delayr26_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr26_q_12(DELAY,562)@11 + 1
    d_u0_m0_wo0_wi0_r0_delayr26_q_12 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr26_q, xout => d_u0_m0_wo0_wi0_r0_delayr26_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_14_sub_1(SUB,473)@12 + 1
    u0_m0_wo0_mtree_mult1_14_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => d_u0_m0_wo0_wi0_r0_delayr26_q_12_q(11)) & d_u0_m0_wo0_wi0_r0_delayr26_q_12_q));
    u0_m0_wo0_mtree_mult1_14_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_14_shift0_q(13)) & u0_m0_wo0_mtree_mult1_14_shift0_q));
    u0_m0_wo0_mtree_mult1_14_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_14_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_14_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_14_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_14_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_14_sub_1_q <= u0_m0_wo0_mtree_mult1_14_sub_1_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_14_shift2(BITSHIFT,474)@13
    u0_m0_wo0_mtree_mult1_14_shift2_qint <= u0_m0_wo0_mtree_mult1_14_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_14_shift2_q <= u0_m0_wo0_mtree_mult1_14_shift2_qint(15 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr27(DELAY,47)@11
    u0_m0_wo0_wi0_r0_delayr27 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr26_q, xout => u0_m0_wo0_wi0_r0_delayr27_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_13_shift0(BITSHIFT,475)@11
    u0_m0_wo0_mtree_mult1_13_shift0_qint <= u0_m0_wo0_wi0_r0_delayr27_q & "000";
    u0_m0_wo0_mtree_mult1_13_shift0_q <= u0_m0_wo0_mtree_mult1_13_shift0_qint(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_13_sub_1(SUB,476)@11 + 1
    u0_m0_wo0_mtree_mult1_13_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 1 => GND_q(0)) & GND_q));
    u0_m0_wo0_mtree_mult1_13_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((15 downto 15 => u0_m0_wo0_mtree_mult1_13_shift0_q(14)) & u0_m0_wo0_mtree_mult1_13_shift0_q));
    u0_m0_wo0_mtree_mult1_13_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_13_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_13_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_13_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_13_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_13_sub_1_q <= u0_m0_wo0_mtree_mult1_13_sub_1_o(15 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_shift0(BITSHIFT,477)@11
    u0_m0_wo0_mtree_mult1_12_shift0_qint <= u0_m0_wo0_wi0_r0_delayr28_q & "00";
    u0_m0_wo0_mtree_mult1_12_shift0_q <= u0_m0_wo0_mtree_mult1_12_shift0_qint(13 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr28(DELAY,48)@11
    u0_m0_wo0_wi0_r0_delayr28 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr27_q, xout => u0_m0_wo0_wi0_r0_delayr28_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_12_sub_1(SUB,478)@11 + 1
    u0_m0_wo0_mtree_mult1_12_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => u0_m0_wo0_wi0_r0_delayr28_q(11)) & u0_m0_wo0_wi0_r0_delayr28_q));
    u0_m0_wo0_mtree_mult1_12_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_12_shift0_q(13)) & u0_m0_wo0_mtree_mult1_12_shift0_q));
    u0_m0_wo0_mtree_mult1_12_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_12_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_12_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_12_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_12_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_12_sub_1_q <= u0_m0_wo0_mtree_mult1_12_sub_1_o(14 downto 0);

    -- u0_m0_wo0_mtree_mult1_12_shift2(BITSHIFT,479)@12
    u0_m0_wo0_mtree_mult1_12_shift2_qint <= u0_m0_wo0_mtree_mult1_12_sub_1_q & "0";
    u0_m0_wo0_mtree_mult1_12_shift2_q <= u0_m0_wo0_mtree_mult1_12_shift2_qint(15 downto 0);

    -- u0_m0_wo0_mtree_add0_6(ADD,152)@12 + 1
    u0_m0_wo0_mtree_add0_6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_12_shift2_q(15)) & u0_m0_wo0_mtree_mult1_12_shift2_q));
    u0_m0_wo0_mtree_add0_6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 16 => u0_m0_wo0_mtree_mult1_13_sub_1_q(15)) & u0_m0_wo0_mtree_mult1_13_sub_1_q));
    u0_m0_wo0_mtree_add0_6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_6_a) + SIGNED(u0_m0_wo0_mtree_add0_6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_6_q <= u0_m0_wo0_mtree_add0_6_o(16 downto 0);

    -- u0_m0_wo0_mtree_add1_3(ADD,169)@13 + 1
    u0_m0_wo0_mtree_add1_3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 17 => u0_m0_wo0_mtree_add0_6_q(16)) & u0_m0_wo0_mtree_add0_6_q));
    u0_m0_wo0_mtree_add1_3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((17 downto 16 => u0_m0_wo0_mtree_mult1_14_shift2_q(15)) & u0_m0_wo0_mtree_mult1_14_shift2_q));
    u0_m0_wo0_mtree_add1_3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_3_a) + SIGNED(u0_m0_wo0_mtree_add1_3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_3_q <= u0_m0_wo0_mtree_add1_3_o(17 downto 0);

    -- u0_m0_wo0_mtree_mult1_11_shift0(BITSHIFT,480)@12
    u0_m0_wo0_mtree_mult1_11_shift0_qint <= u0_m0_wo0_wi0_r0_delayr29_q & "00";
    u0_m0_wo0_mtree_mult1_11_shift0_q <= u0_m0_wo0_mtree_mult1_11_shift0_qint(13 downto 0);

    -- d_u0_m0_wo0_wi0_r0_delayr28_q_12(DELAY,563)@11 + 1
    d_u0_m0_wo0_wi0_r0_delayr28_q_12 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr28_q, xout => d_u0_m0_wo0_wi0_r0_delayr28_q_12_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr29(DELAY,49)@12
    u0_m0_wo0_wi0_r0_delayr29 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_r0_delayr28_q_12_q, xout => u0_m0_wo0_wi0_r0_delayr29_q, ena => d_u0_m0_wo0_compute_q_12_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_11_sub_1(SUB,481)@12 + 1
    u0_m0_wo0_mtree_mult1_11_sub_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 12 => u0_m0_wo0_wi0_r0_delayr29_q(11)) & u0_m0_wo0_wi0_r0_delayr29_q));
    u0_m0_wo0_mtree_mult1_11_sub_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_mtree_mult1_11_shift0_q(13)) & u0_m0_wo0_mtree_mult1_11_shift0_q));
    u0_m0_wo0_mtree_mult1_11_sub_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_11_sub_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_11_sub_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_11_sub_1_a) - SIGNED(u0_m0_wo0_mtree_mult1_11_sub_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_11_sub_1_q <= u0_m0_wo0_mtree_mult1_11_sub_1_o(14 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr30(DELAY,50)@12
    u0_m0_wo0_wi0_r0_delayr30 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr29_q, xout => u0_m0_wo0_wi0_r0_delayr30_q, ena => d_u0_m0_wo0_compute_q_12_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr31(DELAY,51)@12
    u0_m0_wo0_wi0_r0_delayr31 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr30_q, xout => u0_m0_wo0_wi0_r0_delayr31_q, ena => d_u0_m0_wo0_compute_q_12_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_9_shift0(BITSHIFT,482)@12
    u0_m0_wo0_mtree_mult1_9_shift0_qint <= u0_m0_wo0_wi0_r0_delayr31_q & "0";
    u0_m0_wo0_mtree_mult1_9_shift0_q <= u0_m0_wo0_mtree_mult1_9_shift0_qint(12 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr32(DELAY,52)@12
    u0_m0_wo0_wi0_r0_delayr32 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr31_q, xout => u0_m0_wo0_wi0_r0_delayr32_q, ena => d_u0_m0_wo0_compute_q_12_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_mult1_8_shift0(BITSHIFT,483)@12
    u0_m0_wo0_mtree_mult1_8_shift0_qint <= u0_m0_wo0_wi0_r0_delayr32_q & "0";
    u0_m0_wo0_mtree_mult1_8_shift0_q <= u0_m0_wo0_mtree_mult1_8_shift0_qint(12 downto 0);

    -- u0_m0_wo0_mtree_add0_4(ADD,150)@12 + 1
    u0_m0_wo0_mtree_add0_4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_8_shift0_q(12)) & u0_m0_wo0_mtree_mult1_8_shift0_q));
    u0_m0_wo0_mtree_add0_4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((13 downto 13 => u0_m0_wo0_mtree_mult1_9_shift0_q(12)) & u0_m0_wo0_mtree_mult1_9_shift0_q));
    u0_m0_wo0_mtree_add0_4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_4_a) + SIGNED(u0_m0_wo0_mtree_add0_4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_4_q <= u0_m0_wo0_mtree_add0_4_o(13 downto 0);

    -- u0_m0_wo0_mtree_add1_2(ADD,168)@13 + 1
    u0_m0_wo0_mtree_add1_2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 14 => u0_m0_wo0_mtree_add0_4_q(13)) & u0_m0_wo0_mtree_add0_4_q));
    u0_m0_wo0_mtree_add1_2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((16 downto 15 => u0_m0_wo0_mtree_mult1_11_sub_1_q(14)) & u0_m0_wo0_mtree_mult1_11_sub_1_q));
    u0_m0_wo0_mtree_add1_2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_2_a) + SIGNED(u0_m0_wo0_mtree_add1_2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_2_q <= u0_m0_wo0_mtree_add1_2_o(16 downto 0);

    -- u0_m0_wo0_mtree_add2_1(ADD,177)@14 + 1
    u0_m0_wo0_mtree_add2_1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 17 => u0_m0_wo0_mtree_add1_2_q(16)) & u0_m0_wo0_mtree_add1_2_q));
    u0_m0_wo0_mtree_add2_1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((18 downto 18 => u0_m0_wo0_mtree_add1_3_q(17)) & u0_m0_wo0_mtree_add1_3_q));
    u0_m0_wo0_mtree_add2_1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add2_1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add2_1_a) + SIGNED(u0_m0_wo0_mtree_add2_1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add2_1_q <= u0_m0_wo0_mtree_add2_1_o(18 downto 0);

    -- d_u0_m0_wo0_wi0_r0_delayr32_q_15(DELAY,564)@12 + 3
    d_u0_m0_wo0_wi0_r0_delayr32_q_15 : dspba_delay
    GENERIC MAP ( width => 12, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr32_q, xout => d_u0_m0_wo0_wi0_r0_delayr32_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr33(DELAY,53)@15
    u0_m0_wo0_wi0_r0_delayr33 : dspba_delay
    GENERIC MAP ( width => 12, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_wi0_r0_delayr32_q_15_q, xout => u0_m0_wo0_wi0_r0_delayr33_q, ena => d_u0_m0_wo0_compute_q_15_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_mtree_add3_0(ADD,181)@15 + 1
    u0_m0_wo0_mtree_add3_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 12 => u0_m0_wo0_wi0_r0_delayr33_q(11)) & u0_m0_wo0_wi0_r0_delayr33_q));
    u0_m0_wo0_mtree_add3_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((19 downto 19 => u0_m0_wo0_mtree_add2_1_q(18)) & u0_m0_wo0_mtree_add2_1_q));
    u0_m0_wo0_mtree_add3_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add3_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add3_0_a) + SIGNED(u0_m0_wo0_mtree_add3_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add3_0_q <= u0_m0_wo0_mtree_add3_0_o(19 downto 0);

    -- u0_m0_wo0_mtree_add4_0(ADD,184)@16 + 1
    u0_m0_wo0_mtree_add4_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 20 => u0_m0_wo0_mtree_add3_0_q(19)) & u0_m0_wo0_mtree_add3_0_q));
    u0_m0_wo0_mtree_add4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((23 downto 23 => u0_m0_wo0_mtree_add3_1_q(22)) & u0_m0_wo0_mtree_add3_1_q));
    u0_m0_wo0_mtree_add4_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add4_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add4_0_a) + SIGNED(u0_m0_wo0_mtree_add4_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add4_0_q <= u0_m0_wo0_mtree_add4_0_o(23 downto 0);

    -- u0_m0_wo0_mtree_add5_0(ADD,185)@17 + 1
    u0_m0_wo0_mtree_add5_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 24 => u0_m0_wo0_mtree_add4_0_q(23)) & u0_m0_wo0_mtree_add4_0_q));
    u0_m0_wo0_mtree_add5_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((24 downto 14 => u0_m0_wo0_mtree_add0_16_q(13)) & u0_m0_wo0_mtree_add0_16_q));
    u0_m0_wo0_mtree_add5_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add5_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add5_0_a) + SIGNED(u0_m0_wo0_mtree_add5_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add5_0_q <= u0_m0_wo0_mtree_add5_0_o(24 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- d_u0_m0_wo0_compute_q_17(DELAY,548)@15 + 2
    d_u0_m0_wo0_compute_q_17 : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_15_q, xout => d_u0_m0_wo0_compute_q_17_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_oseq_gated_reg(REG,186)@17 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(d_u0_m0_wo0_compute_q_17_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,373)@18 + 1
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= STD_LOGIC_VECTOR((26 downto 25 => u0_m0_wo0_mtree_add5_0_q(24)) & u0_m0_wo0_mtree_add5_0_q);
    xOut_1 <= STD_LOGIC_VECTOR((26 downto 25 => u1_m0_wo0_mtree_add5_0_q(24)) & u1_m0_wo0_mtree_add5_0_q);

END normal;
