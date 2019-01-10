--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: didact_top_translate.vhd
-- /___/   /\     Timestamp: Sun Jan 06 15:35:49 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm didact_top -w -dir netgen/translate -ofmt vhdl -sim didact_top.ngd didact_top_translate.vhd 
-- Device	: 6slx16csg324-3
-- Input file	: didact_top.ngd
-- Output file	: F:\ProjectsDirectory\Embedded_Systems\Detecteurquence\netgen\translate\didact_top_translate.vhd
-- # of Entities	: 1
-- Design Name	: didact_top
-- Xilinx	: F:\Programs\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity didact_top is
  port (
    rst : in STD_LOGIC := 'X'; 
    clkin : in STD_LOGIC := 'X'; 
    bouton1 : in STD_LOGIC := 'X'; 
    bouton2 : in STD_LOGIC := 'X'; 
    bouton3 : in STD_LOGIC := 'X'; 
    bouton4 : in STD_LOGIC := 'X'; 
    Q_del : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    SEGMENTS : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    DISP_EN : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end didact_top;

architecture Structure of didact_top is
  signal rst_IBUF_0 : STD_LOGIC; 
  signal bouton1_IBUF_2 : STD_LOGIC; 
  signal bouton2_IBUF_3 : STD_LOGIC; 
  signal bouton3_IBUF_4 : STD_LOGIC; 
  signal bouton4_IBUF_5 : STD_LOGIC; 
  signal clk_dcm1 : STD_LOGIC; 
  signal enable_del_0_Q : STD_LOGIC; 
  signal enable_del_2_Q : STD_LOGIC; 
  signal enable_del_3_Q : STD_LOGIC; 
  signal enable_del_5_Q : STD_LOGIC; 
  signal inst_diviseur_clk_clk2hz_23 : STD_LOGIC; 
  signal inst_diviseur_clk_clk16hz_24 : STD_LOGIC; 
  signal inst_diviseur_clk_clk2khz_25 : STD_LOGIC; 
  signal DISP_EN_3_OBUF_26 : STD_LOGIC; 
  signal DISP_EN_2_OBUF_27 : STD_LOGIC; 
  signal DISP_EN_1_OBUF_28 : STD_LOGIC; 
  signal DISP_EN_0_OBUF_29 : STD_LOGIC; 
  signal SEGMENTS_7_OBUF_30 : STD_LOGIC; 
  signal SEGMENTS_6_OBUF_31 : STD_LOGIC; 
  signal SEGMENTS_5_OBUF_32 : STD_LOGIC; 
  signal SEGMENTS_4_OBUF_33 : STD_LOGIC; 
  signal SEGMENTS_3_OBUF_34 : STD_LOGIC; 
  signal SEGMENTS_2_OBUF_35 : STD_LOGIC; 
  signal SEGMENTS_1_OBUF_36 : STD_LOGIC; 
  signal Niveau_3_X_5_o_Mux_1_o : STD_LOGIC; 
  signal gs : STD_LOGIC; 
  signal Inst_dcm1_clkfb : STD_LOGIC; 
  signal Inst_dcm1_clkfx : STD_LOGIC; 
  signal Inst_dcm1_clk0 : STD_LOGIC; 
  signal Inst_dcm1_clkin1 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_0_Q : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_1_Q : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_2_Q : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_3_Q : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_4_Q : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_5_Q : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_6_Q : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_7_Q : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_4_PWR_12_o_Mux_95_o : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_54 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_55 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_56 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_57 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58 : STD_LOGIC; 
  signal inst4_debounce_Q3_59 : STD_LOGIC; 
  signal inst4_debounce_Q2_60 : STD_LOGIC; 
  signal inst4_debounce_Q1_61 : STD_LOGIC; 
  signal inst3_debounce_Q3_62 : STD_LOGIC; 
  signal inst3_debounce_Q2_63 : STD_LOGIC; 
  signal inst3_debounce_Q1_64 : STD_LOGIC; 
  signal inst2_debounce_Q3_65 : STD_LOGIC; 
  signal inst2_debounce_Q2_66 : STD_LOGIC; 
  signal inst2_debounce_Q1_67 : STD_LOGIC; 
  signal inst1_debounce_Q3_68 : STD_LOGIC; 
  signal inst1_debounce_Q2_69 : STD_LOGIC; 
  signal inst1_debounce_Q1_70 : STD_LOGIC; 
  signal encodeur_D_3_D_1_OR_6_o : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In_72 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_In_76 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_82 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_83 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_84 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_85 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_86 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_In11 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_93 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_96 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_97 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_103 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_104 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_105 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_106 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_107 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_In_109 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_In_112 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_113 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_115 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_116 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_117 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_In_120 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_123 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_124 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_125 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2_126 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_127 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_In_129 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_133 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_134 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_135 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd2_136 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_137 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_In_140 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_143 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_144 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_145 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_146 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_147 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In31 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_157 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_164 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_165 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_166 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_167 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_168 : STD_LOGIC; 
  signal GND_5_o_Niveau_31_LessThan_3_o_inv : STD_LOGIC; 
  signal GND_5_o_Niveau_31_LessThan_3_o_inv_inv : STD_LOGIC; 
  signal Mcount_Niveau : STD_LOGIC; 
  signal Mcount_Niveau1 : STD_LOGIC; 
  signal Mcount_Niveau2 : STD_LOGIC; 
  signal Mcount_Niveau3 : STD_LOGIC; 
  signal Mmux_Niveau_3_X_5_o_Mux_1_o_5_f7_182 : STD_LOGIC; 
  signal Mmux_Niveau_3_X_5_o_Mux_1_o_7_183 : STD_LOGIC; 
  signal Mmux_Niveau_3_X_5_o_Mux_1_o_6_184 : STD_LOGIC; 
  signal Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi_185 : STD_LOGIC; 
  signal Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_0_Q_186 : STD_LOGIC; 
  signal Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_0_Q_187 : STD_LOGIC; 
  signal Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1 : STD_LOGIC; 
  signal Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q : STD_LOGIC; 
  signal Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_1_Q_190 : STD_LOGIC; 
  signal Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_2_Q_191 : STD_LOGIC; 
  signal Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_3_Q_192 : STD_LOGIC; 
  signal Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_4_Q_193 : STD_LOGIC; 
  signal Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_5_Q_194 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_0_195 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_1_196 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_2_197 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_3_198 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_4_199 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_5_200 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_Madd_tmp_score_7_GND_15_o_add_87_OUT_cy_5_Q : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_6_202 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_tmp_score_7_203 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In1 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_In2_205 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_In1 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In22 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In321 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In11 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_18_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_17_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_16_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_15_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_14_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_13_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_12_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_11_2 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_10_2 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_9_2 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_8_2 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_7_2 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_6_2 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_5_2 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_4_2 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_3_2 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_2_2 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_1_2 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_0_2 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_11_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_10_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_9_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_8_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_7_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_6_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_5_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_4_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_3_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_2_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_1_1 : STD_LOGIC; 
  signal inst_diviseur_clk_Result_0_1 : STD_LOGIC; 
  signal inst_diviseur_clk_n0012_inv_316 : STD_LOGIC; 
  signal inst_diviseur_clk_n0006_inv : STD_LOGIC; 
  signal inst_diviseur_clk_n0000_inv : STD_LOGIC; 
  signal inst_diviseur_clk_div2hz_temp_INV_2_o : STD_LOGIC; 
  signal inst_diviseur_clk_div2khz_temp_INV_4_o : STD_LOGIC; 
  signal inst_diviseur_clk_div16hz_temp_INV_3_o : STD_LOGIC; 
  signal inst_diviseur_clk_div2hz_temp_322 : STD_LOGIC; 
  signal inst_diviseur_clk_div2khz_temp_323 : STD_LOGIC; 
  signal inst_diviseur_clk_div16hz_temp_324 : STD_LOGIC; 
  signal score_display_Mmux_digit12_380 : STD_LOGIC; 
  signal score_display_my_conv_LSD_OUT_1_bdd6 : STD_LOGIC; 
  signal score_display_my_conv_LSD_OUT_1_bdd7 : STD_LOGIC; 
  signal score_display_my_conv_LSD_OUT_1_bdd15 : STD_LOGIC; 
  signal score_display_my_conv_LSD_OUT_1_bdd20 : STD_LOGIC; 
  signal score_display_my_conv_LSD_OUT_1_bdd23 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_In1_396 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In1 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In2_399 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In3_400 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In1_401 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In2_402 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In3_403 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In1_404 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In2_405 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In3_406 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_In1_407 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In1_408 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In2_409 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In3_410 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In1_411 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In2_412 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In3_413 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_In1_414 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_In1_415 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In1_416 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In3_418 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In1_419 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In2_420 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In3_421 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_In1_422 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_In1_423 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_In2_424 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_In1_425 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_In2_426 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_In1_427 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_In2_428 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In1_430 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In2_431 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In3_432 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_In1_433 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_In2_434 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_In1_435 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_In2_436 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_In1_437 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_In2_438 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In1_439 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In2_440 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In3_441 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In1_443 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In2_444 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In3_445 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In4_446 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_In1_448 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_In2_449 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_In1_452 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_In2_453 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In1 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In2_455 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In3_456 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In1 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In2_458 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In3_459 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_In1_460 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_In1_461 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_In1_462 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_In2_463 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_In1_465 : STD_LOGIC; 
  signal Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_In2_466 : STD_LOGIC; 
  signal inst_diviseur_clk_n0006_inv1_467 : STD_LOGIC; 
  signal inst_diviseur_clk_n0006_inv2_468 : STD_LOGIC; 
  signal inst_diviseur_clk_n0000_inv1_469 : STD_LOGIC; 
  signal inst_diviseur_clk_n0000_inv2_470 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal score_display_Mmux_digit2 : STD_LOGIC; 
  signal score_display_Mmux_digit21_473 : STD_LOGIC; 
  signal score_display_Mmux_digit22_474 : STD_LOGIC; 
  signal score_display_Mmux_digit23_475 : STD_LOGIC; 
  signal score_display_Mmux_digit24_476 : STD_LOGIC; 
  signal score_display_Mmux_digit25_477 : STD_LOGIC; 
  signal score_display_Mmux_digit3 : STD_LOGIC; 
  signal score_display_Mmux_digit31_479 : STD_LOGIC; 
  signal score_display_Mmux_digit32_480 : STD_LOGIC; 
  signal score_display_Mmux_digit4 : STD_LOGIC; 
  signal score_display_Mmux_digit41_482 : STD_LOGIC; 
  signal score_display_Mmux_digit42_483 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt_510 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt_511 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt_512 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt_513 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt_514 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt_515 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt_516 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt_517 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt_518 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt_519 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt_520 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt_521 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt_522 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt_523 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt_524 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt_525 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt_526 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt_527 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt_528 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt_529 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt_530 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt_531 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt_532 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt_533 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt_534 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt_535 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt_536 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt_537 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt_538 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt_539 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_17_rt_540 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_16_rt_541 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_15_rt_542 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_14_rt_543 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_13_rt_544 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_12_rt_545 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_11_rt_546 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_10_rt_547 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_9_rt_548 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_8_rt_549 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_7_rt_550 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_6_rt_551 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_5_rt_552 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_4_rt_553 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_3_rt_554 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_2_rt_555 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_1_rt_556 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_xor_21_rt_557 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_xor_11_rt_558 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_xor_18_rt_559 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal inst_diviseur_clk_div2khz_temp_rstpot_592 : STD_LOGIC; 
  signal inst_diviseur_clk_div16hz_temp_rstpot_593 : STD_LOGIC; 
  signal inst_diviseur_clk_div2hz_temp_rstpot_594 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_CLK2X180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_CLK2X_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_CLK180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_CLK270_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_CLKFX180_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_CLKDV_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_PSDONE_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_CLK90_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_STATUS_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_STATUS_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_STATUS_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_STATUS_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_STATUS_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_STATUS_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_STATUS_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Inst_dcm1_dcm_sp_inst_STATUS_0_UNCONNECTED : STD_LOGIC; 
  signal Niveau : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal shreg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal b : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal Mcount_Niveau_lut : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Mcount_Niveau_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy : STD_LOGIC_VECTOR ( 20 downto 0 ); 
  signal inst_diviseur_clk_Mcount_cnt2hz_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal inst_diviseur_clk_Mcount_cnt2khz_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal inst_diviseur_clk_Mcount_cnt16hz_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_diviseur_clk_Result : STD_LOGIC_VECTOR ( 21 downto 0 ); 
  signal inst_diviseur_clk_cnt2khz : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal inst_diviseur_clk_cnt16hz : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal inst_diviseur_clk_cnt2hz : STD_LOGIC_VECTOR ( 21 downto 0 ); 
  signal score_display_digit : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal score_display_cnt_dig : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal score_display_Result : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal score_display_mmsd : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal score_display_msd : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XST_VCC : X_ONE
    port map (
      O => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q
    );
  XST_GND : X_ZERO
    port map (
      O => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1
    );
  shreg_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      CE => Niveau_3_X_5_o_Mux_1_o,
      RST => rst_IBUF_0,
      I => inst_diviseur_clk_clk2hz_23,
      O => shreg(0),
      SET => GND
    );
  shreg_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      CE => Niveau_3_X_5_o_Mux_1_o,
      RST => rst_IBUF_0,
      I => shreg(0),
      O => shreg(1),
      SET => GND
    );
  shreg_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      CE => Niveau_3_X_5_o_Mux_1_o,
      RST => rst_IBUF_0,
      I => shreg(1),
      O => shreg(2),
      SET => GND
    );
  shreg_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      CE => Niveau_3_X_5_o_Mux_1_o,
      RST => rst_IBUF_0,
      I => shreg(2),
      O => shreg(3),
      SET => GND
    );
  shreg_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      CE => Niveau_3_X_5_o_Mux_1_o,
      RST => rst_IBUF_0,
      I => shreg(3),
      O => shreg(4),
      SET => GND
    );
  shreg_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      CE => Niveau_3_X_5_o_Mux_1_o,
      RST => rst_IBUF_0,
      I => shreg(4),
      O => shreg(5),
      SET => GND
    );
  shreg_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      CE => Niveau_3_X_5_o_Mux_1_o,
      RST => rst_IBUF_0,
      I => shreg(5),
      O => shreg(6),
      SET => GND
    );
  shreg_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      CE => Niveau_3_X_5_o_Mux_1_o,
      RST => rst_IBUF_0,
      I => shreg(6),
      O => shreg(7),
      SET => GND
    );
  Inst_msa_hdl_Niveau1_tmp_score_7 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_7_Q,
      CLK => Inst_msa_hdl_Niveau1_etatpres_4_PWR_12_o_Mux_95_o,
      O => Inst_msa_hdl_Niveau1_tmp_score_7_203,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_msa_hdl_Niveau1_tmp_score_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_0_Q,
      CLK => Inst_msa_hdl_Niveau1_etatpres_4_PWR_12_o_Mux_95_o,
      O => Inst_msa_hdl_Niveau1_tmp_score_0_195,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_msa_hdl_Niveau1_tmp_score_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_1_Q,
      CLK => Inst_msa_hdl_Niveau1_etatpres_4_PWR_12_o_Mux_95_o,
      O => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_msa_hdl_Niveau1_tmp_score_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_2_Q,
      CLK => Inst_msa_hdl_Niveau1_etatpres_4_PWR_12_o_Mux_95_o,
      O => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_msa_hdl_Niveau1_tmp_score_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_3_Q,
      CLK => Inst_msa_hdl_Niveau1_etatpres_4_PWR_12_o_Mux_95_o,
      O => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_msa_hdl_Niveau1_tmp_score_4 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_4_Q,
      CLK => Inst_msa_hdl_Niveau1_etatpres_4_PWR_12_o_Mux_95_o,
      O => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_msa_hdl_Niveau1_tmp_score_6 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_6_Q,
      CLK => Inst_msa_hdl_Niveau1_etatpres_4_PWR_12_o_Mux_95_o,
      O => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  Inst_msa_hdl_Niveau1_tmp_score_5 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_5_Q,
      CLK => Inst_msa_hdl_Niveau1_etatpres_4_PWR_12_o_Mux_95_o,
      O => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  inst4_debounce_Q3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk2khz_25,
      I => inst4_debounce_Q2_60,
      O => inst4_debounce_Q3_59,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst4_debounce_Q2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk2khz_25,
      I => inst4_debounce_Q1_61,
      O => inst4_debounce_Q2_60,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst4_debounce_Q1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk2khz_25,
      I => bouton4_IBUF_5,
      O => inst4_debounce_Q1_61,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst3_debounce_Q3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk2khz_25,
      I => inst3_debounce_Q2_63,
      O => inst3_debounce_Q3_62,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst3_debounce_Q2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk2khz_25,
      I => inst3_debounce_Q1_64,
      O => inst3_debounce_Q2_63,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst3_debounce_Q1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk2khz_25,
      I => bouton3_IBUF_4,
      O => inst3_debounce_Q1_64,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst2_debounce_Q3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk2khz_25,
      I => inst2_debounce_Q2_66,
      O => inst2_debounce_Q3_65,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst2_debounce_Q2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk2khz_25,
      I => inst2_debounce_Q1_67,
      O => inst2_debounce_Q2_66,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst2_debounce_Q1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk2khz_25,
      I => bouton2_IBUF_3,
      O => inst2_debounce_Q1_67,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst1_debounce_Q3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk2khz_25,
      I => inst1_debounce_Q2_69,
      O => inst1_debounce_Q3_68,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst1_debounce_Q2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk2khz_25,
      I => inst1_debounce_Q1_70,
      O => inst1_debounce_Q2_69,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst1_debounce_Q1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk2khz_25,
      I => bouton1_IBUF_2,
      O => inst1_debounce_Q1_70,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  Mcount_Niveau_cy_0_Q : X_MUX2
    port map (
      IB => GND_5_o_Niveau_31_LessThan_3_o_inv_inv,
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => Mcount_Niveau_lut(0),
      O => Mcount_Niveau_cy(0)
    );
  Mcount_Niveau_xor_0_Q : X_XOR2
    port map (
      I0 => GND_5_o_Niveau_31_LessThan_3_o_inv_inv,
      I1 => Mcount_Niveau_lut(0),
      O => Mcount_Niveau
    );
  Mcount_Niveau_cy_1_Q : X_MUX2
    port map (
      IB => Mcount_Niveau_cy(0),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => Mcount_Niveau_lut(1),
      O => Mcount_Niveau_cy(1)
    );
  Mcount_Niveau_xor_1_Q : X_XOR2
    port map (
      I0 => Mcount_Niveau_cy(0),
      I1 => Mcount_Niveau_lut(1),
      O => Mcount_Niveau1
    );
  Mcount_Niveau_cy_2_Q : X_MUX2
    port map (
      IB => Mcount_Niveau_cy(1),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => Mcount_Niveau_lut(2),
      O => Mcount_Niveau_cy(2)
    );
  Mcount_Niveau_xor_2_Q : X_XOR2
    port map (
      I0 => Mcount_Niveau_cy(1),
      I1 => Mcount_Niveau_lut(2),
      O => Mcount_Niveau2
    );
  Mcount_Niveau_xor_3_Q : X_XOR2
    port map (
      I0 => Mcount_Niveau_cy(2),
      I1 => Mcount_Niveau_lut(3),
      O => Mcount_Niveau3
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In_72,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_54,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_In,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_55,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_56,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_In,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_57,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_In_76,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_82,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_In,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_83,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_84,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_In,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_85,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_In,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_86,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_93,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_In,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_In,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_96,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_In,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_97,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_103,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_In,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_104,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_In,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_105,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_113,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_In,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_106,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_In,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_107,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_In_109,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_In,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_115,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_In,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_116,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_In_112,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_117,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_In,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_123,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_In,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_124,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_In_120,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_125,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2_In,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2_126,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_In,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_127,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_In,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_133,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_In_129,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_134,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_In,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_135,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd2_In,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd2_136,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_In,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_137,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_In,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_143,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_144,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_In_140,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_145,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_In,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_146,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_In,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_147,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_157,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_In,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_164,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_In,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_165,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_In,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_166,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_In,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_167,
      CE => VCC,
      SET => GND
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      RST => rst_IBUF_0,
      I => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_In,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_168,
      CE => VCC,
      SET => GND
    );
  Niveau_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      CE => Niveau_3_X_5_o_Mux_1_o,
      RST => rst_IBUF_0,
      I => Mcount_Niveau,
      O => Niveau(0),
      SET => GND
    );
  Niveau_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      CE => Niveau_3_X_5_o_Mux_1_o,
      RST => rst_IBUF_0,
      I => Mcount_Niveau1,
      O => Niveau(1),
      SET => GND
    );
  Niveau_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      CE => Niveau_3_X_5_o_Mux_1_o,
      RST => rst_IBUF_0,
      I => Mcount_Niveau2,
      O => Niveau(2),
      SET => GND
    );
  Niveau_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      CE => Niveau_3_X_5_o_Mux_1_o,
      RST => rst_IBUF_0,
      I => Mcount_Niveau3,
      O => Niveau(3),
      SET => GND
    );
  Mmux_Niveau_3_X_5_o_Mux_1_o_5_f7 : X_MUX2
    port map (
      IA => Mmux_Niveau_3_X_5_o_Mux_1_o_7_183,
      IB => Mmux_Niveau_3_X_5_o_Mux_1_o_6_184,
      SEL => Niveau(2),
      O => Mmux_Niveau_3_X_5_o_Mux_1_o_5_f7_182
    );
  Mmux_Niveau_3_X_5_o_Mux_1_o_7 : X_LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => enable_del_0_Q,
      ADR1 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In1,
      ADR2 => enable_del_3_Q,
      ADR3 => enable_del_2_Q,
      ADR4 => Niveau(0),
      ADR5 => Niveau(1),
      O => Mmux_Niveau_3_X_5_o_Mux_1_o_7_183
    );
  Mmux_Niveau_3_X_5_o_Mux_1_o_6 : X_LUT6
    generic map(
      INIT => X"F0F0FF00CCCCAAAA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_In2_205,
      ADR1 => enable_del_5_Q,
      ADR2 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In1,
      ADR3 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_In1,
      ADR4 => Niveau(0),
      ADR5 => Niveau(1),
      O => Mmux_Niveau_3_X_5_o_Mux_1_o_6_184
    );
  Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_0_Q : X_LUT5
    generic map(
      INIT => X"00000400"
    )
    port map (
      ADR0 => Niveau(1),
      ADR1 => Niveau(0),
      ADR2 => Niveau(2),
      ADR3 => Niveau(3),
      ADR4 => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      O => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_0_Q_186
    );
  Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_0_Q : X_MUX2
    port map (
      IB => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi_185,
      SEL => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_0_Q_186,
      O => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_0_Q_187
    );
  Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_1_Q : X_MUX2
    port map (
      IB => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_0_Q_187,
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      SEL => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      O => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_1_Q_190
    );
  Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_2_Q : X_MUX2
    port map (
      IB => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_1_Q_190,
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      SEL => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      O => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_2_Q_191
    );
  Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_3_Q : X_MUX2
    port map (
      IB => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_2_Q_191,
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      SEL => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      O => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_3_Q_192
    );
  Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_4_Q : X_MUX2
    port map (
      IB => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_3_Q_192,
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      SEL => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      O => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_4_Q_193
    );
  Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_5_Q : X_MUX2
    port map (
      IB => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_4_Q_193,
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      SEL => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      O => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_5_Q_194
    );
  Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_6_Q : X_MUX2
    port map (
      IB => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_5_Q_194,
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      SEL => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      O => GND_5_o_Niveau_31_LessThan_3_o_inv
    );
  Inst_dcm1_clkout1_buf : X_CKBUF
    port map (
      O => clk_dcm1,
      I => Inst_dcm1_clkfx
    );
  Inst_dcm1_clkf_buf : X_CKBUF
    port map (
      O => Inst_dcm1_clkfb,
      I => Inst_dcm1_clk0
    );
  Inst_dcm1_dcm_sp_inst : X_DCM_SP
    generic map(
      CLKDV_DIVIDE => 2.000000,
      CLKFX_DIVIDE => 25,
      CLKFX_MULTIPLY => 4,
      CLKIN_DIVIDE_BY_2 => FALSE,
      CLKIN_PERIOD => 10.000000,
      CLKOUT_PHASE_SHIFT => "NONE",
      CLK_FEEDBACK => "1X",
      DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
      DFS_FREQUENCY_MODE => "LOW",
      DLL_FREQUENCY_MODE => "LOW",
      DSS_MODE => "NONE",
      DUTY_CYCLE_CORRECTION => TRUE,
      FACTORY_JF => X"0000",
      PHASE_SHIFT => 0,
      STARTUP_WAIT => FALSE
    )
    port map (
      CLK2X180 => NLW_Inst_dcm1_dcm_sp_inst_CLK2X180_UNCONNECTED,
      PSCLK => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      CLK2X => NLW_Inst_dcm1_dcm_sp_inst_CLK2X_UNCONNECTED,
      CLKFX => Inst_dcm1_clkfx,
      CLK180 => NLW_Inst_dcm1_dcm_sp_inst_CLK180_UNCONNECTED,
      CLK270 => NLW_Inst_dcm1_dcm_sp_inst_CLK270_UNCONNECTED,
      RST => rst_IBUF_0,
      PSINCDEC => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      CLKIN => Inst_dcm1_clkin1,
      CLKFB => Inst_dcm1_clkfb,
      PSEN => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      CLK0 => Inst_dcm1_clk0,
      CLKFX180 => NLW_Inst_dcm1_dcm_sp_inst_CLKFX180_UNCONNECTED,
      CLKDV => NLW_Inst_dcm1_dcm_sp_inst_CLKDV_UNCONNECTED,
      PSDONE => NLW_Inst_dcm1_dcm_sp_inst_PSDONE_UNCONNECTED,
      CLK90 => NLW_Inst_dcm1_dcm_sp_inst_CLK90_UNCONNECTED,
      LOCKED => NLW_Inst_dcm1_dcm_sp_inst_LOCKED_UNCONNECTED,
      DSSEN => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      STATUS(7) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_0_UNCONNECTED
    );
  Inst_dcm1_clkin1_buf : X_CKBUF
    port map (
      I => clkin,
      O => Inst_dcm1_clkin1
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_21_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(20),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_xor_21_rt_557,
      O => inst_diviseur_clk_Result(21)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_20_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(19),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt_510,
      O => inst_diviseur_clk_Result(20)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_20_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(19),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt_510,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(20)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_19_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(18),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt_511,
      O => inst_diviseur_clk_Result(19)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_19_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(18),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt_511,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(19)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_18_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(17),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt_512,
      O => inst_diviseur_clk_Result(18)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_18_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(17),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt_512,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(18)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_17_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(16),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt_513,
      O => inst_diviseur_clk_Result(17)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_17_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(16),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt_513,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(17)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_16_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(15),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt_514,
      O => inst_diviseur_clk_Result(16)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_16_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(15),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt_514,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(16)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_15_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(14),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt_515,
      O => inst_diviseur_clk_Result(15)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_15_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(14),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt_515,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(15)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_14_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(13),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt_516,
      O => inst_diviseur_clk_Result(14)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_14_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(13),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt_516,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(14)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_13_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(12),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt_517,
      O => inst_diviseur_clk_Result(13)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_13_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(12),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt_517,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(13)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_12_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(11),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt_518,
      O => inst_diviseur_clk_Result(12)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_12_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(11),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt_518,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(12)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_11_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(10),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt_519,
      O => inst_diviseur_clk_Result_11_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_11_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(10),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt_519,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(11)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_10_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(9),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt_520,
      O => inst_diviseur_clk_Result_10_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_10_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(9),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt_520,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(10)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_9_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(8),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt_521,
      O => inst_diviseur_clk_Result_9_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_9_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(8),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt_521,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(9)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_8_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(7),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt_522,
      O => inst_diviseur_clk_Result_8_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_8_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(7),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt_522,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(8)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_7_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(6),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt_523,
      O => inst_diviseur_clk_Result_7_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_7_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(6),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt_523,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(7)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_6_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(5),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt_524,
      O => inst_diviseur_clk_Result_6_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_6_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(5),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt_524,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(6)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_5_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(4),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt_525,
      O => inst_diviseur_clk_Result_5_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_5_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(4),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt_525,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(5)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_4_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(3),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt_526,
      O => inst_diviseur_clk_Result_4_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_4_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(3),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt_526,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(4)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_3_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(2),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt_527,
      O => inst_diviseur_clk_Result_3_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_3_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(2),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt_527,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(3)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_2_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(1),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt_528,
      O => inst_diviseur_clk_Result_2_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_2_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(1),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt_528,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(2)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_1_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2hz_cy(0),
      I1 => inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt_529,
      O => inst_diviseur_clk_Result_1_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_1_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2hz_cy(0),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt_529,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(1)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_0_Q : X_XOR2
    port map (
      I0 => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      I1 => inst_diviseur_clk_Mcount_cnt2hz_lut(0),
      O => inst_diviseur_clk_Result_0_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_0_Q : X_MUX2
    port map (
      IB => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      SEL => inst_diviseur_clk_Mcount_cnt2hz_lut(0),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(0)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_11_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2khz_cy(10),
      I1 => inst_diviseur_clk_Mcount_cnt2khz_xor_11_rt_558,
      O => inst_diviseur_clk_Result(11)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_10_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2khz_cy(9),
      I1 => inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt_530,
      O => inst_diviseur_clk_Result(10)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_10_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2khz_cy(9),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt_530,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(10)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_9_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2khz_cy(8),
      I1 => inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt_531,
      O => inst_diviseur_clk_Result(9)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_9_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2khz_cy(8),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt_531,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(9)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_8_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2khz_cy(7),
      I1 => inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt_532,
      O => inst_diviseur_clk_Result(8)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_8_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2khz_cy(7),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt_532,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(8)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_7_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2khz_cy(6),
      I1 => inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt_533,
      O => inst_diviseur_clk_Result(7)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_7_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2khz_cy(6),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt_533,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(7)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_6_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2khz_cy(5),
      I1 => inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt_534,
      O => inst_diviseur_clk_Result(6)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_6_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2khz_cy(5),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt_534,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(6)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_5_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2khz_cy(4),
      I1 => inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt_535,
      O => inst_diviseur_clk_Result(5)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_5_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2khz_cy(4),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt_535,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(5)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_4_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2khz_cy(3),
      I1 => inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt_536,
      O => inst_diviseur_clk_Result(4)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_4_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2khz_cy(3),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt_536,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(4)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_3_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2khz_cy(2),
      I1 => inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt_537,
      O => inst_diviseur_clk_Result(3)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_3_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2khz_cy(2),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt_537,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(3)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_2_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2khz_cy(1),
      I1 => inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt_538,
      O => inst_diviseur_clk_Result(2)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_2_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2khz_cy(1),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt_538,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(2)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_1_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt2khz_cy(0),
      I1 => inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt_539,
      O => inst_diviseur_clk_Result(1)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_1_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt2khz_cy(0),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt_539,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(1)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_0_Q : X_XOR2
    port map (
      I0 => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      I1 => inst_diviseur_clk_Mcount_cnt2khz_lut(0),
      O => inst_diviseur_clk_Result(0)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_0_Q : X_MUX2
    port map (
      IB => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      SEL => inst_diviseur_clk_Mcount_cnt2khz_lut(0),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(0)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_18_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(17),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_xor_18_rt_559,
      O => inst_diviseur_clk_Result_18_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_17_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(16),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_17_rt_540,
      O => inst_diviseur_clk_Result_17_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_17_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(16),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_17_rt_540,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(17)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_16_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(15),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_16_rt_541,
      O => inst_diviseur_clk_Result_16_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_16_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(15),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_16_rt_541,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(16)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_15_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(14),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_15_rt_542,
      O => inst_diviseur_clk_Result_15_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_15_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(14),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_15_rt_542,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(15)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_14_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(13),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_14_rt_543,
      O => inst_diviseur_clk_Result_14_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_14_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(13),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_14_rt_543,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(14)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_13_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(12),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_13_rt_544,
      O => inst_diviseur_clk_Result_13_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_13_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(12),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_13_rt_544,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(13)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_12_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(11),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_12_rt_545,
      O => inst_diviseur_clk_Result_12_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_12_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(11),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_12_rt_545,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(12)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_11_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(10),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_11_rt_546,
      O => inst_diviseur_clk_Result_11_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_11_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(10),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_11_rt_546,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(11)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_10_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(9),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_10_rt_547,
      O => inst_diviseur_clk_Result_10_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_10_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(9),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_10_rt_547,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(10)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_9_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(8),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_9_rt_548,
      O => inst_diviseur_clk_Result_9_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_9_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(8),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_9_rt_548,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(9)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_8_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(7),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_8_rt_549,
      O => inst_diviseur_clk_Result_8_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_8_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(7),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_8_rt_549,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(8)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_7_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(6),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_7_rt_550,
      O => inst_diviseur_clk_Result_7_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_7_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(6),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_7_rt_550,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(7)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_6_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(5),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_6_rt_551,
      O => inst_diviseur_clk_Result_6_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_6_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(5),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_6_rt_551,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(6)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_5_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(4),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_5_rt_552,
      O => inst_diviseur_clk_Result_5_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_5_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(4),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_5_rt_552,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(5)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_4_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(3),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_4_rt_553,
      O => inst_diviseur_clk_Result_4_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_4_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(3),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_4_rt_553,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(4)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_3_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(2),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_3_rt_554,
      O => inst_diviseur_clk_Result_3_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_3_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(2),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_3_rt_554,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(3)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_2_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(1),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_2_rt_555,
      O => inst_diviseur_clk_Result_2_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_2_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(1),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_2_rt_555,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(2)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_1_Q : X_XOR2
    port map (
      I0 => inst_diviseur_clk_Mcount_cnt16hz_cy(0),
      I1 => inst_diviseur_clk_Mcount_cnt16hz_cy_1_rt_556,
      O => inst_diviseur_clk_Result_1_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_1_Q : X_MUX2
    port map (
      IB => inst_diviseur_clk_Mcount_cnt16hz_cy(0),
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_cy_1_rt_556,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(1)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_0_Q : X_XOR2
    port map (
      I0 => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      I1 => inst_diviseur_clk_Mcount_cnt16hz_lut(0),
      O => inst_diviseur_clk_Result_0_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_0_Q : X_MUX2
    port map (
      IB => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi1,
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      SEL => inst_diviseur_clk_Mcount_cnt16hz_lut(0),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(0)
    );
  inst_diviseur_clk_cnt16hz_18 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_18_1,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(18),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_17 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_17_1,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(17),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_16_1,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(16),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_15_1,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(15),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_14_1,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(14),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_13_1,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(13),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_12_1,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(12),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_11_2,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_10_2,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_9_2,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_8_2,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_7_2,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_6_2,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_5_2,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_4_2,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_3_2,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_2_2,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_1_2,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt16hz_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_0_2,
      SRST => inst_diviseur_clk_n0006_inv,
      O => inst_diviseur_clk_cnt16hz(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_21 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(21),
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(21),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_20 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(20),
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(20),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_19 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(19),
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(19),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_18 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(18),
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(18),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_17 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(17),
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(17),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_16 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(16),
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(16),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_15 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(15),
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(15),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(14),
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(14),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(13),
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(13),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(12),
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(12),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_11_1,
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_10_1,
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_9_1,
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_8_1,
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_7_1,
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_6_1,
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_5_1,
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_4_1,
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_3_1,
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_2_1,
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_1_1,
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2hz_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result_0_1,
      SRST => inst_diviseur_clk_n0000_inv,
      O => inst_diviseur_clk_cnt2hz(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2khz_11 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(11),
      SRST => inst_diviseur_clk_n0012_inv_316,
      O => inst_diviseur_clk_cnt2khz(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2khz_10 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(10),
      SRST => inst_diviseur_clk_n0012_inv_316,
      O => inst_diviseur_clk_cnt2khz(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2khz_9 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(9),
      SRST => inst_diviseur_clk_n0012_inv_316,
      O => inst_diviseur_clk_cnt2khz(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2khz_8 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(8),
      SRST => inst_diviseur_clk_n0012_inv_316,
      O => inst_diviseur_clk_cnt2khz(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2khz_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(7),
      SRST => inst_diviseur_clk_n0012_inv_316,
      O => inst_diviseur_clk_cnt2khz(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2khz_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(6),
      SRST => inst_diviseur_clk_n0012_inv_316,
      O => inst_diviseur_clk_cnt2khz(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2khz_5 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(5),
      SRST => inst_diviseur_clk_n0012_inv_316,
      O => inst_diviseur_clk_cnt2khz(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2khz_4 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(4),
      SRST => inst_diviseur_clk_n0012_inv_316,
      O => inst_diviseur_clk_cnt2khz(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2khz_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(3),
      SRST => inst_diviseur_clk_n0012_inv_316,
      O => inst_diviseur_clk_cnt2khz(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2khz_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(2),
      SRST => inst_diviseur_clk_n0012_inv_316,
      O => inst_diviseur_clk_cnt2khz(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2khz_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(1),
      SRST => inst_diviseur_clk_n0012_inv_316,
      O => inst_diviseur_clk_cnt2khz(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_cnt2khz_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_Result(0),
      SRST => inst_diviseur_clk_n0012_inv_316,
      O => inst_diviseur_clk_cnt2khz(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  inst_diviseur_clk_clk16hz : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_div16hz_temp_324,
      O => inst_diviseur_clk_clk16hz_24,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst_diviseur_clk_clk2hz : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_div2hz_temp_322,
      O => inst_diviseur_clk_clk2hz_23,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst_diviseur_clk_clk2khz : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_div2khz_temp_323,
      O => inst_diviseur_clk_clk2khz_25,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  score_display_cnt_dig_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      I => score_display_Result(1),
      O => score_display_cnt_dig(1),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  score_display_cnt_dig_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => inst_diviseur_clk_clk16hz_24,
      I => score_display_Result(0),
      O => score_display_cnt_dig(0),
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst4_debounce_sig_out1 : X_LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      ADR0 => inst4_debounce_Q1_61,
      ADR1 => inst4_debounce_Q2_60,
      ADR2 => inst4_debounce_Q3_59,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2
    );
  encodeur_V1 : X_LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      ADR0 => inst1_debounce_Q1_70,
      ADR1 => inst1_debounce_Q2_69,
      ADR2 => inst1_debounce_Q3_68,
      ADR3 => encodeur_D_3_D_1_OR_6_o,
      O => gs
    );
  encodeur_D_3_D_1_OR_6_o1 : X_LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      ADR0 => inst2_debounce_Q1_67,
      ADR1 => inst2_debounce_Q2_66,
      ADR2 => inst2_debounce_Q3_65,
      ADR3 => b(1),
      O => encodeur_D_3_D_1_OR_6_o
    );
  Inst_msa_hdl_Niveau1_Madd_tmp_score_7_GND_15_o_add_87_OUT_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_0_195,
      O => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_1_Q
    );
  Inst_msa_hdl_Niveau1_Madd_tmp_score_7_GND_15_o_add_87_OUT_xor_6_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR1 => Inst_msa_hdl_Niveau1_Madd_tmp_score_7_GND_15_o_add_87_OUT_cy_5_Q,
      O => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_6_Q
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_In21 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_125,
      ADR1 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_124,
      ADR2 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_127,
      ADR3 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_123,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_In2_205
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_In11 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_134,
      ADR1 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_133,
      ADR2 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_137,
      ADR3 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_135,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_In1
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In221 : X_LUT6
    generic map(
      INIT => X"8888888800008000"
    )
    port map (
      ADR0 => b(0),
      ADR1 => b(1),
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_55,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_56,
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58,
      ADR5 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_57,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In22
    );
  Inst_msa_hdl_Niveau1_Madd_tmp_score_7_GND_15_o_add_87_OUT_xor_7_11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_7_203,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR2 => Inst_msa_hdl_Niveau1_Madd_tmp_score_7_GND_15_o_add_87_OUT_cy_5_Q,
      O => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_7_Q
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In111 : X_LUT6
    generic map(
      INIT => X"1111111100010101"
    )
    port map (
      ADR0 => b(1),
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_57,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_55,
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_56,
      ADR5 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In11
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In11 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      ADR1 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      ADR2 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      ADR3 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In1
    );
  Inst_msa_hdl_Niveau2_etatpres_enable_del1 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_86,
      ADR1 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_83,
      ADR2 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_84,
      ADR3 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_82,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In1
    );
  Inst_msa_hdl_Niveau3_etatpres_enable_del1 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_97,
      ADR1 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94,
      ADR2 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_93,
      ADR3 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95,
      O => enable_del_2_Q
    );
  Inst_msa_hdl_Niveau4_etatpres_enable_del1 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_117,
      ADR1 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_113,
      ADR2 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_115,
      O => enable_del_3_Q
    );
  Inst_msa_hdl_Niveau1_Madd_tmp_score_7_GND_15_o_add_87_OUT_xor_2_11 : X_LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_0_195,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      O => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_2_Q
    );
  Inst_msa_hdl_Niveau1_Madd_tmp_score_7_GND_15_o_add_87_OUT_xor_3_11 : X_LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_0_195,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      O => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_3_Q
    );
  Inst_msa_hdl_Niveau1_Madd_tmp_score_7_GND_15_o_add_87_OUT_xor_4_11 : X_LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_0_195,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      O => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_4_Q
    );
  Inst_msa_hdl_Niveau1_Madd_tmp_score_7_GND_15_o_add_87_OUT_cy_5_11 : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_0_195,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      O => Inst_msa_hdl_Niveau1_Madd_tmp_score_7_GND_15_o_add_87_OUT_cy_5_Q
    );
  Inst_msa_hdl_Niveau1_Madd_tmp_score_7_GND_15_o_add_87_OUT_xor_5_11 : X_LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_0_195,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      O => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_5_Q
    );
  Inst_msa_hdl_Niveau1_etatpres_enable_del1 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58,
      ADR1 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_54,
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_55,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_56,
      O => enable_del_0_Q
    );
  Inst_msa_hdl_Niveau7_etatpres_enable_del1 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_147,
      ADR1 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_143,
      ADR2 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_145,
      ADR3 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_144,
      O => enable_del_5_Q
    );
  score_display_Mmux_digit11 : X_LUT6
    generic map(
      INIT => X"FFF7FFD5FFB3FF80"
    )
    port map (
      ADR0 => score_display_cnt_dig(1),
      ADR1 => score_display_cnt_dig(0),
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_0_195,
      ADR3 => score_display_Mmux_digit12_380,
      ADR4 => score_display_msd(0),
      ADR5 => score_display_mmsd(0),
      O => score_display_digit(0)
    );
  score_display_Mcount_cnt_dig_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => score_display_cnt_dig(1),
      ADR1 => score_display_cnt_dig(0),
      O => score_display_Result(1)
    );
  score_display_Mram_DISP_EN31 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => score_display_cnt_dig(0),
      ADR1 => score_display_cnt_dig(1),
      O => DISP_EN_3_OBUF_26
    );
  score_display_Mram_DISP_EN21 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => score_display_cnt_dig(1),
      ADR1 => score_display_cnt_dig(0),
      O => DISP_EN_2_OBUF_27
    );
  score_display_Mram_DISP_EN111 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => score_display_cnt_dig(0),
      ADR1 => score_display_cnt_dig(1),
      O => DISP_EN_1_OBUF_28
    );
  score_display_Mram_DISP_EN11 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => score_display_cnt_dig(1),
      ADR1 => score_display_cnt_dig(0),
      O => DISP_EN_0_OBUF_29
    );
  score_display_my_conv_LSD_OUT_1_101 : X_LUT3
    generic map(
      INIT => X"DB"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      O => score_display_my_conv_LSD_OUT_1_bdd20
    );
  score_display_my_conv_MMSD_OUT_1_1 : X_LUT5
    generic map(
      INIT => X"88888880"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_7_203,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      O => score_display_mmsd(1)
    );
  score_display_my_conv_LSD_OUT_1_21 : X_LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      O => score_display_my_conv_LSD_OUT_1_bdd6
    );
  score_display_my_conv_LSD_OUT_1_41 : X_LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      O => score_display_my_conv_LSD_OUT_1_bdd7
    );
  score_display_my_conv_LSD_OUT_1_71 : X_LUT3
    generic map(
      INIT => X"C6"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      O => score_display_my_conv_LSD_OUT_1_bdd15
    );
  score_display_my_conv_LSD_OUT_1_121 : X_LUT3
    generic map(
      INIT => X"C6"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      O => score_display_my_conv_LSD_OUT_1_bdd23
    );
  score_display_my_conv_MMSD_OUT_0_1 : X_LUT6
    generic map(
      INIT => X"62626262626A622A"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_7_203,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      O => score_display_mmsd(0)
    );
  score_display_my_conv_MSD_OUT_3_1 : X_LUT6
    generic map(
      INIT => X"2400240824000448"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_7_203,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      O => score_display_msd(3)
    );
  score_display_my_conv_MSD_OUT_1_1 : X_LUT6
    generic map(
      INIT => X"3C0D2C4D92161606"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_7_203,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      O => score_display_msd(1)
    );
  score_display_my_conv_MSD_OUT_2_1 : X_LUT6
    generic map(
      INIT => X"945694429452D442"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_7_203,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      O => score_display_msd(2)
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_In1 : X_LUT6
    generic map(
      INIT => X"99881181FFFFFFFF"
    )
    port map (
      ADR0 => b(0),
      ADR1 => b(1),
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_56,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58,
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_57,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_In1_396
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_In2 : X_LUT6
    generic map(
      INIT => X"CCCCE6668888A222"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_54,
      ADR1 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_55,
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_56,
      ADR4 => gs,
      ADR5 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_In1_396,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_In
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_In : X_LUT6
    generic map(
      INIT => X"AAAAE6668888E666"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      ADR1 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_113,
      ADR2 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_117,
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_115,
      ADR4 => gs,
      ADR5 => N3,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_In_109
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In2 : X_LUT6
    generic map(
      INIT => X"A22FFFF2A2235223"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_85,
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_84,
      ADR3 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_83,
      ADR4 => b(0),
      ADR5 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_86,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In2_399
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In3 : X_LUT6
    generic map(
      INIT => X"0000100010000000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_85,
      ADR1 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_86,
      ADR2 => b(0),
      ADR3 => b(1),
      ADR4 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_84,
      ADR5 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_83,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In3_400
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In4 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFA8A8AAA8"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_82,
      ADR2 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In3_400,
      ADR3 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In2_399,
      ADR4 => b(1),
      ADR5 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In1,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_In
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In1 : X_LUT4
    generic map(
      INIT => X"FDE8"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94,
      ADR1 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95,
      ADR2 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_97,
      ADR3 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_96,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In1_401
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In2 : X_LUT4
    generic map(
      INIT => X"5147"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95,
      ADR1 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_97,
      ADR2 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_96,
      ADR3 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In2_402
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In3 : X_LUT6
    generic map(
      INIT => X"A88AA888888A8888"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_93,
      ADR2 => b(0),
      ADR3 => b(1),
      ADR4 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In2_402,
      ADR5 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In1_401,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In3_403
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In4 : X_LUT5
    generic map(
      INIT => X"FFFF8000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94,
      ADR1 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_93,
      ADR2 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_97,
      ADR3 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95,
      ADR4 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In3_403,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_In
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In1 : X_LUT6
    generic map(
      INIT => X"0101010100001001"
    )
    port map (
      ADR0 => b(1),
      ADR1 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_116,
      ADR2 => encodeur_D_3_D_1_OR_6_o,
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_115,
      ADR4 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_117,
      ADR5 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In1_404
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In2 : X_LUT6
    generic map(
      INIT => X"8000800080000022"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_116,
      ADR1 => b(1),
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      ADR3 => encodeur_D_3_D_1_OR_6_o,
      ADR4 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_115,
      ADR5 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In2_405
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In3 : X_LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA80"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_117,
      ADR2 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In321,
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_113,
      ADR4 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In2_405,
      ADR5 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In1_404,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In3_406
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In4 : X_LUT5
    generic map(
      INIT => X"FFFF8000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      ADR1 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_113,
      ADR2 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_117,
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_115,
      ADR4 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In3_406,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_In1 : X_LUT6
    generic map(
      INIT => X"1010100014141405"
    )
    port map (
      ADR0 => b(1),
      ADR1 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_134,
      ADR2 => encodeur_D_3_D_1_OR_6_o,
      ADR3 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd2_136,
      ADR4 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_137,
      ADR5 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_133,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_In1_407
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_In2 : X_LUT6
    generic map(
      INIT => X"AEAEAAAA8E868A8A"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_135,
      ADR1 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_133,
      ADR2 => gs,
      ADR3 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_137,
      ADR4 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_134,
      ADR5 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_In1_407,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_In
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In1 : X_LUT4
    generic map(
      INIT => X"E00A"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      ADR1 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_157,
      ADR2 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156,
      ADR3 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In1_408
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In2 : X_LUT5
    generic map(
      INIT => X"0AAA1991"
    )
    port map (
      ADR0 => encodeur_D_3_D_1_OR_6_o,
      ADR1 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      ADR2 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156,
      ADR3 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      ADR4 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_157,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In2_409
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In3 : X_LUT6
    generic map(
      INIT => X"FFFF3BBBFFFF0888"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In1_408,
      ADR1 => b(1),
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      ADR3 => encodeur_D_3_D_1_OR_6_o,
      ADR4 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      ADR5 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In2_409,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In3_410
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In4 : X_LUT6
    generic map(
      INIT => X"FFFF800080008000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      ADR1 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      ADR2 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      ADR3 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156,
      ADR4 => gs,
      ADR5 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In3_410,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_In
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In1 : X_LUT6
    generic map(
      INIT => X"00AE00AEC0EE30BE"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_86,
      ADR1 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_85,
      ADR2 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_83,
      ADR3 => encodeur_D_3_D_1_OR_6_o,
      ADR4 => b(0),
      ADR5 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_82,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In1_411
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In2 : X_LUT6
    generic map(
      INIT => X"1115111111111111"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_83,
      ADR1 => gs,
      ADR2 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_85,
      ADR3 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_86,
      ADR4 => b(0),
      ADR5 => b(1),
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In2_412
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In3 : X_LUT6
    generic map(
      INIT => X"FFB9FFB9FFFFFFB9"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_82,
      ADR1 => gs,
      ADR2 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_86,
      ADR3 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In2_412,
      ADR4 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In1_411,
      ADR5 => b(1),
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In3_413
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In4 : X_LUT5
    generic map(
      INIT => X"AAEA0040"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_84,
      ADR1 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_83,
      ADR2 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_82,
      ADR3 => gs,
      ADR4 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In3_413,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_In
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_In1 : X_LUT6
    generic map(
      INIT => X"54111118FFFFFFFF"
    )
    port map (
      ADR0 => b(1),
      ADR1 => b(0),
      ADR2 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_86,
      ADR3 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_84,
      ADR4 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_85,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_In1_414
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_In2 : X_LUT6
    generic map(
      INIT => X"CCCCE6668888A222"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_82,
      ADR1 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_83,
      ADR2 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_84,
      ADR3 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_86,
      ADR4 => gs,
      ADR5 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_In1_414,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_In
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_In2 : X_LUT6
    generic map(
      INIT => X"AAAAE6668888E666"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_124,
      ADR1 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_123,
      ADR2 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_125,
      ADR3 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_127,
      ADR4 => gs,
      ADR5 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_In1_415,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_In
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In1 : X_LUT6
    generic map(
      INIT => X"CECECECF8AFF8AFF"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58,
      ADR1 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_54,
      ADR2 => encodeur_D_3_D_1_OR_6_o,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_55,
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_57,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In1_416
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In3 : X_LUT6
    generic map(
      INIT => X"4444004055555555"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_54,
      ADR1 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_55,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58,
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_57,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In3_418
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In4 : X_LUT6
    generic map(
      INIT => X"A8A8A8A8FDA8A8A8"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_56,
      ADR1 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In1_416,
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In3_418,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_54,
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_55,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In2 : X_LUT6
    generic map(
      INIT => X"F5B5F5B5F5B7F5B5"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94,
      ADR2 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_93,
      ADR3 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_97,
      ADR4 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In1_419,
      ADR5 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_96,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In2_420
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In3 : X_LUT6
    generic map(
      INIT => X"8888888808080800"
    )
    port map (
      ADR0 => b(0),
      ADR1 => b(1),
      ADR2 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_93,
      ADR3 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94,
      ADR4 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_96,
      ADR5 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_97,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In3_421
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In4 : X_LUT6
    generic map(
      INIT => X"A8A8A8A8FDA8A8A8"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95,
      ADR1 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In2_420,
      ADR2 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In3_421,
      ADR3 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94,
      ADR4 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_93,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_In2 : X_LUT6
    generic map(
      INIT => X"F010F010F011F414"
    )
    port map (
      ADR0 => b(1),
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_117,
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_113,
      ADR4 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      ADR5 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_116,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_In2_424
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_In3 : X_LUT6
    generic map(
      INIT => X"A8A8A8A8FDA8A8A8"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_115,
      ADR1 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_In1_423,
      ADR2 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_In2_424,
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      ADR4 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_113,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_In
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_In1 : X_LUT6
    generic map(
      INIT => X"B3BB959ABCBE90DF"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2_126,
      ADR1 => b(0),
      ADR2 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_125,
      ADR3 => encodeur_D_3_D_1_OR_6_o,
      ADR4 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_127,
      ADR5 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_124,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_In1_425
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_In2 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_127,
      ADR1 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_125,
      ADR2 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_124,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_In2_426
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_In3 : X_LUT5
    generic map(
      INIT => X"A8A8F8A8"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_123,
      ADR1 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_In2_426,
      ADR2 => gs,
      ADR3 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_In1_425,
      ADR4 => b(1),
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_In
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_In1 : X_LUT6
    generic map(
      INIT => X"33B30282CECE02D7"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_106,
      ADR1 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_104,
      ADR2 => b(0),
      ADR3 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_103,
      ADR4 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_107,
      ADR5 => encodeur_D_3_D_1_OR_6_o,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_In1_427
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_In3 : X_LUT6
    generic map(
      INIT => X"AEAEAAAA8E868A8A"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_105,
      ADR1 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_103,
      ADR2 => gs,
      ADR3 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_107,
      ADR4 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_104,
      ADR5 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_In2_428,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_In
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_In : X_LUT6
    generic map(
      INIT => X"8E868A8AAEA6AAAA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_145,
      ADR1 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_143,
      ADR2 => gs,
      ADR3 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_147,
      ADR4 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_144,
      ADR5 => N5,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_In_140
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In1 : X_LUT6
    generic map(
      INIT => X"8888DDFDDDFDDDFD"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      ADR2 => encodeur_D_3_D_1_OR_6_o,
      ADR3 => b(1),
      ADR4 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156,
      ADR5 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In1_430
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In2 : X_LUT6
    generic map(
      INIT => X"1111111151111111"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      ADR1 => gs,
      ADR2 => b(1),
      ADR3 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156,
      ADR4 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      ADR5 => b(0),
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In2_431
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In3 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156,
      ADR1 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      ADR2 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      ADR3 => gs,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In3_432
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In4 : X_LUT5
    generic map(
      INIT => X"A8FDA8A8"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_157,
      ADR1 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In1_430,
      ADR2 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In2_431,
      ADR3 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      ADR4 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In3_432,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_In
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_In1 : X_LUT6
    generic map(
      INIT => X"43420160FFFFFFFF"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_166,
      ADR1 => b(0),
      ADR2 => b(1),
      ADR3 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_168,
      ADR4 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_167,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_In1_433
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_In2 : X_LUT5
    generic map(
      INIT => X"88880080"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_166,
      ADR1 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_168,
      ADR2 => encodeur_D_3_D_1_OR_6_o,
      ADR3 => b(1),
      ADR4 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_164,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_In2_434
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_In3 : X_LUT5
    generic map(
      INIT => X"AEA6AE84"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_165,
      ADR1 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_164,
      ADR2 => gs,
      ADR3 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_In2_434,
      ADR4 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_In1_433,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_In
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_In1 : X_LUT6
    generic map(
      INIT => X"8988010101000101"
    )
    port map (
      ADR0 => b(1),
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95,
      ADR3 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_96,
      ADR4 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_97,
      ADR5 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_In1_435
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_In2 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_97,
      ADR1 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_In2_436
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_In3 : X_LUT6
    generic map(
      INIT => X"AAE6AAE6AAE688C4"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94,
      ADR1 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_93,
      ADR2 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_In2_436,
      ADR3 => gs,
      ADR4 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_In11,
      ADR5 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_In1_435,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_In
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_In1 : X_LUT5
    generic map(
      INIT => X"00008000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_96,
      ADR1 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95,
      ADR2 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94,
      ADR3 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_93,
      ADR4 => gs,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_In1_437
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_In2 : X_LUT6
    generic map(
      INIT => X"EAAAEAABAAAAAAAB"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_93,
      ADR1 => b(1),
      ADR2 => encodeur_D_3_D_1_OR_6_o,
      ADR3 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94,
      ADR4 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95,
      ADR5 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_In2_438
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_In3 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_97,
      ADR1 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_In11,
      ADR2 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_In2_438,
      ADR3 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_In1_437,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_In
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In2 : X_LUT6
    generic map(
      INIT => X"22022022FFFFFFFF"
    )
    port map (
      ADR0 => encodeur_D_3_D_1_OR_6_o,
      ADR1 => b(1),
      ADR2 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_147,
      ADR3 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_146,
      ADR4 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_145,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In2_440
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In4 : X_LUT6
    generic map(
      INIT => X"AAAA2220EEEE6664"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_144,
      ADR1 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_143,
      ADR2 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In2_440,
      ADR3 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In3_441,
      ADR4 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In1_439,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_In_SW0 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_115,
      ADR1 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_116,
      O => N7
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_In : X_LUT6
    generic map(
      INIT => X"AA8AAA8AAF8AAA8A"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_117,
      ADR1 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In321,
      ADR2 => gs,
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_113,
      ADR4 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      ADR5 => N7,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_In_112
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In1 : X_LUT6
    generic map(
      INIT => X"0404040055555555"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => b(1),
      ADR3 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      ADR4 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_157,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In1_443
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In3 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFB8A8"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      ADR1 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      ADR2 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In2_444,
      ADR3 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_157,
      ADR4 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In31,
      ADR5 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In1_443,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In3_445
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In4 : X_LUT5
    generic map(
      INIT => X"AAEA0040"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156,
      ADR1 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      ADR2 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      ADR3 => gs,
      ADR4 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In3_445,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_In : X_LUT6
    generic map(
      INIT => X"8E868A8AAEA6AAAA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_125,
      ADR1 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_123,
      ADR2 => gs,
      ADR3 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_127,
      ADR4 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_124,
      ADR5 => N9,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_In_120
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_In1 : X_LUT5
    generic map(
      INIT => X"00008000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2_126,
      ADR1 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_125,
      ADR2 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_124,
      ADR3 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_123,
      ADR4 => gs,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_In1_448
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_In3 : X_LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_In1_448,
      ADR1 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_127,
      ADR2 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_In2_449,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_In
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_In_SW0 : X_LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_55,
      ADR1 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_57,
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_56,
      O => N11
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_In : X_LUT6
    generic map(
      INIT => X"AAAA222ABBBB222A"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58,
      ADR1 => gs,
      ADR2 => encodeur_D_3_D_1_OR_6_o,
      ADR3 => b(1),
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_54,
      ADR5 => N11,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_In_76
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In_SW0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_55,
      ADR1 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_56,
      O => N13
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In : X_LUT6
    generic map(
      INIT => X"FFA8AAA8AAA8AAA8"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In11,
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In22,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_54,
      ADR4 => N13,
      ADR5 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In_72
    );
  Niveau_3_1 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_107,
      ADR1 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_105,
      ADR2 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_104,
      ADR3 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_103,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In1
    );
  Niveau_3_2 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_168,
      ADR1 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_166,
      ADR2 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_165,
      ADR3 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_164,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In1
    );
  Niveau_3_3 : X_LUT5
    generic map(
      INIT => X"FD75A820"
    )
    port map (
      ADR0 => Niveau(3),
      ADR1 => Niveau(0),
      ADR2 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In1,
      ADR3 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In1,
      ADR4 => Mmux_Niveau_3_X_5_o_Mux_1_o_5_f7_182,
      O => Niveau_3_X_5_o_Mux_1_o
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_In1 : X_LUT6
    generic map(
      INIT => X"AAAA0220AAAAAAAA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_147,
      ADR1 => b(1),
      ADR2 => encodeur_D_3_D_1_OR_6_o,
      ADR3 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_145,
      ADR4 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_143,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_In1_452
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_In2 : X_LUT6
    generic map(
      INIT => X"FFFFFFFF00008000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_146,
      ADR1 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_145,
      ADR2 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_144,
      ADR3 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_143,
      ADR4 => gs,
      ADR5 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_In1_452,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_In
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_In3 : X_LUT6
    generic map(
      INIT => X"FFFF800080008000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_144,
      ADR1 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_143,
      ADR2 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_147,
      ADR3 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_145,
      ADR4 => gs,
      ADR5 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_In2_453,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_In
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In2 : X_LUT6
    generic map(
      INIT => X"DAAD8008DAEDF37B"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_104,
      ADR1 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_106,
      ADR2 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_105,
      ADR3 => b(0),
      ADR4 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_107,
      ADR5 => encodeur_D_3_D_1_OR_6_o,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In2_455
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In4 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFA8A8AAA8"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_103,
      ADR2 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In3_456,
      ADR3 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In2_455,
      ADR4 => b(1),
      ADR5 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In1,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In2 : X_LUT6
    generic map(
      INIT => X"FFFFFFFF40544004"
    )
    port map (
      ADR0 => b(1),
      ADR1 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_168,
      ADR2 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_166,
      ADR3 => encodeur_D_3_D_1_OR_6_o,
      ADR4 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_167,
      ADR5 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_164,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In2_458
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In3 : X_LUT6
    generic map(
      INIT => X"0A02002000200020"
    )
    port map (
      ADR0 => b(1),
      ADR1 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_168,
      ADR2 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_166,
      ADR3 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_167,
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      ADR5 => encodeur_D_3_D_1_OR_6_o,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In3_459
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In4 : X_LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In2_458,
      ADR2 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In3_459,
      ADR3 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In1,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_In
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_In1 : X_LUT6
    generic map(
      INIT => X"AAAA2002AAAAAAAA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_168,
      ADR1 => b(1),
      ADR2 => encodeur_D_3_D_1_OR_6_o,
      ADR3 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_166,
      ADR4 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_164,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_In1_460
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_In2 : X_LUT6
    generic map(
      INIT => X"FFFFFFFF00008000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_167,
      ADR1 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_166,
      ADR2 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_165,
      ADR3 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_164,
      ADR4 => gs,
      ADR5 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_In1_460,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_In
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_In2 : X_LUT6
    generic map(
      INIT => X"F8A8A8A8A8A8A8A8"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_In1_461,
      ADR2 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_133,
      ADR3 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_134,
      ADR4 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_137,
      ADR5 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_135,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_In
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_In1 : X_LUT5
    generic map(
      INIT => X"00008000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd2_136,
      ADR1 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_135,
      ADR2 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_134,
      ADR3 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_133,
      ADR4 => gs,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_In1_462
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_In3 : X_LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_In1_462,
      ADR1 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_137,
      ADR2 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_In2_463,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_In
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_In : X_LUT6
    generic map(
      INIT => X"FFFFFFFF868686A6"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_134,
      ADR1 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_133,
      ADR2 => gs,
      ADR3 => b(1),
      ADR4 => N15,
      ADR5 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_In1,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_In_129
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_In1 : X_LUT6
    generic map(
      INIT => X"45410411FFFFFFFF"
    )
    port map (
      ADR0 => b(1),
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_105,
      ADR3 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_107,
      ADR4 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_106,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_In1_465
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_In2 : X_LUT5
    generic map(
      INIT => X"88880008"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_105,
      ADR1 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_107,
      ADR2 => b(1),
      ADR3 => encodeur_D_3_D_1_OR_6_o,
      ADR4 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_103,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_In2_466
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_In3 : X_LUT5
    generic map(
      INIT => X"AEA6AE84"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_104,
      ADR1 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_103,
      ADR2 => gs,
      ADR3 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_In2_466,
      ADR4 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_In1_465,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_In
    );
  inst_diviseur_clk_n0006_inv1 : X_LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(8),
      ADR1 => inst_diviseur_clk_cnt16hz(5),
      ADR2 => inst_diviseur_clk_cnt16hz(6),
      ADR3 => inst_diviseur_clk_cnt16hz(7),
      O => inst_diviseur_clk_n0006_inv1_467
    );
  inst_diviseur_clk_n0006_inv2 : X_LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(13),
      ADR1 => inst_diviseur_clk_cnt16hz(12),
      ADR2 => inst_diviseur_clk_cnt16hz(9),
      ADR3 => inst_diviseur_clk_cnt16hz(10),
      ADR4 => inst_diviseur_clk_cnt16hz(11),
      ADR5 => inst_diviseur_clk_n0006_inv1_467,
      O => inst_diviseur_clk_n0006_inv2_468
    );
  inst_diviseur_clk_n0006_inv3 : X_LUT6
    generic map(
      INIT => X"8000800080000000"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(15),
      ADR1 => inst_diviseur_clk_cnt16hz(16),
      ADR2 => inst_diviseur_clk_cnt16hz(17),
      ADR3 => inst_diviseur_clk_cnt16hz(18),
      ADR4 => inst_diviseur_clk_cnt16hz(14),
      ADR5 => inst_diviseur_clk_n0006_inv2_468,
      O => inst_diviseur_clk_n0006_inv
    );
  inst_diviseur_clk_n0000_inv1 : X_LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(11),
      ADR1 => inst_diviseur_clk_cnt2hz(10),
      ADR2 => inst_diviseur_clk_cnt2hz(8),
      ADR3 => inst_diviseur_clk_cnt2hz(9),
      O => inst_diviseur_clk_n0000_inv1_469
    );
  inst_diviseur_clk_n0000_inv2 : X_LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(16),
      ADR1 => inst_diviseur_clk_cnt2hz(14),
      ADR2 => inst_diviseur_clk_cnt2hz(15),
      ADR3 => inst_diviseur_clk_cnt2hz(12),
      ADR4 => inst_diviseur_clk_cnt2hz(13),
      ADR5 => inst_diviseur_clk_n0000_inv1_469,
      O => inst_diviseur_clk_n0000_inv2_470
    );
  inst_diviseur_clk_n0000_inv3 : X_LUT6
    generic map(
      INIT => X"8000800080000000"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(18),
      ADR1 => inst_diviseur_clk_cnt2hz(19),
      ADR2 => inst_diviseur_clk_cnt2hz(20),
      ADR3 => inst_diviseur_clk_cnt2hz(21),
      ADR4 => inst_diviseur_clk_cnt2hz(17),
      ADR5 => inst_diviseur_clk_n0000_inv2_470,
      O => inst_diviseur_clk_n0000_inv
    );
  inst_diviseur_clk_n0012_inv_SW0 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2khz(6),
      ADR1 => inst_diviseur_clk_cnt2khz(5),
      O => N17
    );
  inst_diviseur_clk_n0012_inv : X_LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2khz(7),
      ADR1 => inst_diviseur_clk_cnt2khz(11),
      ADR2 => inst_diviseur_clk_cnt2khz(9),
      ADR3 => inst_diviseur_clk_cnt2khz(8),
      ADR4 => inst_diviseur_clk_cnt2khz(10),
      ADR5 => N17,
      O => inst_diviseur_clk_n0012_inv_316
    );
  score_display_Mmux_digit21 : X_LUT6
    generic map(
      INIT => X"FFFFFFFF2B096F4D"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR2 => score_display_my_conv_LSD_OUT_1_bdd20,
      ADR3 => score_display_my_conv_LSD_OUT_1_bdd15,
      ADR4 => score_display_my_conv_LSD_OUT_1_bdd23,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      O => score_display_Mmux_digit2
    );
  score_display_Mmux_digit22 : X_LUT6
    generic map(
      INIT => X"08AD58FDFFFFFFFF"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR1 => score_display_my_conv_LSD_OUT_1_bdd15,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR3 => score_display_my_conv_LSD_OUT_1_bdd6,
      ADR4 => score_display_my_conv_LSD_OUT_1_bdd7,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      O => score_display_Mmux_digit21_473
    );
  score_display_Mmux_digit23 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => score_display_cnt_dig(1),
      ADR1 => score_display_cnt_dig(0),
      O => score_display_Mmux_digit22_474
    );
  score_display_Mmux_digit24 : X_LUT6
    generic map(
      INIT => X"0008828A2028A2AA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR3 => score_display_my_conv_LSD_OUT_1_bdd23,
      ADR4 => score_display_my_conv_LSD_OUT_1_bdd7,
      ADR5 => score_display_my_conv_LSD_OUT_1_bdd6,
      O => score_display_Mmux_digit23_475
    );
  score_display_Mmux_digit25 : X_LUT6
    generic map(
      INIT => X"4145000451551014"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR3 => score_display_my_conv_LSD_OUT_1_bdd20,
      ADR4 => score_display_my_conv_LSD_OUT_1_bdd15,
      ADR5 => score_display_my_conv_LSD_OUT_1_bdd6,
      O => score_display_Mmux_digit24_476
    );
  score_display_Mmux_digit26 : X_LUT6
    generic map(
      INIT => X"AAA8222022202220"
    )
    port map (
      ADR0 => score_display_Mmux_digit22_474,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_7_203,
      ADR2 => score_display_Mmux_digit24_476,
      ADR3 => score_display_Mmux_digit23_475,
      ADR4 => score_display_Mmux_digit21_473,
      ADR5 => score_display_Mmux_digit2,
      O => score_display_Mmux_digit25_477
    );
  score_display_Mmux_digit27 : X_LUT6
    generic map(
      INIT => X"FFFFFFFFAEAEFFAE"
    )
    port map (
      ADR0 => score_display_Mmux_digit12_380,
      ADR1 => score_display_msd(1),
      ADR2 => score_display_cnt_dig(0),
      ADR3 => score_display_mmsd(1),
      ADR4 => score_display_cnt_dig(1),
      ADR5 => score_display_Mmux_digit25_477,
      O => score_display_digit(1)
    );
  score_display_Mmux_digit31 : X_LUT6
    generic map(
      INIT => X"9624246992969624"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      O => score_display_Mmux_digit3
    );
  score_display_Mmux_digit32 : X_LUT6
    generic map(
      INIT => X"9249969296922496"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      O => score_display_Mmux_digit31_479
    );
  score_display_Mmux_digit33 : X_LUT6
    generic map(
      INIT => X"DD5DD55588088000"
    )
    port map (
      ADR0 => score_display_cnt_dig(0),
      ADR1 => score_display_cnt_dig(1),
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_7_203,
      ADR3 => score_display_Mmux_digit3,
      ADR4 => score_display_Mmux_digit31_479,
      ADR5 => score_display_msd(2),
      O => score_display_Mmux_digit32_480
    );
  score_display_Mmux_digit41 : X_LUT6
    generic map(
      INIT => X"0810428442841021"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      O => score_display_Mmux_digit4
    );
  score_display_Mmux_digit42 : X_LUT6
    generic map(
      INIT => X"1008861008611008"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      O => score_display_Mmux_digit41_482
    );
  score_display_Mmux_digit43 : X_LUT6
    generic map(
      INIT => X"DD5DD55588088000"
    )
    port map (
      ADR0 => score_display_cnt_dig(0),
      ADR1 => score_display_cnt_dig(1),
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_7_203,
      ADR3 => score_display_Mmux_digit4,
      ADR4 => score_display_Mmux_digit41_482,
      ADR5 => score_display_msd(3),
      O => score_display_Mmux_digit42_483
    );
  score_display_Mmux_digit12_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => score_display_msd(3),
      ADR1 => score_display_msd(2),
      ADR2 => score_display_msd(1),
      O => N19
    );
  score_display_Mmux_digit12 : X_LUT6
    generic map(
      INIT => X"01010F0F01010F1F"
    )
    port map (
      ADR0 => score_display_mmsd(0),
      ADR1 => score_display_mmsd(1),
      ADR2 => score_display_cnt_dig(1),
      ADR3 => score_display_msd(0),
      ADR4 => score_display_cnt_dig(0),
      ADR5 => N19,
      O => score_display_Mmux_digit12_380
    );
  rst_IBUF : X_BUF
    port map (
      I => rst,
      O => rst_IBUF_0
    );
  bouton1_IBUF : X_BUF
    port map (
      I => bouton1,
      O => bouton1_IBUF_2
    );
  bouton2_IBUF : X_BUF
    port map (
      I => bouton2,
      O => bouton2_IBUF_3
    );
  bouton3_IBUF : X_BUF
    port map (
      I => bouton3,
      O => bouton3_IBUF_4
    );
  bouton4_IBUF : X_BUF
    port map (
      I => bouton4,
      O => bouton4_IBUF_5
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(20),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt_510,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(19),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt_511,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(18),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt_512,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(17),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt_513,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(16),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt_514,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(15),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt_515,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(14),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt_516,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(13),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt_517,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(12),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt_518,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(11),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt_519,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(10),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt_520,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(9),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt_521,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(8),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt_522,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(7),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt_523,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(6),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt_524,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(5),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt_525,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(4),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt_526,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(3),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt_527,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(2),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt_528,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(1),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt_529,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2khz(10),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt_530,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2khz(9),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt_531,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2khz(8),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt_532,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2khz(7),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt_533,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2khz(6),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt_534,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2khz(5),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt_535,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2khz(4),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt_536,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2khz(3),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt_537,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2khz(2),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt_538,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2khz(1),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt_539,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(17),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_17_rt_540,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(16),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_16_rt_541,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(15),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_15_rt_542,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(14),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_14_rt_543,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(13),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_13_rt_544,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(12),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_12_rt_545,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(11),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_11_rt_546,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(10),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_10_rt_547,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(9),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_9_rt_548,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(8),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_8_rt_549,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(7),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_7_rt_550,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(6),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_6_rt_551,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(5),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_5_rt_552,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(4),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_4_rt_553,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(3),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_3_rt_554,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(2),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_2_rt_555,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(1),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_1_rt_556,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_21_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2hz(21),
      O => inst_diviseur_clk_Mcount_cnt2hz_xor_21_rt_557,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt2khz(11),
      O => inst_diviseur_clk_Mcount_cnt2khz_xor_11_rt_558,
      ADR1 => GND
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => inst_diviseur_clk_cnt16hz(18),
      O => inst_diviseur_clk_Mcount_cnt16hz_xor_18_rt_559,
      ADR1 => GND
    );
  Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi : X_LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      ADR0 => Niveau(1),
      ADR1 => Niveau(2),
      ADR2 => Niveau(3),
      O => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lutdi_185
    );
  Mcompar_GND_5_o_Niveau_31_LessThan_3_o_cy_6_inv1_cy : X_MUX2
    port map (
      IB => GND_5_o_Niveau_31_LessThan_3_o_inv,
      IA => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      SEL => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      O => GND_5_o_Niveau_31_LessThan_3_o_inv_inv
    );
  Mcount_Niveau_lut_0_Q : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Niveau(0),
      ADR1 => GND_5_o_Niveau_31_LessThan_3_o_inv,
      O => Mcount_Niveau_lut(0)
    );
  Mcount_Niveau_lut_1_Q : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Niveau(1),
      ADR1 => GND_5_o_Niveau_31_LessThan_3_o_inv,
      O => Mcount_Niveau_lut(1)
    );
  Mcount_Niveau_lut_2_Q : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Niveau(2),
      ADR1 => GND_5_o_Niveau_31_LessThan_3_o_inv,
      O => Mcount_Niveau_lut(2)
    );
  Mcount_Niveau_lut_3_Q : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => Niveau(3),
      ADR1 => GND_5_o_Niveau_31_LessThan_3_o_inv,
      O => Mcount_Niveau_lut(3)
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_In3 : X_LUT6
    generic map(
      INIT => X"8E868A8AAEA6AAAA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_166,
      ADR1 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_164,
      ADR2 => gs,
      ADR3 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_168,
      ADR4 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_165,
      ADR5 => N26,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_In
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_In3_SW0 : X_LUT4
    generic map(
      INIT => X"2A6A"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_57,
      ADR1 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_56,
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_55,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58,
      O => N28
    );
  Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_In3 : X_LUT6
    generic map(
      INIT => X"BBBBA2228888A222"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_57,
      ADR1 => gs,
      ADR2 => b(0),
      ADR3 => b(1),
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_54,
      ADR5 => N28,
      O => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_In
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_In1 : X_LUT6
    generic map(
      INIT => X"BF55BF55BF55BF57"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      ADR2 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_115,
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_113,
      ADR4 => b(1),
      ADR5 => encodeur_D_3_D_1_OR_6_o,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_In1_422
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_In1 : X_LUT6
    generic map(
      INIT => X"D9999999FBBBBBBB"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_113,
      ADR1 => gs,
      ADR2 => b(1),
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_116,
      ADR4 => b(0),
      ADR5 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_In1_423
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In311 : X_LUT6
    generic map(
      INIT => X"999999999999999D"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      ADR1 => gs,
      ADR2 => encodeur_D_3_D_1_OR_6_o,
      ADR3 => b(1),
      ADR4 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      ADR5 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_157,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In31
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In4 : X_LUT6
    generic map(
      INIT => X"CECECECE8A020202"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      ADR1 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      ADR2 => gs,
      ADR3 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156,
      ADR4 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      ADR5 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In4_446,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In3211 : X_LUT5
    generic map(
      INIT => X"11181110"
    )
    port map (
      ADR0 => encodeur_D_3_D_1_OR_6_o,
      ADR1 => b(1),
      ADR2 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_115,
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_In321
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_In2 : X_LUT5
    generic map(
      INIT => X"44044444"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      ADR1 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_In1_427,
      ADR2 => inst3_debounce_Q2_63,
      ADR3 => inst3_debounce_Q3_62,
      ADR4 => inst3_debounce_Q1_64,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_In2_428
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In3 : X_LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_104,
      ADR1 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_106,
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      ADR3 => b(1),
      ADR4 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_105,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_In3_456
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_In1 : X_LUT5
    generic map(
      INIT => X"54111114"
    )
    port map (
      ADR0 => b(1),
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_127,
      ADR3 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_125,
      ADR4 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2_126,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_In1_415
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_In_SW0 : X_LUT4
    generic map(
      INIT => X"BABE"
    )
    port map (
      ADR0 => b(1),
      ADR1 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2_126,
      ADR2 => encodeur_D_3_D_1_OR_6_o,
      ADR3 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_127,
      O => N9
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In1 : X_LUT6
    generic map(
      INIT => X"CCCF888888888888"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_143,
      ADR2 => encodeur_D_3_D_1_OR_6_o,
      ADR3 => b(1),
      ADR4 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_147,
      ADR5 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_145,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In1_439
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_In2 : X_LUT6
    generic map(
      INIT => X"FFFF1114FFFFFFFF"
    )
    port map (
      ADR0 => b(1),
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_124,
      ADR3 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_125,
      ADR4 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_123,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_In2_449
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_In1 : X_LUT6
    generic map(
      INIT => X"1441144114411144"
    )
    port map (
      ADR0 => b(1),
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_134,
      ADR3 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_135,
      ADR4 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd2_136,
      ADR5 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_137,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_In1_461
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_In2 : X_LUT6
    generic map(
      INIT => X"FFFF1441FFFFFFFF"
    )
    port map (
      ADR0 => b(1),
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_135,
      ADR3 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_134,
      ADR4 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_133,
      ADR5 => gs,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_In2_463
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_In111 : X_LUT5
    generic map(
      INIT => X"D5555555"
    )
    port map (
      ADR0 => gs,
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => b(1),
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      ADR4 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_In11
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_In_SW0 : X_LUT5
    generic map(
      INIT => X"98111011"
    )
    port map (
      ADR0 => b(1),
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_117,
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_116,
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      O => N3
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_In_SW0 : X_LUT6
    generic map(
      INIT => X"FFFFFFFF51555955"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_147,
      ADR1 => inst2_debounce_Q1_67,
      ADR2 => inst2_debounce_Q3_65,
      ADR3 => inst2_debounce_Q2_66,
      ADR4 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_146,
      ADR5 => b(1),
      O => N5
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In3 : X_LUT5
    generic map(
      INIT => X"00080808"
    )
    port map (
      ADR0 => b(1),
      ADR1 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_146,
      ADR2 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_145,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      ADR4 => encodeur_D_3_D_1_OR_6_o,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_In3_441
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_In3_SW0 : X_LUT5
    generic map(
      INIT => X"F4F4E7A7"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_168,
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => b(1),
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      ADR4 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_167,
      O => N26
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_In_SW0 : X_LUT6
    generic map(
      INIT => X"AAAA559555555595"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_135,
      ADR1 => inst2_debounce_Q1_67,
      ADR2 => inst2_debounce_Q2_66,
      ADR3 => inst2_debounce_Q3_65,
      ADR4 => b(1),
      ADR5 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      O => N15
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In1 : X_LUT4
    generic map(
      INIT => X"5155"
    )
    port map (
      ADR0 => b(1),
      ADR1 => inst2_debounce_Q2_66,
      ADR2 => inst2_debounce_Q3_65,
      ADR3 => inst2_debounce_Q1_67,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_In1_419
    );
  score_display_Mram_SEGMENTS61 : X_LUT5
    generic map(
      INIT => X"FFFFEE28"
    )
    port map (
      ADR0 => score_display_Mmux_digit32_480,
      ADR1 => score_display_digit(1),
      ADR2 => score_display_digit(0),
      ADR3 => score_display_Mmux_digit42_483,
      ADR4 => score_display_Mmux_digit12_380,
      O => SEGMENTS_6_OBUF_31
    );
  score_display_Mram_SEGMENTS51 : X_LUT5
    generic map(
      INIT => X"FFFFA8AC"
    )
    port map (
      ADR0 => score_display_Mmux_digit42_483,
      ADR1 => score_display_digit(1),
      ADR2 => score_display_Mmux_digit32_480,
      ADR3 => score_display_digit(0),
      ADR4 => score_display_Mmux_digit12_380,
      O => SEGMENTS_5_OBUF_32
    );
  score_display_Mram_SEGMENTS31 : X_LUT5
    generic map(
      INIT => X"FFFFFEBA"
    )
    port map (
      ADR0 => score_display_Mmux_digit12_380,
      ADR1 => score_display_digit(1),
      ADR2 => score_display_Mmux_digit32_480,
      ADR3 => score_display_Mmux_digit42_483,
      ADR4 => score_display_digit(0),
      O => SEGMENTS_3_OBUF_34
    );
  score_display_Mram_SEGMENTS21 : X_LUT5
    generic map(
      INIT => X"FFEEFFB2"
    )
    port map (
      ADR0 => score_display_digit(1),
      ADR1 => score_display_Mmux_digit32_480,
      ADR2 => score_display_digit(0),
      ADR3 => score_display_Mmux_digit12_380,
      ADR4 => score_display_Mmux_digit42_483,
      O => SEGMENTS_2_OBUF_35
    );
  score_display_Mram_SEGMENTS111 : X_LUT5
    generic map(
      INIT => X"FEED5645"
    )
    port map (
      ADR0 => score_display_digit(1),
      ADR1 => score_display_Mmux_digit12_380,
      ADR2 => score_display_Mmux_digit32_480,
      ADR3 => score_display_Mmux_digit42_483,
      ADR4 => score_display_digit(0),
      O => SEGMENTS_1_OBUF_36
    );
  encodeur_D_3_D_2_OR_5_o1 : X_LUT6
    generic map(
      INIT => X"08080808FF080808"
    )
    port map (
      ADR0 => inst3_debounce_Q1_64,
      ADR1 => inst3_debounce_Q2_63,
      ADR2 => inst3_debounce_Q3_62,
      ADR3 => inst4_debounce_Q1_61,
      ADR4 => inst4_debounce_Q2_60,
      ADR5 => inst4_debounce_Q3_59,
      O => b(1)
    );
  encodeur_Mmux_A11 : X_LUT5
    generic map(
      INIT => X"AAEA0040"
    )
    port map (
      ADR0 => b(1),
      ADR1 => inst2_debounce_Q1_67,
      ADR2 => inst2_debounce_Q2_66,
      ADR3 => inst2_debounce_Q3_65,
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      O => b(0)
    );
  score_display_Mram_SEGMENTS71 : X_LUT5
    generic map(
      INIT => X"FFFFFA14"
    )
    port map (
      ADR0 => score_display_digit(1),
      ADR1 => score_display_digit(0),
      ADR2 => score_display_Mmux_digit32_480,
      ADR3 => score_display_Mmux_digit42_483,
      ADR4 => score_display_Mmux_digit12_380,
      O => SEGMENTS_7_OBUF_30
    );
  score_display_Mram_SEGMENTS41 : X_LUT5
    generic map(
      INIT => X"FFFFFA86"
    )
    port map (
      ADR0 => score_display_Mmux_digit32_480,
      ADR1 => score_display_digit(0),
      ADR2 => score_display_digit(1),
      ADR3 => score_display_Mmux_digit42_483,
      ADR4 => score_display_Mmux_digit12_380,
      O => SEGMENTS_4_OBUF_33
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In2 : X_LUT5
    generic map(
      INIT => X"88088888"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      ADR1 => b(1),
      ADR2 => inst4_debounce_Q1_61,
      ADR3 => inst4_debounce_Q3_59,
      ADR4 => inst4_debounce_Q2_60,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In2_444
    );
  score_display_my_conv_MSD_OUT_0_Q : X_MUX2
    port map (
      IA => N30,
      IB => N31,
      SEL => Inst_msa_hdl_Niveau1_tmp_score_2_197,
      O => score_display_msd(0)
    );
  score_display_my_conv_MSD_OUT_0_F : X_LUT6
    generic map(
      INIT => X"B9666BD629466294"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_7_203,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      O => N30
    );
  score_display_my_conv_MSD_OUT_0_G : X_LUT6
    generic map(
      INIT => X"96DBB69696922496"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau1_tmp_score_7_203,
      ADR1 => Inst_msa_hdl_Niveau1_tmp_score_5_200,
      ADR2 => Inst_msa_hdl_Niveau1_tmp_score_3_198,
      ADR3 => Inst_msa_hdl_Niveau1_tmp_score_4_199,
      ADR4 => Inst_msa_hdl_Niveau1_tmp_score_6_202,
      ADR5 => Inst_msa_hdl_Niveau1_tmp_score_1_196,
      O => N31
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_In4 : X_MUX2
    port map (
      IA => N32,
      IB => N33,
      SEL => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd5_164,
      O => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_In
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_In4_F : X_LUT6
    generic map(
      INIT => X"2A222AA2222222A2"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_167,
      ADR1 => gs,
      ADR2 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_166,
      ADR3 => b(1),
      ADR4 => encodeur_D_3_D_1_OR_6_o,
      ADR5 => b(0),
      O => N32
    );
  Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_In4_G : X_LUT5
    generic map(
      INIT => X"AA2AAA6A"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd2_167,
      ADR1 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd3_166,
      ADR2 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd4_165,
      ADR3 => gs,
      ADR4 => Inst_msa_hdl_Niveau10_etatpres_FSM_FFd1_168,
      O => N33
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_In3 : X_MUX2
    port map (
      IA => N34,
      IB => N35,
      SEL => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_85,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_In
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_In3_F : X_LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_86,
      ADR1 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_84,
      ADR2 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_83,
      ADR3 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_82,
      ADR4 => gs,
      O => N34
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_In3_G : X_LUT6
    generic map(
      INIT => X"9B99DDDFDDDFDDDF"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_82,
      ADR2 => b(1),
      ADR3 => encodeur_D_3_D_1_OR_6_o,
      ADR4 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_84,
      ADR5 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_83,
      O => N35
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_In3 : X_MUX2
    port map (
      IA => N36,
      IB => N37,
      SEL => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd5_82,
      O => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_In
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_In3_F : X_LUT6
    generic map(
      INIT => X"02020220AAAAAAAA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_86,
      ADR1 => b(1),
      ADR2 => b(0),
      ADR3 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_83,
      ADR4 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_84,
      ADR5 => gs,
      O => N36
    );
  Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_In3_G : X_LUT5
    generic map(
      INIT => X"FFFF4000"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd3_84,
      ADR2 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd4_83,
      ADR3 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd2_85,
      ADR4 => Inst_msa_hdl_Niveau2_etatpres_FSM_FFd1_86,
      O => N37
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_In3 : X_MUX2
    port map (
      IA => N38,
      IB => N39,
      SEL => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_146,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_In
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_In3_F : X_LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_147,
      ADR1 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_145,
      ADR2 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_144,
      ADR3 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_143,
      ADR4 => gs,
      O => N38
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_In3_G : X_LUT6
    generic map(
      INIT => X"BF55BFDDBF77BF55"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_145,
      ADR2 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd4_144,
      ADR3 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_143,
      ADR4 => b(1),
      ADR5 => b(0),
      O => N39
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_In3 : X_MUX2
    port map (
      IA => N40,
      IB => N41,
      SEL => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_In
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_In3_F : X_LUT6
    generic map(
      INIT => X"22222AA2A22A2222"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      ADR1 => gs,
      ADR2 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      ADR3 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156,
      ADR4 => b(1),
      ADR5 => b(0),
      O => N40
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_In3_G : X_LUT5
    generic map(
      INIT => X"FFFF4000"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156,
      ADR2 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_155,
      ADR3 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_157,
      ADR4 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      O => N41
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_In3 : X_MUX2
    port map (
      IA => N42,
      IB => N43,
      SEL => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_96,
      O => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_In
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_In3_F : X_LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd1_97,
      ADR1 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95,
      ADR2 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94,
      ADR3 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_93,
      ADR4 => gs,
      O => N42
    );
  Inst_msa_hdl_Niveau3_etatpres_FSM_FFd2_In3_G : X_LUT6
    generic map(
      INIT => X"BFDFBF55BF75BF75"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd3_95,
      ADR2 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd4_94,
      ADR3 => Inst_msa_hdl_Niveau3_etatpres_FSM_FFd5_93,
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      ADR5 => encodeur_D_3_D_1_OR_6_o,
      O => N43
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2_In3 : X_MUX2
    port map (
      IA => N44,
      IB => N45,
      SEL => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2_126,
      O => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2_In
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2_In3_F : X_LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd1_127,
      ADR1 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_125,
      ADR2 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_124,
      ADR3 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_123,
      ADR4 => gs,
      O => N44
    );
  Inst_msa_hdl_Niveau5_etatpres_FSM_FFd2_In3_G : X_LUT6
    generic map(
      INIT => X"BF55BFDDBF55BF77"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd3_125,
      ADR2 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd4_124,
      ADR3 => Inst_msa_hdl_Niveau5_etatpres_FSM_FFd5_123,
      ADR4 => b(1),
      ADR5 => encodeur_D_3_D_1_OR_6_o,
      O => N45
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_In3 : X_MUX2
    port map (
      IA => N46,
      IB => N47,
      SEL => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_106,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_In
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_In3_F : X_LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_107,
      ADR1 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_105,
      ADR2 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_104,
      ADR3 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_103,
      ADR4 => gs,
      O => N46
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_In3_G : X_LUT6
    generic map(
      INIT => X"BF57BFD5BF55BF7D"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_105,
      ADR2 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_104,
      ADR3 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_103,
      ADR4 => b(1),
      ADR5 => b(0),
      O => N47
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_In3 : X_MUX2
    port map (
      IA => N48,
      IB => N49,
      SEL => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd5_103,
      O => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_In
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_In3_F : X_LUT6
    generic map(
      INIT => X"02202002AAAAAAAA"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_107,
      ADR1 => b(1),
      ADR2 => b(0),
      ADR3 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_105,
      ADR4 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_104,
      ADR5 => gs,
      O => N48
    );
  Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_In3_G : X_LUT5
    generic map(
      INIT => X"FFFF4000"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd3_105,
      ADR2 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd4_104,
      ADR3 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd2_106,
      ADR4 => Inst_msa_hdl_Niveau6_etatpres_FSM_FFd1_107,
      O => N49
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd2_In3 : X_MUX2
    port map (
      IA => N50,
      IB => N51,
      SEL => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd2_136,
      O => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd2_In
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd2_In3_F : X_LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd1_137,
      ADR1 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_135,
      ADR2 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_134,
      ADR3 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_133,
      ADR4 => gs,
      O => N50
    );
  Inst_msa_hdl_Niveau9_etatpres_FSM_FFd2_In3_G : X_LUT6
    generic map(
      INIT => X"FFFF14413F3FFFFF"
    )
    port map (
      ADR0 => b(1),
      ADR1 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd3_135,
      ADR2 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd4_134,
      ADR3 => encodeur_D_3_D_1_OR_6_o,
      ADR4 => Inst_msa_hdl_Niveau9_etatpres_FSM_FFd5_133,
      ADR5 => gs,
      O => N51
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_In4 : X_MUX2
    port map (
      IA => N52,
      IB => N53,
      SEL => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_116,
      O => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_In
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_In4_F : X_LUT5
    generic map(
      INIT => X"00004000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd1_117,
      ADR1 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_115,
      ADR2 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_113,
      ADR4 => gs,
      O => N52
    );
  Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_In4_G : X_LUT6
    generic map(
      INIT => X"FFFFFFFF40404000"
    )
    port map (
      ADR0 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd5_113,
      ADR1 => b(1),
      ADR2 => b(0),
      ADR3 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd4_114,
      ADR4 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd3_115,
      ADR5 => Inst_msa_hdl_Niveau4_etatpres_FSM_FFd2_In1_422,
      O => N53
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In3 : X_MUX2
    port map (
      IA => N54,
      IB => N55,
      SEL => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_156,
      O => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In4_446
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In3_F : X_LUT6
    generic map(
      INIT => X"FFFFFFFF04040400"
    )
    port map (
      ADR0 => b(1),
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      ADR3 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      ADR4 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_157,
      ADR5 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In31,
      O => N54
    );
  Inst_msa_hdl_Niveau8_etatpres_FSM_FFd4_In3_G : X_LUT6
    generic map(
      INIT => X"FFFFFFFF22220020"
    )
    port map (
      ADR0 => b(1),
      ADR1 => b(0),
      ADR2 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd2_157,
      ADR3 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd5_154,
      ADR4 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd1_158,
      ADR5 => Inst_msa_hdl_Niveau8_etatpres_FSM_FFd3_In31,
      O => N55
    );
  Inst_msa_hdl_Niveau1_Mmux_etatpres_4_PWR_12_o_Mux_95_o13 : X_MUX2
    port map (
      IA => N56,
      IB => N57,
      SEL => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_54,
      O => Inst_msa_hdl_Niveau1_etatpres_4_PWR_12_o_Mux_95_o
    );
  Inst_msa_hdl_Niveau1_Mmux_etatpres_4_PWR_12_o_Mux_95_o13_F : X_LUT5
    generic map(
      INIT => X"FFA8A8A8"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In11,
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd5_In22,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_57,
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58,
      O => N56
    );
  Inst_msa_hdl_Niveau1_Mmux_etatpres_4_PWR_12_o_Mux_95_o13_G : X_LUT5
    generic map(
      INIT => X"DDDD1555"
    )
    port map (
      ADR0 => gs,
      ADR1 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd1_58,
      ADR2 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_56,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd4_55,
      ADR4 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd2_57,
      O => N57
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_In2 : X_MUX2
    port map (
      IA => N58,
      IB => N59,
      SEL => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd3_145,
      O => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_In2_453
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_In2_F : X_LUT6
    generic map(
      INIT => X"FFFFFFFF58D81898"
    )
    port map (
      ADR0 => b(1),
      ADR1 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_146,
      ADR2 => encodeur_D_3_D_1_OR_6_o,
      ADR3 => Inst_msa_hdl_Niveau1_etatpres_FSM_FFd3_In2,
      ADR4 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_147,
      ADR5 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_143,
      O => N58
    );
  Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_In2_G : X_LUT6
    generic map(
      INIT => X"FFFFFFFF40445544"
    )
    port map (
      ADR0 => b(1),
      ADR1 => encodeur_D_3_D_1_OR_6_o,
      ADR2 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd2_146,
      ADR3 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd1_147,
      ADR4 => b(0),
      ADR5 => Inst_msa_hdl_Niveau7_etatpres_FSM_FFd5_143,
      O => N59
    );
  inst_diviseur_clk_div2khz_temp_rstpot : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => inst_diviseur_clk_n0012_inv_316,
      ADR1 => inst_diviseur_clk_div2khz_temp_323,
      ADR2 => inst_diviseur_clk_div2khz_temp_INV_4_o,
      O => inst_diviseur_clk_div2khz_temp_rstpot_592
    );
  inst_diviseur_clk_div2khz_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_div2khz_temp_rstpot_592,
      O => inst_diviseur_clk_div2khz_temp_323,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst_diviseur_clk_div16hz_temp_rstpot : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => inst_diviseur_clk_n0006_inv,
      ADR1 => inst_diviseur_clk_div16hz_temp_324,
      ADR2 => inst_diviseur_clk_div16hz_temp_INV_3_o,
      O => inst_diviseur_clk_div16hz_temp_rstpot_593
    );
  inst_diviseur_clk_div16hz_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_div16hz_temp_rstpot_593,
      O => inst_diviseur_clk_div16hz_temp_324,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst_diviseur_clk_div2hz_temp_rstpot : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => inst_diviseur_clk_n0000_inv,
      ADR1 => inst_diviseur_clk_div2hz_temp_322,
      ADR2 => inst_diviseur_clk_div2hz_temp_INV_2_o,
      O => inst_diviseur_clk_div2hz_temp_rstpot_594
    );
  inst_diviseur_clk_div2hz_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_dcm1,
      I => inst_diviseur_clk_div2hz_temp_rstpot_594,
      O => inst_diviseur_clk_div2hz_temp_322,
      CE => VCC,
      SET => GND,
      RST => GND
    );
  inst_diviseur_clk_Mcount_cnt2hz_lut_0_INV_0 : X_INV
    port map (
      I => inst_diviseur_clk_cnt2hz(0),
      O => inst_diviseur_clk_Mcount_cnt2hz_lut(0)
    );
  inst_diviseur_clk_Mcount_cnt2khz_lut_0_INV_0 : X_INV
    port map (
      I => inst_diviseur_clk_cnt2khz(0),
      O => inst_diviseur_clk_Mcount_cnt2khz_lut(0)
    );
  inst_diviseur_clk_Mcount_cnt16hz_lut_0_INV_0 : X_INV
    port map (
      I => inst_diviseur_clk_cnt16hz(0),
      O => inst_diviseur_clk_Mcount_cnt16hz_lut(0)
    );
  Inst_msa_hdl_Niveau1_Madd_tmp_score_7_GND_15_o_add_87_OUT_xor_0_11_INV_0 : X_INV
    port map (
      I => Inst_msa_hdl_Niveau1_tmp_score_0_195,
      O => Inst_msa_hdl_Niveau1_tmp_score_7_GND_15_o_add_87_OUT_0_Q
    );
  inst_diviseur_clk_div2hz_temp_INV_2_o1_INV_0 : X_INV
    port map (
      I => inst_diviseur_clk_div2hz_temp_322,
      O => inst_diviseur_clk_div2hz_temp_INV_2_o
    );
  inst_diviseur_clk_div2khz_temp_INV_4_o1_INV_0 : X_INV
    port map (
      I => inst_diviseur_clk_div2khz_temp_323,
      O => inst_diviseur_clk_div2khz_temp_INV_4_o
    );
  inst_diviseur_clk_div16hz_temp_INV_3_o1_INV_0 : X_INV
    port map (
      I => inst_diviseur_clk_div16hz_temp_324,
      O => inst_diviseur_clk_div16hz_temp_INV_3_o
    );
  score_display_Mcount_cnt_dig_xor_0_11_INV_0 : X_INV
    port map (
      I => score_display_cnt_dig(0),
      O => score_display_Result(0)
    );
  Q_del_7_OBUF : X_OBUF
    port map (
      I => shreg(7),
      O => Q_del(7)
    );
  Q_del_6_OBUF : X_OBUF
    port map (
      I => shreg(6),
      O => Q_del(6)
    );
  Q_del_5_OBUF : X_OBUF
    port map (
      I => shreg(5),
      O => Q_del(5)
    );
  Q_del_4_OBUF : X_OBUF
    port map (
      I => shreg(4),
      O => Q_del(4)
    );
  Q_del_3_OBUF : X_OBUF
    port map (
      I => shreg(3),
      O => Q_del(3)
    );
  Q_del_2_OBUF : X_OBUF
    port map (
      I => shreg(2),
      O => Q_del(2)
    );
  Q_del_1_OBUF : X_OBUF
    port map (
      I => shreg(1),
      O => Q_del(1)
    );
  Q_del_0_OBUF : X_OBUF
    port map (
      I => shreg(0),
      O => Q_del(0)
    );
  SEGMENTS_7_OBUF : X_OBUF
    port map (
      I => SEGMENTS_7_OBUF_30,
      O => SEGMENTS(7)
    );
  SEGMENTS_6_OBUF : X_OBUF
    port map (
      I => SEGMENTS_6_OBUF_31,
      O => SEGMENTS(6)
    );
  SEGMENTS_5_OBUF : X_OBUF
    port map (
      I => SEGMENTS_5_OBUF_32,
      O => SEGMENTS(5)
    );
  SEGMENTS_4_OBUF : X_OBUF
    port map (
      I => SEGMENTS_4_OBUF_33,
      O => SEGMENTS(4)
    );
  SEGMENTS_3_OBUF : X_OBUF
    port map (
      I => SEGMENTS_3_OBUF_34,
      O => SEGMENTS(3)
    );
  SEGMENTS_2_OBUF : X_OBUF
    port map (
      I => SEGMENTS_2_OBUF_35,
      O => SEGMENTS(2)
    );
  SEGMENTS_1_OBUF : X_OBUF
    port map (
      I => SEGMENTS_1_OBUF_36,
      O => SEGMENTS(1)
    );
  SEGMENTS_0_OBUF : X_OBUF
    port map (
      I => Mcompar_GND_5_o_Niveau_31_LessThan_3_o_lut_1_Q,
      O => SEGMENTS(0)
    );
  DISP_EN_3_OBUF : X_OBUF
    port map (
      I => DISP_EN_3_OBUF_26,
      O => DISP_EN(3)
    );
  DISP_EN_2_OBUF : X_OBUF
    port map (
      I => DISP_EN_2_OBUF_27,
      O => DISP_EN(2)
    );
  DISP_EN_1_OBUF : X_OBUF
    port map (
      I => DISP_EN_1_OBUF_28,
      O => DISP_EN(1)
    );
  DISP_EN_0_OBUF : X_OBUF
    port map (
      I => DISP_EN_0_OBUF_29,
      O => DISP_EN(0)
    );
  NlwBlock_didact_top_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_didact_top_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

