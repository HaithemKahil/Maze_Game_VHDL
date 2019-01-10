--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: didact_top_synthesis.vhd
-- /___/   /\     Timestamp: Thu Jan 03 18:16:58 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm didact_top -w -dir netgen/synthesis -ofmt vhdl -sim didact_top.ngc didact_top_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: didact_top.ngc
-- Output file	: C:\Users\Snow\Downloads\Detecteurquence\netgen\synthesis\didact_top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: didact_top
-- Xilinx	: D:\14.7\ISE_DS\ISE\
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity didact_top is
  port (
    rst : in STD_LOGIC := 'X'; 
    clkin : in STD_LOGIC := 'X'; 
    bouton1 : in STD_LOGIC := 'X'; 
    bouton2 : in STD_LOGIC := 'X'; 
    bouton3 : in STD_LOGIC := 'X'; 
    bouton4 : in STD_LOGIC := 'X'; 
    HSYNC : out STD_LOGIC; 
    VSYNC : out STD_LOGIC; 
    Q_del : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    RGB : out STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end didact_top;

architecture Structure of didact_top is
  signal rst_IBUF_0 : STD_LOGIC; 
  signal bouton1_IBUF_2 : STD_LOGIC; 
  signal bouton2_IBUF_3 : STD_LOGIC; 
  signal bouton3_IBUF_4 : STD_LOGIC; 
  signal bouton4_IBUF_5 : STD_LOGIC; 
  signal clk_dcm1 : STD_LOGIC; 
  signal inst_diviseur_clk_clk2hz_15 : STD_LOGIC; 
  signal inst_diviseur_clk_clk16hz_16 : STD_LOGIC; 
  signal inst_diviseur_clk_clk2khz_17 : STD_LOGIC; 
  signal ecran_i000052_1 : STD_LOGIC; 
  signal ecran_i000052_2 : STD_LOGIC; 
  signal ecran_HSYNC_20 : STD_LOGIC; 
  signal ecran_VSYNC_21 : STD_LOGIC; 
  signal gs : STD_LOGIC; 
  signal Inst_dcm1_clkfb : STD_LOGIC; 
  signal Inst_dcm1_clkfx : STD_LOGIC; 
  signal Inst_dcm1_clk0 : STD_LOGIC; 
  signal Inst_dcm1_clkin1 : STD_LOGIC; 
  signal inst4_debounce_Q3_28 : STD_LOGIC; 
  signal inst4_debounce_Q2_29 : STD_LOGIC; 
  signal inst4_debounce_Q1_30 : STD_LOGIC; 
  signal inst3_debounce_Q3_31 : STD_LOGIC; 
  signal inst3_debounce_Q2_32 : STD_LOGIC; 
  signal inst3_debounce_Q1_33 : STD_LOGIC; 
  signal inst2_debounce_Q3_34 : STD_LOGIC; 
  signal inst2_debounce_Q2_35 : STD_LOGIC; 
  signal inst2_debounce_Q1_36 : STD_LOGIC; 
  signal inst1_debounce_Q3_37 : STD_LOGIC; 
  signal inst1_debounce_Q2_38 : STD_LOGIC; 
  signal inst1_debounce_Q1_39 : STD_LOGIC; 
  signal encodeur_D_3_D_2_OR_5_o : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd5_In11 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd5_In : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd4_In : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd3_In : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd1_In_46 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd5_47 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd4_48 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd3_49 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd2_50 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd1_51 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd3_In1_52 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd1_In1 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd4_In1_54 : STD_LOGIC; 
  signal encodeur_D_3_D_2_OR_5_o1_55 : STD_LOGIC; 
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
  signal inst_diviseur_clk_n0012_inv_162 : STD_LOGIC; 
  signal inst_diviseur_clk_n0006_inv : STD_LOGIC; 
  signal inst_diviseur_clk_n0000_inv : STD_LOGIC; 
  signal inst_diviseur_clk_div2hz_temp_165 : STD_LOGIC; 
  signal inst_diviseur_clk_div2khz_temp_166 : STD_LOGIC; 
  signal inst_diviseur_clk_div16hz_temp_167 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_6_Q_253 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_5_Q_254 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_5_Q_255 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_4_Q_256 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_4_Q_257 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_3_Q_258 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_3_Q_259 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_2_Q_260 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_2_Q_261 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_1_Q_262 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_1_Q_263 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lutdi1_264 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_0_Q_265 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_0_Q_266 : STD_LOGIC; 
  signal ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lutdi_267 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_5_Q_300 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_4_Q_301 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_4_Q_302 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_3_Q_303 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_3_Q_304 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_2_Q_305 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_2_Q_306 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_1_Q_307 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_1_Q_308 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_0_Q_309 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_0_Q_310 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lutdi_311 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_5_Q_312 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_5_Q_313 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_4_Q_314 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_4_Q_315 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_3_Q_316 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_3_Q_317 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_2_Q_318 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_2_Q_319 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_1_Q_320 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_1_Q_321 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lutdi1_322 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_0_Q_323 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_0_Q_324 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lutdi_325 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_6_Q : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_5_Q_327 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_5_Q_328 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi5_329 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_4_Q_330 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_4_Q_331 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi4_332 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_3_Q_333 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_3_Q_334 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi3_335 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_2_Q_336 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_2_Q_337 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi2_338 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_1_Q_339 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_1_Q_340 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi1_341 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_0_Q_342 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_0_Q_343 : STD_LOGIC; 
  signal ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi_344 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_6_Q_345 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_5_Q_346 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_5_Q_347 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_4_Q_348 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_4_Q_349 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_3_Q_350 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_3_Q_351 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_2_Q_352 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_2_Q_353 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_1_Q_354 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_1_Q_355 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lutdi1_356 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_0_Q_357 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_0_Q_358 : STD_LOGIC; 
  signal ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lutdi_359 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_6_Q : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_5_Q_361 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_5_Q_362 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi5_363 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_4_Q_364 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_4_Q_365 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi4_366 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_3_Q_367 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_3_Q_368 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi3_369 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_2_Q_370 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_2_Q_371 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi2_372 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_1_Q_373 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_1_Q_374 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi1_375 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_0_Q_376 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_0_Q_377 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi_378 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_6_Q : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_5_Q_380 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_5_Q_381 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_4_Q_382 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_4_Q_383 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_3_Q_384 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_3_Q_385 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_2_Q_386 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_2_Q_387 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_1_Q_388 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_1_Q_389 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lutdi1_390 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_0_Q_391 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_0_Q_392 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lutdi_393 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_5_Q_394 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_5_Q_395 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_4_Q_396 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_4_Q_397 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_3_Q_398 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_3_Q_399 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_2_Q_400 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_2_Q_401 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_1_Q_402 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_1_Q_403 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lutdi1_404 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_0_Q_405 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_0_Q_406 : STD_LOGIC; 
  signal ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lutdi_407 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_5_Q_408 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_4_Q_409 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_4_Q_410 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_3_Q_411 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_3_Q_412 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_2_Q_413 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_2_Q_414 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_1_Q_415 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_1_Q_416 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lutdi1_417 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_0_Q_418 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_0_Q_419 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lutdi_420 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_4_Q_421 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_3_Q_422 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_3_Q_423 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_2_Q_424 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_2_Q_425 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_1_Q_426 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_1_Q_427 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_0_Q_428 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_0_Q_429 : STD_LOGIC; 
  signal ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lutdi_430 : STD_LOGIC; 
  signal ecran_Result_31_1 : STD_LOGIC; 
  signal ecran_Result_30_1 : STD_LOGIC; 
  signal ecran_Result_29_1 : STD_LOGIC; 
  signal ecran_Result_28_1 : STD_LOGIC; 
  signal ecran_Result_27_1 : STD_LOGIC; 
  signal ecran_Result_26_1 : STD_LOGIC; 
  signal ecran_Result_25_1 : STD_LOGIC; 
  signal ecran_Result_24_1 : STD_LOGIC; 
  signal ecran_Result_23_1 : STD_LOGIC; 
  signal ecran_Result_22_1 : STD_LOGIC; 
  signal ecran_Result_21_1 : STD_LOGIC; 
  signal ecran_Result_20_1 : STD_LOGIC; 
  signal ecran_Result_19_1 : STD_LOGIC; 
  signal ecran_Result_18_1 : STD_LOGIC; 
  signal ecran_Result_17_1 : STD_LOGIC; 
  signal ecran_Result_16_1 : STD_LOGIC; 
  signal ecran_Result_15_1 : STD_LOGIC; 
  signal ecran_Result_14_1 : STD_LOGIC; 
  signal ecran_Result_13_1 : STD_LOGIC; 
  signal ecran_Result_12_1 : STD_LOGIC; 
  signal ecran_Result_11_1 : STD_LOGIC; 
  signal ecran_Result_10_1 : STD_LOGIC; 
  signal ecran_Result_9_1 : STD_LOGIC; 
  signal ecran_Result_8_1 : STD_LOGIC; 
  signal ecran_Result_7_1 : STD_LOGIC; 
  signal ecran_Result_6_1 : STD_LOGIC; 
  signal ecran_Result_5_1 : STD_LOGIC; 
  signal ecran_Result_4_1 : STD_LOGIC; 
  signal ecran_Result_3_1 : STD_LOGIC; 
  signal ecran_Result_2_1 : STD_LOGIC; 
  signal ecran_Result_1_1 : STD_LOGIC; 
  signal ecran_Result_0_1 : STD_LOGIC; 
  signal ecran_n1125_0_inv : STD_LOGIC; 
  signal ecran_GND_17_o_vPos_31_OR_40_o : STD_LOGIC; 
  signal ecran_GND_17_o_GND_17_o_AND_16_o : STD_LOGIC; 
  signal ecran_GND_17_o_hPos_31_OR_39_o : STD_LOGIC; 
  signal ecran_w_31_vPos_31_LessThan_37_o : STD_LOGIC; 
  signal ecran_vPos_31_z_31_LessThan_36_o : STD_LOGIC; 
  signal ecran_GND_17_o_vPos_31_LessThan_16_o : STD_LOGIC; 
  signal ecran_GND_17_o_vPos_31_LessThan_13_o : STD_LOGIC; 
  signal ecran_n1137 : STD_LOGIC; 
  signal ecran_y_31_hPos_31_LessThan_35_o : STD_LOGIC; 
  signal ecran_hPos_31_x_31_LessThan_34_o : STD_LOGIC; 
  signal ecran_GND_17_o_hPos_31_LessThan_15_o : STD_LOGIC; 
  signal ecran_GND_17_o_hPos_31_LessThan_11_o : STD_LOGIC; 
  signal ecran_GND_17_o_hPos_31_equal_1_o : STD_LOGIC; 
  signal ecran_videoOn_574 : STD_LOGIC; 
  signal ecran_clk25_INV_33_o : STD_LOGIC; 
  signal ecran_clk25_BUFG_576 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd3_In2_577 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd3_In3_578 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd3_In4_579 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd2_In2_580 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd4_In2_581 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd5_In1_582 : STD_LOGIC; 
  signal Inst_msa_hdl_etatpres_FSM_FFd5_In2_583 : STD_LOGIC; 
  signal inst_diviseur_clk_n0006_inv1_584 : STD_LOGIC; 
  signal inst_diviseur_clk_n0006_inv2_585 : STD_LOGIC; 
  signal inst_diviseur_clk_n0000_inv1_586 : STD_LOGIC; 
  signal inst_diviseur_clk_n0000_inv2_587 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal ecran_n11371_589 : STD_LOGIC; 
  signal ecran_n11372_590 : STD_LOGIC; 
  signal ecran_n11373_591 : STD_LOGIC; 
  signal ecran_n11374_592 : STD_LOGIC; 
  signal ecran_n11375_593 : STD_LOGIC; 
  signal ecran_n11376_594 : STD_LOGIC; 
  signal ecran_GND_17_o_hPos_31_equal_1_o_31_Q : STD_LOGIC; 
  signal ecran_GND_17_o_hPos_31_equal_1_o_31_1_596 : STD_LOGIC; 
  signal ecran_GND_17_o_hPos_31_equal_1_o_31_2_597 : STD_LOGIC; 
  signal ecran_GND_17_o_hPos_31_equal_1_o_31_3_598 : STD_LOGIC; 
  signal ecran_GND_17_o_hPos_31_equal_1_o_31_5 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt_618 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt_619 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt_620 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt_621 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt_622 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt_623 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt_624 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt_625 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt_626 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt_627 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt_628 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt_629 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt_630 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt_631 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt_632 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt_633 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt_634 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt_635 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt_636 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt_637 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt_638 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt_639 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt_640 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt_641 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt_642 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt_643 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt_644 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt_645 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt_646 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt_647 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_17_rt_648 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_16_rt_649 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_15_rt_650 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_14_rt_651 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_13_rt_652 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_12_rt_653 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_11_rt_654 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_10_rt_655 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_9_rt_656 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_8_rt_657 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_7_rt_658 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_6_rt_659 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_5_rt_660 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_4_rt_661 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_3_rt_662 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_2_rt_663 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_cy_1_rt_664 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_30_rt_665 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_29_rt_666 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_28_rt_667 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_27_rt_668 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_26_rt_669 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_25_rt_670 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_24_rt_671 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_23_rt_672 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_22_rt_673 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_21_rt_674 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_20_rt_675 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_19_rt_676 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_18_rt_677 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_17_rt_678 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_16_rt_679 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_15_rt_680 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_14_rt_681 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_13_rt_682 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_12_rt_683 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_11_rt_684 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_10_rt_685 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_9_rt_686 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_8_rt_687 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_7_rt_688 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_6_rt_689 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_5_rt_690 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_4_rt_691 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_3_rt_692 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_2_rt_693 : STD_LOGIC; 
  signal ecran_Mcount_vPos_cy_1_rt_694 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_30_rt_695 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_29_rt_696 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_28_rt_697 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_27_rt_698 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_26_rt_699 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_25_rt_700 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_24_rt_701 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_23_rt_702 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_22_rt_703 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_21_rt_704 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_20_rt_705 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_19_rt_706 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_18_rt_707 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_17_rt_708 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_16_rt_709 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_15_rt_710 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_14_rt_711 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_13_rt_712 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_12_rt_713 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_11_rt_714 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_10_rt_715 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_9_rt_716 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_8_rt_717 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_7_rt_718 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_6_rt_719 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_5_rt_720 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_4_rt_721 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_3_rt_722 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_2_rt_723 : STD_LOGIC; 
  signal ecran_Mcount_hPos_cy_1_rt_724 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2hz_xor_21_rt_725 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt2khz_xor_11_rt_726 : STD_LOGIC; 
  signal inst_diviseur_clk_Mcount_cnt16hz_xor_18_rt_727 : STD_LOGIC; 
  signal ecran_Mcount_vPos_xor_31_rt_728 : STD_LOGIC; 
  signal ecran_Mcount_hPos_xor_31_rt_729 : STD_LOGIC; 
  signal inst_diviseur_clk_div2khz_temp_rstpot_730 : STD_LOGIC; 
  signal inst_diviseur_clk_div16hz_temp_rstpot_731 : STD_LOGIC; 
  signal inst_diviseur_clk_div2hz_temp_rstpot_732 : STD_LOGIC; 
  signal ecran_i000025_0_rstpot : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal ecran_i000052_1_LDC_735 : STD_LOGIC; 
  signal ecran_i000052_1_C_1 : STD_LOGIC; 
  signal ecran_i000052_1_P_1_737 : STD_LOGIC; 
  signal ecran_i000052_2_C_2_738 : STD_LOGIC; 
  signal ecran_i000052_2_P_2_739 : STD_LOGIC; 
  signal ecran_vPos_31_rstpot_740 : STD_LOGIC; 
  signal ecran_vPos_30_rstpot_741 : STD_LOGIC; 
  signal ecran_vPos_29_rstpot_742 : STD_LOGIC; 
  signal ecran_vPos_28_rstpot_743 : STD_LOGIC; 
  signal ecran_vPos_27_rstpot_744 : STD_LOGIC; 
  signal ecran_vPos_26_rstpot_745 : STD_LOGIC; 
  signal ecran_vPos_25_rstpot_746 : STD_LOGIC; 
  signal ecran_vPos_24_rstpot_747 : STD_LOGIC; 
  signal ecran_vPos_23_rstpot_748 : STD_LOGIC; 
  signal ecran_vPos_22_rstpot_749 : STD_LOGIC; 
  signal ecran_vPos_21_rstpot_750 : STD_LOGIC; 
  signal ecran_vPos_20_rstpot_751 : STD_LOGIC; 
  signal ecran_vPos_19_rstpot_752 : STD_LOGIC; 
  signal ecran_vPos_18_rstpot_753 : STD_LOGIC; 
  signal ecran_vPos_17_rstpot_754 : STD_LOGIC; 
  signal ecran_vPos_16_rstpot_755 : STD_LOGIC; 
  signal ecran_vPos_15_rstpot_756 : STD_LOGIC; 
  signal ecran_vPos_14_rstpot_757 : STD_LOGIC; 
  signal ecran_vPos_13_rstpot_758 : STD_LOGIC; 
  signal ecran_vPos_12_rstpot_759 : STD_LOGIC; 
  signal ecran_vPos_11_rstpot_760 : STD_LOGIC; 
  signal ecran_vPos_10_rstpot_761 : STD_LOGIC; 
  signal ecran_vPos_9_rstpot_762 : STD_LOGIC; 
  signal ecran_vPos_8_rstpot_763 : STD_LOGIC; 
  signal ecran_vPos_7_rstpot_764 : STD_LOGIC; 
  signal ecran_vPos_6_rstpot_765 : STD_LOGIC; 
  signal ecran_vPos_5_rstpot_766 : STD_LOGIC; 
  signal ecran_vPos_4_rstpot_767 : STD_LOGIC; 
  signal ecran_vPos_3_rstpot_768 : STD_LOGIC; 
  signal ecran_vPos_2_rstpot_769 : STD_LOGIC; 
  signal ecran_vPos_1_rstpot_770 : STD_LOGIC; 
  signal ecran_vPos_0_rstpot_771 : STD_LOGIC; 
  signal ecran_GND_17_o_hPos_31_equal_1_o_31_7_772 : STD_LOGIC; 
  signal ecran_n11377_773 : STD_LOGIC; 
  signal ecran_hPos_30_rstpot_774 : STD_LOGIC; 
  signal ecran_hPos_29_rstpot_775 : STD_LOGIC; 
  signal ecran_hPos_28_rstpot_776 : STD_LOGIC; 
  signal ecran_hPos_27_rstpot_777 : STD_LOGIC; 
  signal ecran_hPos_26_rstpot_778 : STD_LOGIC; 
  signal ecran_hPos_25_rstpot_779 : STD_LOGIC; 
  signal ecran_hPos_24_rstpot_780 : STD_LOGIC; 
  signal ecran_hPos_23_rstpot_781 : STD_LOGIC; 
  signal ecran_hPos_22_rstpot_782 : STD_LOGIC; 
  signal ecran_hPos_21_rstpot_783 : STD_LOGIC; 
  signal ecran_hPos_20_rstpot_784 : STD_LOGIC; 
  signal ecran_hPos_19_rstpot_785 : STD_LOGIC; 
  signal ecran_hPos_18_rstpot_786 : STD_LOGIC; 
  signal ecran_hPos_17_rstpot_787 : STD_LOGIC; 
  signal ecran_hPos_16_rstpot_788 : STD_LOGIC; 
  signal ecran_hPos_15_rstpot_789 : STD_LOGIC; 
  signal ecran_hPos_14_rstpot_790 : STD_LOGIC; 
  signal ecran_hPos_13_rstpot_791 : STD_LOGIC; 
  signal ecran_hPos_12_rstpot_792 : STD_LOGIC; 
  signal ecran_hPos_11_rstpot_793 : STD_LOGIC; 
  signal ecran_hPos_10_rstpot_794 : STD_LOGIC; 
  signal ecran_hPos_9_rstpot_795 : STD_LOGIC; 
  signal ecran_hPos_8_rstpot_796 : STD_LOGIC; 
  signal ecran_hPos_7_rstpot_797 : STD_LOGIC; 
  signal ecran_hPos_6_rstpot_798 : STD_LOGIC; 
  signal ecran_hPos_5_rstpot_799 : STD_LOGIC; 
  signal ecran_hPos_4_rstpot_800 : STD_LOGIC; 
  signal ecran_hPos_3_rstpot_801 : STD_LOGIC; 
  signal ecran_hPos_2_rstpot_802 : STD_LOGIC; 
  signal ecran_hPos_1_rstpot_803 : STD_LOGIC; 
  signal ecran_hPos_0_rstpot_804 : STD_LOGIC; 
  signal ecran_hPos_31_rstpot_805 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal ecran_clk25_810 : STD_LOGIC; 
  signal shreg_0_1_811 : STD_LOGIC; 
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
  signal shreg : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal A : STD_LOGIC_VECTOR ( 1 downto 1 ); 
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
  signal ecran_Mcount_vPos_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal ecran_Mcount_vPos_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ecran_Mcount_hPos_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal ecran_Mcount_hPos_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ecran_Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal ecran_vPos : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal ecran_i000025 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal ecran_hPos : STD_LOGIC_VECTOR ( 31 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => A(1)
    );
  XST_GND : GND
    port map (
      G => ecran_i000052_1_C_1
    );
  shreg_0 : FDCE
    port map (
      C => inst_diviseur_clk_clk16hz_16,
      CE => Inst_msa_hdl_etatpres_FSM_FFd4_In1_54,
      CLR => rst_IBUF_0,
      D => inst_diviseur_clk_clk2hz_15,
      Q => shreg(0)
    );
  shreg_1 : FDCE
    port map (
      C => inst_diviseur_clk_clk16hz_16,
      CE => Inst_msa_hdl_etatpres_FSM_FFd4_In1_54,
      CLR => rst_IBUF_0,
      D => shreg(0),
      Q => shreg(1)
    );
  shreg_2 : FDCE
    port map (
      C => inst_diviseur_clk_clk16hz_16,
      CE => Inst_msa_hdl_etatpres_FSM_FFd4_In1_54,
      CLR => rst_IBUF_0,
      D => shreg(1),
      Q => shreg(2)
    );
  shreg_3 : FDCE
    port map (
      C => inst_diviseur_clk_clk16hz_16,
      CE => Inst_msa_hdl_etatpres_FSM_FFd4_In1_54,
      CLR => rst_IBUF_0,
      D => shreg(2),
      Q => shreg(3)
    );
  shreg_4 : FDCE
    port map (
      C => inst_diviseur_clk_clk16hz_16,
      CE => Inst_msa_hdl_etatpres_FSM_FFd4_In1_54,
      CLR => rst_IBUF_0,
      D => shreg(3),
      Q => shreg(4)
    );
  shreg_5 : FDCE
    port map (
      C => inst_diviseur_clk_clk16hz_16,
      CE => Inst_msa_hdl_etatpres_FSM_FFd4_In1_54,
      CLR => rst_IBUF_0,
      D => shreg(4),
      Q => shreg(5)
    );
  shreg_6 : FDCE
    port map (
      C => inst_diviseur_clk_clk16hz_16,
      CE => Inst_msa_hdl_etatpres_FSM_FFd4_In1_54,
      CLR => rst_IBUF_0,
      D => shreg(5),
      Q => shreg(6)
    );
  shreg_7 : FDCE
    port map (
      C => inst_diviseur_clk_clk16hz_16,
      CE => Inst_msa_hdl_etatpres_FSM_FFd4_In1_54,
      CLR => rst_IBUF_0,
      D => shreg(6),
      Q => shreg(7)
    );
  inst4_debounce_Q3 : FD
    port map (
      C => inst_diviseur_clk_clk2khz_17,
      D => inst4_debounce_Q2_29,
      Q => inst4_debounce_Q3_28
    );
  inst4_debounce_Q2 : FD
    port map (
      C => inst_diviseur_clk_clk2khz_17,
      D => inst4_debounce_Q1_30,
      Q => inst4_debounce_Q2_29
    );
  inst4_debounce_Q1 : FD
    port map (
      C => inst_diviseur_clk_clk2khz_17,
      D => bouton4_IBUF_5,
      Q => inst4_debounce_Q1_30
    );
  inst3_debounce_Q3 : FD
    port map (
      C => inst_diviseur_clk_clk2khz_17,
      D => inst3_debounce_Q2_32,
      Q => inst3_debounce_Q3_31
    );
  inst3_debounce_Q2 : FD
    port map (
      C => inst_diviseur_clk_clk2khz_17,
      D => inst3_debounce_Q1_33,
      Q => inst3_debounce_Q2_32
    );
  inst3_debounce_Q1 : FD
    port map (
      C => inst_diviseur_clk_clk2khz_17,
      D => bouton3_IBUF_4,
      Q => inst3_debounce_Q1_33
    );
  inst2_debounce_Q3 : FD
    port map (
      C => inst_diviseur_clk_clk2khz_17,
      D => inst2_debounce_Q2_35,
      Q => inst2_debounce_Q3_34
    );
  inst2_debounce_Q2 : FD
    port map (
      C => inst_diviseur_clk_clk2khz_17,
      D => inst2_debounce_Q1_36,
      Q => inst2_debounce_Q2_35
    );
  inst2_debounce_Q1 : FD
    port map (
      C => inst_diviseur_clk_clk2khz_17,
      D => bouton2_IBUF_3,
      Q => inst2_debounce_Q1_36
    );
  inst1_debounce_Q3 : FD
    port map (
      C => inst_diviseur_clk_clk2khz_17,
      D => inst1_debounce_Q2_38,
      Q => inst1_debounce_Q3_37
    );
  inst1_debounce_Q2 : FD
    port map (
      C => inst_diviseur_clk_clk2khz_17,
      D => inst1_debounce_Q1_39,
      Q => inst1_debounce_Q2_38
    );
  inst1_debounce_Q1 : FD
    port map (
      C => inst_diviseur_clk_clk2khz_17,
      D => bouton1_IBUF_2,
      Q => inst1_debounce_Q1_39
    );
  Inst_msa_hdl_etatpres_FSM_FFd4 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      CLR => rst_IBUF_0,
      D => Inst_msa_hdl_etatpres_FSM_FFd4_In,
      Q => Inst_msa_hdl_etatpres_FSM_FFd4_48
    );
  Inst_msa_hdl_etatpres_FSM_FFd5 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      CLR => rst_IBUF_0,
      D => Inst_msa_hdl_etatpres_FSM_FFd5_In,
      Q => Inst_msa_hdl_etatpres_FSM_FFd5_47
    );
  Inst_msa_hdl_etatpres_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      CLR => rst_IBUF_0,
      D => Inst_msa_hdl_etatpres_FSM_FFd1_In_46,
      Q => Inst_msa_hdl_etatpres_FSM_FFd1_51
    );
  Inst_msa_hdl_etatpres_FSM_FFd3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      CLR => rst_IBUF_0,
      D => Inst_msa_hdl_etatpres_FSM_FFd3_In,
      Q => Inst_msa_hdl_etatpres_FSM_FFd3_49
    );
  Inst_msa_hdl_etatpres_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      CLR => rst_IBUF_0,
      D => Inst_msa_hdl_etatpres_FSM_FFd2_In,
      Q => Inst_msa_hdl_etatpres_FSM_FFd2_50
    );
  Inst_dcm1_clkout1_buf : BUFG
    port map (
      O => clk_dcm1,
      I => Inst_dcm1_clkfx
    );
  Inst_dcm1_clkf_buf : BUFG
    port map (
      O => Inst_dcm1_clkfb,
      I => Inst_dcm1_clk0
    );
  Inst_dcm1_dcm_sp_inst : DCM_SP
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
      PSCLK => ecran_i000052_1_C_1,
      CLK2X => NLW_Inst_dcm1_dcm_sp_inst_CLK2X_UNCONNECTED,
      CLKFX => Inst_dcm1_clkfx,
      CLK180 => NLW_Inst_dcm1_dcm_sp_inst_CLK180_UNCONNECTED,
      CLK270 => NLW_Inst_dcm1_dcm_sp_inst_CLK270_UNCONNECTED,
      RST => rst_IBUF_0,
      PSINCDEC => ecran_i000052_1_C_1,
      CLKIN => Inst_dcm1_clkin1,
      CLKFB => Inst_dcm1_clkfb,
      PSEN => ecran_i000052_1_C_1,
      CLK0 => Inst_dcm1_clk0,
      CLKFX180 => NLW_Inst_dcm1_dcm_sp_inst_CLKFX180_UNCONNECTED,
      CLKDV => NLW_Inst_dcm1_dcm_sp_inst_CLKDV_UNCONNECTED,
      PSDONE => NLW_Inst_dcm1_dcm_sp_inst_PSDONE_UNCONNECTED,
      CLK90 => NLW_Inst_dcm1_dcm_sp_inst_CLK90_UNCONNECTED,
      LOCKED => NLW_Inst_dcm1_dcm_sp_inst_LOCKED_UNCONNECTED,
      DSSEN => ecran_i000052_1_C_1,
      STATUS(7) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_7_UNCONNECTED,
      STATUS(6) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_6_UNCONNECTED,
      STATUS(5) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_5_UNCONNECTED,
      STATUS(4) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_4_UNCONNECTED,
      STATUS(3) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_3_UNCONNECTED,
      STATUS(2) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_2_UNCONNECTED,
      STATUS(1) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_1_UNCONNECTED,
      STATUS(0) => NLW_Inst_dcm1_dcm_sp_inst_STATUS_0_UNCONNECTED
    );
  Inst_dcm1_clkin1_buf : IBUFG
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IOSTANDARD => "DEFAULT"
    )
    port map (
      I => clkin,
      O => Inst_dcm1_clkin1
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_21_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(20),
      LI => inst_diviseur_clk_Mcount_cnt2hz_xor_21_rt_725,
      O => inst_diviseur_clk_Result(21)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_20_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(19),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt_618,
      O => inst_diviseur_clk_Result(20)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_20_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(19),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt_618,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(20)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_19_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(18),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt_619,
      O => inst_diviseur_clk_Result(19)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_19_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(18),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt_619,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(19)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_18_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(17),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt_620,
      O => inst_diviseur_clk_Result(18)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_18_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(17),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt_620,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(18)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_17_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(16),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt_621,
      O => inst_diviseur_clk_Result(17)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_17_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(16),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt_621,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(17)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_16_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(15),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt_622,
      O => inst_diviseur_clk_Result(16)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_16_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(15),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt_622,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(16)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_15_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(14),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt_623,
      O => inst_diviseur_clk_Result(15)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_15_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(14),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt_623,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(15)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_14_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(13),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt_624,
      O => inst_diviseur_clk_Result(14)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_14_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(13),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt_624,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(14)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_13_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(12),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt_625,
      O => inst_diviseur_clk_Result(13)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_13_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(12),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt_625,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(13)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_12_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(11),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt_626,
      O => inst_diviseur_clk_Result(12)
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_12_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(11),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt_626,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(12)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_11_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(10),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt_627,
      O => inst_diviseur_clk_Result_11_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_11_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(10),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt_627,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(11)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_10_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(9),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt_628,
      O => inst_diviseur_clk_Result_10_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_10_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(9),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt_628,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(10)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_9_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(8),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt_629,
      O => inst_diviseur_clk_Result_9_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_9_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(8),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt_629,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(9)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_8_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(7),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt_630,
      O => inst_diviseur_clk_Result_8_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_8_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(7),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt_630,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(8)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_7_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(6),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt_631,
      O => inst_diviseur_clk_Result_7_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_7_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(6),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt_631,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(7)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_6_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(5),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt_632,
      O => inst_diviseur_clk_Result_6_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_6_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(5),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt_632,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(6)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_5_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(4),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt_633,
      O => inst_diviseur_clk_Result_5_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_5_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(4),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt_633,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(5)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_4_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(3),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt_634,
      O => inst_diviseur_clk_Result_4_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_4_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(3),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt_634,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(4)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_3_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(2),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt_635,
      O => inst_diviseur_clk_Result_3_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_3_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(2),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt_635,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(3)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_2_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(1),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt_636,
      O => inst_diviseur_clk_Result_2_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_2_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(1),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt_636,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(2)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_1_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(0),
      LI => inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt_637,
      O => inst_diviseur_clk_Result_1_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_1_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2hz_cy(0),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt_637,
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(1)
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_0_Q : XORCY
    port map (
      CI => ecran_i000052_1_C_1,
      LI => inst_diviseur_clk_Mcount_cnt2hz_lut(0),
      O => inst_diviseur_clk_Result_0_1
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_0_Q : MUXCY
    port map (
      CI => ecran_i000052_1_C_1,
      DI => A(1),
      S => inst_diviseur_clk_Mcount_cnt2hz_lut(0),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy(0)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_11_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(10),
      LI => inst_diviseur_clk_Mcount_cnt2khz_xor_11_rt_726,
      O => inst_diviseur_clk_Result(11)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_10_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(9),
      LI => inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt_638,
      O => inst_diviseur_clk_Result(10)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_10_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(9),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt_638,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(10)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_9_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(8),
      LI => inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt_639,
      O => inst_diviseur_clk_Result(9)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_9_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(8),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt_639,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(9)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_8_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(7),
      LI => inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt_640,
      O => inst_diviseur_clk_Result(8)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_8_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(7),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt_640,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(8)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_7_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(6),
      LI => inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt_641,
      O => inst_diviseur_clk_Result(7)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_7_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(6),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt_641,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(7)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_6_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(5),
      LI => inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt_642,
      O => inst_diviseur_clk_Result(6)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_6_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(5),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt_642,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(6)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_5_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(4),
      LI => inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt_643,
      O => inst_diviseur_clk_Result(5)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_5_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(4),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt_643,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(5)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_4_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(3),
      LI => inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt_644,
      O => inst_diviseur_clk_Result(4)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_4_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(3),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt_644,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(4)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_3_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(2),
      LI => inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt_645,
      O => inst_diviseur_clk_Result(3)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_3_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(2),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt_645,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(3)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_2_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(1),
      LI => inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt_646,
      O => inst_diviseur_clk_Result(2)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_2_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(1),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt_646,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(2)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_1_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(0),
      LI => inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt_647,
      O => inst_diviseur_clk_Result(1)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_1_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt2khz_cy(0),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt_647,
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(1)
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_0_Q : XORCY
    port map (
      CI => ecran_i000052_1_C_1,
      LI => inst_diviseur_clk_Mcount_cnt2khz_lut(0),
      O => inst_diviseur_clk_Result(0)
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_0_Q : MUXCY
    port map (
      CI => ecran_i000052_1_C_1,
      DI => A(1),
      S => inst_diviseur_clk_Mcount_cnt2khz_lut(0),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy(0)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_18_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(17),
      LI => inst_diviseur_clk_Mcount_cnt16hz_xor_18_rt_727,
      O => inst_diviseur_clk_Result_18_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_17_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(16),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_17_rt_648,
      O => inst_diviseur_clk_Result_17_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_17_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(16),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_17_rt_648,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(17)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_16_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(15),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_16_rt_649,
      O => inst_diviseur_clk_Result_16_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_16_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(15),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_16_rt_649,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(16)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_15_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(14),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_15_rt_650,
      O => inst_diviseur_clk_Result_15_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_15_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(14),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_15_rt_650,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(15)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_14_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(13),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_14_rt_651,
      O => inst_diviseur_clk_Result_14_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_14_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(13),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_14_rt_651,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(14)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_13_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(12),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_13_rt_652,
      O => inst_diviseur_clk_Result_13_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_13_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(12),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_13_rt_652,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(13)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_12_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(11),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_12_rt_653,
      O => inst_diviseur_clk_Result_12_1
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_12_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(11),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_12_rt_653,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(12)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_11_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(10),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_11_rt_654,
      O => inst_diviseur_clk_Result_11_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_11_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(10),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_11_rt_654,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(11)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_10_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(9),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_10_rt_655,
      O => inst_diviseur_clk_Result_10_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_10_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(9),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_10_rt_655,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(10)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_9_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(8),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_9_rt_656,
      O => inst_diviseur_clk_Result_9_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_9_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(8),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_9_rt_656,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(9)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_8_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(7),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_8_rt_657,
      O => inst_diviseur_clk_Result_8_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_8_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(7),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_8_rt_657,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(8)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_7_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(6),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_7_rt_658,
      O => inst_diviseur_clk_Result_7_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_7_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(6),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_7_rt_658,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(7)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_6_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(5),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_6_rt_659,
      O => inst_diviseur_clk_Result_6_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_6_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(5),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_6_rt_659,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(6)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_5_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(4),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_5_rt_660,
      O => inst_diviseur_clk_Result_5_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_5_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(4),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_5_rt_660,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(5)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_4_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(3),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_4_rt_661,
      O => inst_diviseur_clk_Result_4_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_4_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(3),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_4_rt_661,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(4)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_3_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(2),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_3_rt_662,
      O => inst_diviseur_clk_Result_3_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_3_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(2),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_3_rt_662,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(3)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_2_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(1),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_2_rt_663,
      O => inst_diviseur_clk_Result_2_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_2_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(1),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_2_rt_663,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(2)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_1_Q : XORCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(0),
      LI => inst_diviseur_clk_Mcount_cnt16hz_cy_1_rt_664,
      O => inst_diviseur_clk_Result_1_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_1_Q : MUXCY
    port map (
      CI => inst_diviseur_clk_Mcount_cnt16hz_cy(0),
      DI => ecran_i000052_1_C_1,
      S => inst_diviseur_clk_Mcount_cnt16hz_cy_1_rt_664,
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(1)
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_0_Q : XORCY
    port map (
      CI => ecran_i000052_1_C_1,
      LI => inst_diviseur_clk_Mcount_cnt16hz_lut(0),
      O => inst_diviseur_clk_Result_0_2
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_0_Q : MUXCY
    port map (
      CI => ecran_i000052_1_C_1,
      DI => A(1),
      S => inst_diviseur_clk_Mcount_cnt16hz_lut(0),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy(0)
    );
  inst_diviseur_clk_cnt16hz_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_18_1,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(18)
    );
  inst_diviseur_clk_cnt16hz_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_17_1,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(17)
    );
  inst_diviseur_clk_cnt16hz_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_16_1,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(16)
    );
  inst_diviseur_clk_cnt16hz_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_15_1,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(15)
    );
  inst_diviseur_clk_cnt16hz_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_14_1,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(14)
    );
  inst_diviseur_clk_cnt16hz_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_13_1,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(13)
    );
  inst_diviseur_clk_cnt16hz_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_12_1,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(12)
    );
  inst_diviseur_clk_cnt16hz_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_11_2,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(11)
    );
  inst_diviseur_clk_cnt16hz_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_10_2,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(10)
    );
  inst_diviseur_clk_cnt16hz_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_9_2,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(9)
    );
  inst_diviseur_clk_cnt16hz_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_8_2,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(8)
    );
  inst_diviseur_clk_cnt16hz_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_7_2,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(7)
    );
  inst_diviseur_clk_cnt16hz_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_6_2,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(6)
    );
  inst_diviseur_clk_cnt16hz_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_5_2,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(5)
    );
  inst_diviseur_clk_cnt16hz_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_4_2,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(4)
    );
  inst_diviseur_clk_cnt16hz_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_3_2,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(3)
    );
  inst_diviseur_clk_cnt16hz_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_2_2,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(2)
    );
  inst_diviseur_clk_cnt16hz_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_1_2,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(1)
    );
  inst_diviseur_clk_cnt16hz_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_0_2,
      R => inst_diviseur_clk_n0006_inv,
      Q => inst_diviseur_clk_cnt16hz(0)
    );
  inst_diviseur_clk_cnt2hz_21 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(21),
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(21)
    );
  inst_diviseur_clk_cnt2hz_20 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(20),
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(20)
    );
  inst_diviseur_clk_cnt2hz_19 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(19),
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(19)
    );
  inst_diviseur_clk_cnt2hz_18 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(18),
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(18)
    );
  inst_diviseur_clk_cnt2hz_17 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(17),
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(17)
    );
  inst_diviseur_clk_cnt2hz_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(16),
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(16)
    );
  inst_diviseur_clk_cnt2hz_15 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(15),
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(15)
    );
  inst_diviseur_clk_cnt2hz_14 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(14),
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(14)
    );
  inst_diviseur_clk_cnt2hz_13 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(13),
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(13)
    );
  inst_diviseur_clk_cnt2hz_12 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(12),
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(12)
    );
  inst_diviseur_clk_cnt2hz_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_11_1,
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(11)
    );
  inst_diviseur_clk_cnt2hz_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_10_1,
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(10)
    );
  inst_diviseur_clk_cnt2hz_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_9_1,
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(9)
    );
  inst_diviseur_clk_cnt2hz_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_8_1,
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(8)
    );
  inst_diviseur_clk_cnt2hz_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_7_1,
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(7)
    );
  inst_diviseur_clk_cnt2hz_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_6_1,
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(6)
    );
  inst_diviseur_clk_cnt2hz_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_5_1,
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(5)
    );
  inst_diviseur_clk_cnt2hz_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_4_1,
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(4)
    );
  inst_diviseur_clk_cnt2hz_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_3_1,
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(3)
    );
  inst_diviseur_clk_cnt2hz_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_2_1,
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(2)
    );
  inst_diviseur_clk_cnt2hz_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_1_1,
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(1)
    );
  inst_diviseur_clk_cnt2hz_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result_0_1,
      R => inst_diviseur_clk_n0000_inv,
      Q => inst_diviseur_clk_cnt2hz(0)
    );
  inst_diviseur_clk_cnt2khz_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(11),
      R => inst_diviseur_clk_n0012_inv_162,
      Q => inst_diviseur_clk_cnt2khz(11)
    );
  inst_diviseur_clk_cnt2khz_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(10),
      R => inst_diviseur_clk_n0012_inv_162,
      Q => inst_diviseur_clk_cnt2khz(10)
    );
  inst_diviseur_clk_cnt2khz_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(9),
      R => inst_diviseur_clk_n0012_inv_162,
      Q => inst_diviseur_clk_cnt2khz(9)
    );
  inst_diviseur_clk_cnt2khz_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(8),
      R => inst_diviseur_clk_n0012_inv_162,
      Q => inst_diviseur_clk_cnt2khz(8)
    );
  inst_diviseur_clk_cnt2khz_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(7),
      R => inst_diviseur_clk_n0012_inv_162,
      Q => inst_diviseur_clk_cnt2khz(7)
    );
  inst_diviseur_clk_cnt2khz_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(6),
      R => inst_diviseur_clk_n0012_inv_162,
      Q => inst_diviseur_clk_cnt2khz(6)
    );
  inst_diviseur_clk_cnt2khz_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(5),
      R => inst_diviseur_clk_n0012_inv_162,
      Q => inst_diviseur_clk_cnt2khz(5)
    );
  inst_diviseur_clk_cnt2khz_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(4),
      R => inst_diviseur_clk_n0012_inv_162,
      Q => inst_diviseur_clk_cnt2khz(4)
    );
  inst_diviseur_clk_cnt2khz_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(3),
      R => inst_diviseur_clk_n0012_inv_162,
      Q => inst_diviseur_clk_cnt2khz(3)
    );
  inst_diviseur_clk_cnt2khz_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(2),
      R => inst_diviseur_clk_n0012_inv_162,
      Q => inst_diviseur_clk_cnt2khz(2)
    );
  inst_diviseur_clk_cnt2khz_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(1),
      R => inst_diviseur_clk_n0012_inv_162,
      Q => inst_diviseur_clk_cnt2khz(1)
    );
  inst_diviseur_clk_cnt2khz_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_Result(0),
      R => inst_diviseur_clk_n0012_inv_162,
      Q => inst_diviseur_clk_cnt2khz(0)
    );
  inst_diviseur_clk_clk16hz : FD
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_div16hz_temp_167,
      Q => inst_diviseur_clk_clk16hz_16
    );
  inst_diviseur_clk_clk2hz : FD
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_div2hz_temp_165,
      Q => inst_diviseur_clk_clk2hz_15
    );
  inst_diviseur_clk_clk2khz : FD
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_div2khz_temp_166,
      Q => inst_diviseur_clk_clk2khz_17
    );
  ecran_Mcount_vPos_xor_31_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(30),
      LI => ecran_Mcount_vPos_xor_31_rt_728,
      O => ecran_Result(31)
    );
  ecran_Mcount_vPos_xor_30_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(29),
      LI => ecran_Mcount_vPos_cy_30_rt_665,
      O => ecran_Result(30)
    );
  ecran_Mcount_vPos_cy_30_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(29),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_30_rt_665,
      O => ecran_Mcount_vPos_cy(30)
    );
  ecran_Mcount_vPos_xor_29_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(28),
      LI => ecran_Mcount_vPos_cy_29_rt_666,
      O => ecran_Result(29)
    );
  ecran_Mcount_vPos_cy_29_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(28),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_29_rt_666,
      O => ecran_Mcount_vPos_cy(29)
    );
  ecran_Mcount_vPos_xor_28_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(27),
      LI => ecran_Mcount_vPos_cy_28_rt_667,
      O => ecran_Result(28)
    );
  ecran_Mcount_vPos_cy_28_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(27),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_28_rt_667,
      O => ecran_Mcount_vPos_cy(28)
    );
  ecran_Mcount_vPos_xor_27_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(26),
      LI => ecran_Mcount_vPos_cy_27_rt_668,
      O => ecran_Result(27)
    );
  ecran_Mcount_vPos_cy_27_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(26),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_27_rt_668,
      O => ecran_Mcount_vPos_cy(27)
    );
  ecran_Mcount_vPos_xor_26_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(25),
      LI => ecran_Mcount_vPos_cy_26_rt_669,
      O => ecran_Result(26)
    );
  ecran_Mcount_vPos_cy_26_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(25),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_26_rt_669,
      O => ecran_Mcount_vPos_cy(26)
    );
  ecran_Mcount_vPos_xor_25_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(24),
      LI => ecran_Mcount_vPos_cy_25_rt_670,
      O => ecran_Result(25)
    );
  ecran_Mcount_vPos_cy_25_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(24),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_25_rt_670,
      O => ecran_Mcount_vPos_cy(25)
    );
  ecran_Mcount_vPos_xor_24_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(23),
      LI => ecran_Mcount_vPos_cy_24_rt_671,
      O => ecran_Result(24)
    );
  ecran_Mcount_vPos_cy_24_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(23),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_24_rt_671,
      O => ecran_Mcount_vPos_cy(24)
    );
  ecran_Mcount_vPos_xor_23_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(22),
      LI => ecran_Mcount_vPos_cy_23_rt_672,
      O => ecran_Result(23)
    );
  ecran_Mcount_vPos_cy_23_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(22),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_23_rt_672,
      O => ecran_Mcount_vPos_cy(23)
    );
  ecran_Mcount_vPos_xor_22_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(21),
      LI => ecran_Mcount_vPos_cy_22_rt_673,
      O => ecran_Result(22)
    );
  ecran_Mcount_vPos_cy_22_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(21),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_22_rt_673,
      O => ecran_Mcount_vPos_cy(22)
    );
  ecran_Mcount_vPos_xor_21_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(20),
      LI => ecran_Mcount_vPos_cy_21_rt_674,
      O => ecran_Result(21)
    );
  ecran_Mcount_vPos_cy_21_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(20),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_21_rt_674,
      O => ecran_Mcount_vPos_cy(21)
    );
  ecran_Mcount_vPos_xor_20_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(19),
      LI => ecran_Mcount_vPos_cy_20_rt_675,
      O => ecran_Result(20)
    );
  ecran_Mcount_vPos_cy_20_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(19),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_20_rt_675,
      O => ecran_Mcount_vPos_cy(20)
    );
  ecran_Mcount_vPos_xor_19_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(18),
      LI => ecran_Mcount_vPos_cy_19_rt_676,
      O => ecran_Result(19)
    );
  ecran_Mcount_vPos_cy_19_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(18),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_19_rt_676,
      O => ecran_Mcount_vPos_cy(19)
    );
  ecran_Mcount_vPos_xor_18_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(17),
      LI => ecran_Mcount_vPos_cy_18_rt_677,
      O => ecran_Result(18)
    );
  ecran_Mcount_vPos_cy_18_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(17),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_18_rt_677,
      O => ecran_Mcount_vPos_cy(18)
    );
  ecran_Mcount_vPos_xor_17_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(16),
      LI => ecran_Mcount_vPos_cy_17_rt_678,
      O => ecran_Result(17)
    );
  ecran_Mcount_vPos_cy_17_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(16),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_17_rt_678,
      O => ecran_Mcount_vPos_cy(17)
    );
  ecran_Mcount_vPos_xor_16_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(15),
      LI => ecran_Mcount_vPos_cy_16_rt_679,
      O => ecran_Result(16)
    );
  ecran_Mcount_vPos_cy_16_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(15),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_16_rt_679,
      O => ecran_Mcount_vPos_cy(16)
    );
  ecran_Mcount_vPos_xor_15_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(14),
      LI => ecran_Mcount_vPos_cy_15_rt_680,
      O => ecran_Result(15)
    );
  ecran_Mcount_vPos_cy_15_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(14),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_15_rt_680,
      O => ecran_Mcount_vPos_cy(15)
    );
  ecran_Mcount_vPos_xor_14_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(13),
      LI => ecran_Mcount_vPos_cy_14_rt_681,
      O => ecran_Result(14)
    );
  ecran_Mcount_vPos_cy_14_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(13),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_14_rt_681,
      O => ecran_Mcount_vPos_cy(14)
    );
  ecran_Mcount_vPos_xor_13_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(12),
      LI => ecran_Mcount_vPos_cy_13_rt_682,
      O => ecran_Result(13)
    );
  ecran_Mcount_vPos_cy_13_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(12),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_13_rt_682,
      O => ecran_Mcount_vPos_cy(13)
    );
  ecran_Mcount_vPos_xor_12_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(11),
      LI => ecran_Mcount_vPos_cy_12_rt_683,
      O => ecran_Result(12)
    );
  ecran_Mcount_vPos_cy_12_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(11),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_12_rt_683,
      O => ecran_Mcount_vPos_cy(12)
    );
  ecran_Mcount_vPos_xor_11_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(10),
      LI => ecran_Mcount_vPos_cy_11_rt_684,
      O => ecran_Result(11)
    );
  ecran_Mcount_vPos_cy_11_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(10),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_11_rt_684,
      O => ecran_Mcount_vPos_cy(11)
    );
  ecran_Mcount_vPos_xor_10_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(9),
      LI => ecran_Mcount_vPos_cy_10_rt_685,
      O => ecran_Result(10)
    );
  ecran_Mcount_vPos_cy_10_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(9),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_10_rt_685,
      O => ecran_Mcount_vPos_cy(10)
    );
  ecran_Mcount_vPos_xor_9_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(8),
      LI => ecran_Mcount_vPos_cy_9_rt_686,
      O => ecran_Result(9)
    );
  ecran_Mcount_vPos_cy_9_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(8),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_9_rt_686,
      O => ecran_Mcount_vPos_cy(9)
    );
  ecran_Mcount_vPos_xor_8_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(7),
      LI => ecran_Mcount_vPos_cy_8_rt_687,
      O => ecran_Result(8)
    );
  ecran_Mcount_vPos_cy_8_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(7),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_8_rt_687,
      O => ecran_Mcount_vPos_cy(8)
    );
  ecran_Mcount_vPos_xor_7_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(6),
      LI => ecran_Mcount_vPos_cy_7_rt_688,
      O => ecran_Result(7)
    );
  ecran_Mcount_vPos_cy_7_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(6),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_7_rt_688,
      O => ecran_Mcount_vPos_cy(7)
    );
  ecran_Mcount_vPos_xor_6_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(5),
      LI => ecran_Mcount_vPos_cy_6_rt_689,
      O => ecran_Result(6)
    );
  ecran_Mcount_vPos_cy_6_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(5),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_6_rt_689,
      O => ecran_Mcount_vPos_cy(6)
    );
  ecran_Mcount_vPos_xor_5_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(4),
      LI => ecran_Mcount_vPos_cy_5_rt_690,
      O => ecran_Result(5)
    );
  ecran_Mcount_vPos_cy_5_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(4),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_5_rt_690,
      O => ecran_Mcount_vPos_cy(5)
    );
  ecran_Mcount_vPos_xor_4_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(3),
      LI => ecran_Mcount_vPos_cy_4_rt_691,
      O => ecran_Result(4)
    );
  ecran_Mcount_vPos_cy_4_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(3),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_4_rt_691,
      O => ecran_Mcount_vPos_cy(4)
    );
  ecran_Mcount_vPos_xor_3_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(2),
      LI => ecran_Mcount_vPos_cy_3_rt_692,
      O => ecran_Result(3)
    );
  ecran_Mcount_vPos_cy_3_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(2),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_3_rt_692,
      O => ecran_Mcount_vPos_cy(3)
    );
  ecran_Mcount_vPos_xor_2_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(1),
      LI => ecran_Mcount_vPos_cy_2_rt_693,
      O => ecran_Result(2)
    );
  ecran_Mcount_vPos_cy_2_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(1),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_2_rt_693,
      O => ecran_Mcount_vPos_cy(2)
    );
  ecran_Mcount_vPos_xor_1_Q : XORCY
    port map (
      CI => ecran_Mcount_vPos_cy(0),
      LI => ecran_Mcount_vPos_cy_1_rt_694,
      O => ecran_Result(1)
    );
  ecran_Mcount_vPos_cy_1_Q : MUXCY
    port map (
      CI => ecran_Mcount_vPos_cy(0),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_vPos_cy_1_rt_694,
      O => ecran_Mcount_vPos_cy(1)
    );
  ecran_Mcount_vPos_xor_0_Q : XORCY
    port map (
      CI => ecran_i000052_1_C_1,
      LI => ecran_Mcount_vPos_lut(0),
      O => ecran_Result(0)
    );
  ecran_Mcount_vPos_cy_0_Q : MUXCY
    port map (
      CI => ecran_i000052_1_C_1,
      DI => A(1),
      S => ecran_Mcount_vPos_lut(0),
      O => ecran_Mcount_vPos_cy(0)
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_6_Q : MUXCY
    port map (
      CI => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_5_Q_254,
      DI => ecran_vPos(31),
      S => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_6_Q_253,
      O => ecran_w_31_vPos_31_LessThan_37_o
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_6_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ecran_vPos(30),
      I1 => ecran_vPos(31),
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_6_Q_253
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_5_Q : MUXCY
    port map (
      CI => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_4_Q_256,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_5_Q_255,
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_5_Q_254
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(25),
      I1 => ecran_vPos(26),
      I2 => ecran_vPos(27),
      I3 => ecran_vPos(28),
      I4 => ecran_vPos(29),
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_5_Q_255
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_4_Q : MUXCY
    port map (
      CI => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_3_Q_258,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_4_Q_257,
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_4_Q_256
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(20),
      I1 => ecran_vPos(21),
      I2 => ecran_vPos(22),
      I3 => ecran_vPos(23),
      I4 => ecran_vPos(24),
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_4_Q_257
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_3_Q : MUXCY
    port map (
      CI => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_2_Q_260,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_3_Q_259,
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_3_Q_258
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(15),
      I1 => ecran_vPos(16),
      I2 => ecran_vPos(17),
      I3 => ecran_vPos(18),
      I4 => ecran_vPos(19),
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_3_Q_259
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_2_Q : MUXCY
    port map (
      CI => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_1_Q_262,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_2_Q_261,
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_2_Q_260
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(10),
      I1 => ecran_vPos(11),
      I2 => ecran_vPos(12),
      I3 => ecran_vPos(13),
      I4 => ecran_vPos(14),
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_2_Q_261
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_1_Q : MUXCY
    port map (
      CI => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_0_Q_265,
      DI => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lutdi1_264,
      S => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_1_Q_263,
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_1_Q_262
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => ecran_vPos(6),
      I1 => ecran_vPos(7),
      I2 => ecran_vPos(5),
      I3 => ecran_vPos(8),
      I4 => ecran_vPos(9),
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_1_Q_263
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lutdi1 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(5),
      I1 => ecran_vPos(6),
      I2 => ecran_vPos(7),
      I3 => ecran_vPos(8),
      I4 => ecran_vPos(9),
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lutdi1_264
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_0_Q : MUXCY
    port map (
      CI => A(1),
      DI => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lutdi_267,
      S => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_0_Q_266,
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_cy_0_Q_265
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => ecran_vPos(0),
      I1 => ecran_vPos(1),
      I2 => ecran_vPos(3),
      I3 => ecran_vPos(2),
      I4 => ecran_vPos(4),
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lut_0_Q_266
    );
  ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lutdi : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ecran_vPos(3),
      I1 => ecran_vPos(4),
      O => ecran_Mcompar_w_31_vPos_31_LessThan_37_o_lutdi_267
    );
  ecran_Mcount_hPos_xor_31_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(30),
      LI => ecran_Mcount_hPos_xor_31_rt_729,
      O => ecran_Result_31_1
    );
  ecran_Mcount_hPos_xor_30_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(29),
      LI => ecran_Mcount_hPos_cy_30_rt_695,
      O => ecran_Result_30_1
    );
  ecran_Mcount_hPos_cy_30_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(29),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_30_rt_695,
      O => ecran_Mcount_hPos_cy(30)
    );
  ecran_Mcount_hPos_xor_29_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(28),
      LI => ecran_Mcount_hPos_cy_29_rt_696,
      O => ecran_Result_29_1
    );
  ecran_Mcount_hPos_cy_29_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(28),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_29_rt_696,
      O => ecran_Mcount_hPos_cy(29)
    );
  ecran_Mcount_hPos_xor_28_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(27),
      LI => ecran_Mcount_hPos_cy_28_rt_697,
      O => ecran_Result_28_1
    );
  ecran_Mcount_hPos_cy_28_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(27),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_28_rt_697,
      O => ecran_Mcount_hPos_cy(28)
    );
  ecran_Mcount_hPos_xor_27_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(26),
      LI => ecran_Mcount_hPos_cy_27_rt_698,
      O => ecran_Result_27_1
    );
  ecran_Mcount_hPos_cy_27_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(26),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_27_rt_698,
      O => ecran_Mcount_hPos_cy(27)
    );
  ecran_Mcount_hPos_xor_26_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(25),
      LI => ecran_Mcount_hPos_cy_26_rt_699,
      O => ecran_Result_26_1
    );
  ecran_Mcount_hPos_cy_26_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(25),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_26_rt_699,
      O => ecran_Mcount_hPos_cy(26)
    );
  ecran_Mcount_hPos_xor_25_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(24),
      LI => ecran_Mcount_hPos_cy_25_rt_700,
      O => ecran_Result_25_1
    );
  ecran_Mcount_hPos_cy_25_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(24),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_25_rt_700,
      O => ecran_Mcount_hPos_cy(25)
    );
  ecran_Mcount_hPos_xor_24_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(23),
      LI => ecran_Mcount_hPos_cy_24_rt_701,
      O => ecran_Result_24_1
    );
  ecran_Mcount_hPos_cy_24_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(23),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_24_rt_701,
      O => ecran_Mcount_hPos_cy(24)
    );
  ecran_Mcount_hPos_xor_23_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(22),
      LI => ecran_Mcount_hPos_cy_23_rt_702,
      O => ecran_Result_23_1
    );
  ecran_Mcount_hPos_cy_23_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(22),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_23_rt_702,
      O => ecran_Mcount_hPos_cy(23)
    );
  ecran_Mcount_hPos_xor_22_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(21),
      LI => ecran_Mcount_hPos_cy_22_rt_703,
      O => ecran_Result_22_1
    );
  ecran_Mcount_hPos_cy_22_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(21),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_22_rt_703,
      O => ecran_Mcount_hPos_cy(22)
    );
  ecran_Mcount_hPos_xor_21_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(20),
      LI => ecran_Mcount_hPos_cy_21_rt_704,
      O => ecran_Result_21_1
    );
  ecran_Mcount_hPos_cy_21_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(20),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_21_rt_704,
      O => ecran_Mcount_hPos_cy(21)
    );
  ecran_Mcount_hPos_xor_20_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(19),
      LI => ecran_Mcount_hPos_cy_20_rt_705,
      O => ecran_Result_20_1
    );
  ecran_Mcount_hPos_cy_20_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(19),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_20_rt_705,
      O => ecran_Mcount_hPos_cy(20)
    );
  ecran_Mcount_hPos_xor_19_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(18),
      LI => ecran_Mcount_hPos_cy_19_rt_706,
      O => ecran_Result_19_1
    );
  ecran_Mcount_hPos_cy_19_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(18),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_19_rt_706,
      O => ecran_Mcount_hPos_cy(19)
    );
  ecran_Mcount_hPos_xor_18_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(17),
      LI => ecran_Mcount_hPos_cy_18_rt_707,
      O => ecran_Result_18_1
    );
  ecran_Mcount_hPos_cy_18_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(17),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_18_rt_707,
      O => ecran_Mcount_hPos_cy(18)
    );
  ecran_Mcount_hPos_xor_17_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(16),
      LI => ecran_Mcount_hPos_cy_17_rt_708,
      O => ecran_Result_17_1
    );
  ecran_Mcount_hPos_cy_17_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(16),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_17_rt_708,
      O => ecran_Mcount_hPos_cy(17)
    );
  ecran_Mcount_hPos_xor_16_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(15),
      LI => ecran_Mcount_hPos_cy_16_rt_709,
      O => ecran_Result_16_1
    );
  ecran_Mcount_hPos_cy_16_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(15),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_16_rt_709,
      O => ecran_Mcount_hPos_cy(16)
    );
  ecran_Mcount_hPos_xor_15_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(14),
      LI => ecran_Mcount_hPos_cy_15_rt_710,
      O => ecran_Result_15_1
    );
  ecran_Mcount_hPos_cy_15_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(14),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_15_rt_710,
      O => ecran_Mcount_hPos_cy(15)
    );
  ecran_Mcount_hPos_xor_14_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(13),
      LI => ecran_Mcount_hPos_cy_14_rt_711,
      O => ecran_Result_14_1
    );
  ecran_Mcount_hPos_cy_14_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(13),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_14_rt_711,
      O => ecran_Mcount_hPos_cy(14)
    );
  ecran_Mcount_hPos_xor_13_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(12),
      LI => ecran_Mcount_hPos_cy_13_rt_712,
      O => ecran_Result_13_1
    );
  ecran_Mcount_hPos_cy_13_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(12),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_13_rt_712,
      O => ecran_Mcount_hPos_cy(13)
    );
  ecran_Mcount_hPos_xor_12_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(11),
      LI => ecran_Mcount_hPos_cy_12_rt_713,
      O => ecran_Result_12_1
    );
  ecran_Mcount_hPos_cy_12_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(11),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_12_rt_713,
      O => ecran_Mcount_hPos_cy(12)
    );
  ecran_Mcount_hPos_xor_11_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(10),
      LI => ecran_Mcount_hPos_cy_11_rt_714,
      O => ecran_Result_11_1
    );
  ecran_Mcount_hPos_cy_11_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(10),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_11_rt_714,
      O => ecran_Mcount_hPos_cy(11)
    );
  ecran_Mcount_hPos_xor_10_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(9),
      LI => ecran_Mcount_hPos_cy_10_rt_715,
      O => ecran_Result_10_1
    );
  ecran_Mcount_hPos_cy_10_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(9),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_10_rt_715,
      O => ecran_Mcount_hPos_cy(10)
    );
  ecran_Mcount_hPos_xor_9_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(8),
      LI => ecran_Mcount_hPos_cy_9_rt_716,
      O => ecran_Result_9_1
    );
  ecran_Mcount_hPos_cy_9_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(8),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_9_rt_716,
      O => ecran_Mcount_hPos_cy(9)
    );
  ecran_Mcount_hPos_xor_8_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(7),
      LI => ecran_Mcount_hPos_cy_8_rt_717,
      O => ecran_Result_8_1
    );
  ecran_Mcount_hPos_cy_8_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(7),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_8_rt_717,
      O => ecran_Mcount_hPos_cy(8)
    );
  ecran_Mcount_hPos_xor_7_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(6),
      LI => ecran_Mcount_hPos_cy_7_rt_718,
      O => ecran_Result_7_1
    );
  ecran_Mcount_hPos_cy_7_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(6),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_7_rt_718,
      O => ecran_Mcount_hPos_cy(7)
    );
  ecran_Mcount_hPos_xor_6_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(5),
      LI => ecran_Mcount_hPos_cy_6_rt_719,
      O => ecran_Result_6_1
    );
  ecran_Mcount_hPos_cy_6_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(5),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_6_rt_719,
      O => ecran_Mcount_hPos_cy(6)
    );
  ecran_Mcount_hPos_xor_5_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(4),
      LI => ecran_Mcount_hPos_cy_5_rt_720,
      O => ecran_Result_5_1
    );
  ecran_Mcount_hPos_cy_5_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(4),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_5_rt_720,
      O => ecran_Mcount_hPos_cy(5)
    );
  ecran_Mcount_hPos_xor_4_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(3),
      LI => ecran_Mcount_hPos_cy_4_rt_721,
      O => ecran_Result_4_1
    );
  ecran_Mcount_hPos_cy_4_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(3),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_4_rt_721,
      O => ecran_Mcount_hPos_cy(4)
    );
  ecran_Mcount_hPos_xor_3_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(2),
      LI => ecran_Mcount_hPos_cy_3_rt_722,
      O => ecran_Result_3_1
    );
  ecran_Mcount_hPos_cy_3_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(2),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_3_rt_722,
      O => ecran_Mcount_hPos_cy(3)
    );
  ecran_Mcount_hPos_xor_2_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(1),
      LI => ecran_Mcount_hPos_cy_2_rt_723,
      O => ecran_Result_2_1
    );
  ecran_Mcount_hPos_cy_2_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(1),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_2_rt_723,
      O => ecran_Mcount_hPos_cy(2)
    );
  ecran_Mcount_hPos_xor_1_Q : XORCY
    port map (
      CI => ecran_Mcount_hPos_cy(0),
      LI => ecran_Mcount_hPos_cy_1_rt_724,
      O => ecran_Result_1_1
    );
  ecran_Mcount_hPos_cy_1_Q : MUXCY
    port map (
      CI => ecran_Mcount_hPos_cy(0),
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcount_hPos_cy_1_rt_724,
      O => ecran_Mcount_hPos_cy(1)
    );
  ecran_Mcount_hPos_xor_0_Q : XORCY
    port map (
      CI => ecran_i000052_1_C_1,
      LI => ecran_Mcount_hPos_lut(0),
      O => ecran_Result_0_1
    );
  ecran_Mcount_hPos_cy_0_Q : MUXCY
    port map (
      CI => ecran_i000052_1_C_1,
      DI => A(1),
      S => ecran_Mcount_hPos_lut(0),
      O => ecran_Mcount_hPos_cy(0)
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_5_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_4_Q_301,
      DI => ecran_vPos(31),
      S => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_5_Q_300,
      O => ecran_GND_17_o_vPos_31_LessThan_16_o
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_5_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ecran_vPos(30),
      I1 => ecran_vPos(31),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_5_Q_300
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_4_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_3_Q_303,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_4_Q_302,
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_4_Q_301
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(25),
      I1 => ecran_vPos(26),
      I2 => ecran_vPos(27),
      I3 => ecran_vPos(28),
      I4 => ecran_vPos(29),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_4_Q_302
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_3_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_2_Q_305,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_3_Q_304,
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_3_Q_303
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(20),
      I1 => ecran_vPos(21),
      I2 => ecran_vPos(22),
      I3 => ecran_vPos(23),
      I4 => ecran_vPos(24),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_3_Q_304
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_2_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_1_Q_307,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_2_Q_306,
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_2_Q_305
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(15),
      I1 => ecran_vPos(16),
      I2 => ecran_vPos(17),
      I3 => ecran_vPos(18),
      I4 => ecran_vPos(19),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_2_Q_306
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_1_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_0_Q_309,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_1_Q_308,
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_1_Q_307
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(10),
      I1 => ecran_vPos(11),
      I2 => ecran_vPos(12),
      I3 => ecran_vPos(13),
      I4 => ecran_vPos(14),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_1_Q_308
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_0_Q : MUXCY
    port map (
      CI => A(1),
      DI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lutdi_311,
      S => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_0_Q_310,
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_cy_0_Q_309
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => ecran_vPos(5),
      I1 => ecran_vPos(8),
      I2 => ecran_vPos(7),
      I3 => ecran_vPos(9),
      I4 => ecran_vPos(6),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lut_0_Q_310
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lutdi : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => ecran_vPos(9),
      I1 => ecran_vPos(7),
      I2 => ecran_vPos(6),
      I3 => ecran_vPos(8),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_16_o_lutdi_311
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_5_Q : MUXCY
    port map (
      CI => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_4_Q_314,
      DI => ecran_vPos(31),
      S => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_5_Q_313,
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_5_Q_312
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(27),
      I1 => ecran_vPos(28),
      I2 => ecran_vPos(29),
      I3 => ecran_vPos(30),
      I4 => ecran_vPos(31),
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_5_Q_313
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_4_Q : MUXCY
    port map (
      CI => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_3_Q_316,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_4_Q_315,
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_4_Q_314
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(22),
      I1 => ecran_vPos(23),
      I2 => ecran_vPos(24),
      I3 => ecran_vPos(25),
      I4 => ecran_vPos(26),
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_4_Q_315
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_3_Q : MUXCY
    port map (
      CI => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_2_Q_318,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_3_Q_317,
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_3_Q_316
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(17),
      I1 => ecran_vPos(18),
      I2 => ecran_vPos(19),
      I3 => ecran_vPos(20),
      I4 => ecran_vPos(21),
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_3_Q_317
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_2_Q : MUXCY
    port map (
      CI => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_1_Q_320,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_2_Q_319,
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_2_Q_318
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(12),
      I1 => ecran_vPos(13),
      I2 => ecran_vPos(14),
      I3 => ecran_vPos(15),
      I4 => ecran_vPos(16),
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_2_Q_319
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_1_Q : MUXCY
    port map (
      CI => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_0_Q_323,
      DI => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lutdi1_322,
      S => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_1_Q_321,
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_1_Q_320
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000020"
    )
    port map (
      I0 => ecran_vPos(8),
      I1 => ecran_vPos(9),
      I2 => ecran_vPos(7),
      I3 => ecran_vPos(10),
      I4 => ecran_vPos(11),
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_1_Q_321
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lutdi1 : LUT5
    generic map(
      INIT => X"00010101"
    )
    port map (
      I0 => ecran_vPos(9),
      I1 => ecran_vPos(10),
      I2 => ecran_vPos(11),
      I3 => ecran_vPos(7),
      I4 => ecran_vPos(8),
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lutdi1_322
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_0_Q : MUXCY
    port map (
      CI => A(1),
      DI => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lutdi_325,
      S => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_0_Q_324,
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_0_Q_323
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => ecran_vPos(2),
      I1 => ecran_vPos(5),
      I2 => ecran_vPos(3),
      I3 => ecran_vPos(4),
      I4 => ecran_vPos(6),
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lut_0_Q_324
    );
  ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lutdi : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => ecran_vPos(6),
      I1 => ecran_vPos(4),
      I2 => ecran_vPos(3),
      I3 => ecran_vPos(5),
      O => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_lutdi_325
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_6_Q : MUXCY
    port map (
      CI => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_5_Q_327,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_6_Q,
      O => ecran_vPos_31_z_31_LessThan_36_o
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_5_Q : MUXCY
    port map (
      CI => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_4_Q_330,
      DI => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi5_329,
      S => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_5_Q_328,
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_5_Q_327
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(26),
      I1 => ecran_vPos(27),
      I2 => ecran_vPos(28),
      I3 => ecran_vPos(29),
      I4 => ecran_vPos(30),
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_5_Q_328
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi5 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => ecran_vPos(30),
      I1 => ecran_vPos(29),
      I2 => ecran_vPos(28),
      I3 => ecran_vPos(27),
      I4 => ecran_vPos(26),
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi5_329
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_4_Q : MUXCY
    port map (
      CI => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_3_Q_333,
      DI => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi4_332,
      S => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_4_Q_331,
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_4_Q_330
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(21),
      I1 => ecran_vPos(22),
      I2 => ecran_vPos(23),
      I3 => ecran_vPos(24),
      I4 => ecran_vPos(25),
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_4_Q_331
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi4 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => ecran_vPos(25),
      I1 => ecran_vPos(24),
      I2 => ecran_vPos(23),
      I3 => ecran_vPos(22),
      I4 => ecran_vPos(21),
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi4_332
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_3_Q : MUXCY
    port map (
      CI => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_2_Q_336,
      DI => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi3_335,
      S => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_3_Q_334,
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_3_Q_333
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(16),
      I1 => ecran_vPos(17),
      I2 => ecran_vPos(18),
      I3 => ecran_vPos(19),
      I4 => ecran_vPos(20),
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_3_Q_334
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi3 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => ecran_vPos(20),
      I1 => ecran_vPos(19),
      I2 => ecran_vPos(18),
      I3 => ecran_vPos(17),
      I4 => ecran_vPos(16),
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi3_335
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_2_Q : MUXCY
    port map (
      CI => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_1_Q_339,
      DI => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi2_338,
      S => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_2_Q_337,
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_2_Q_336
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(11),
      I1 => ecran_vPos(12),
      I2 => ecran_vPos(13),
      I3 => ecran_vPos(14),
      I4 => ecran_vPos(15),
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_2_Q_337
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi2 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => ecran_vPos(15),
      I1 => ecran_vPos(14),
      I2 => ecran_vPos(13),
      I3 => ecran_vPos(12),
      I4 => ecran_vPos(11),
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi2_338
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_1_Q : MUXCY
    port map (
      CI => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_0_Q_342,
      DI => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi1_341,
      S => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_1_Q_340,
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_1_Q_339
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(6),
      I1 => ecran_vPos(7),
      I2 => ecran_vPos(8),
      I3 => ecran_vPos(9),
      I4 => ecran_vPos(10),
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_1_Q_340
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi1 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => ecran_vPos(10),
      I1 => ecran_vPos(9),
      I2 => ecran_vPos(8),
      I3 => ecran_vPos(7),
      I4 => ecran_vPos(6),
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi1_341
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_0_Q : MUXCY
    port map (
      CI => A(1),
      DI => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi_344,
      S => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_0_Q_343,
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_cy_0_Q_342
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00000020"
    )
    port map (
      I0 => ecran_vPos(1),
      I1 => ecran_vPos(2),
      I2 => ecran_vPos(3),
      I3 => ecran_vPos(4),
      I4 => ecran_vPos(5),
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_0_Q_343
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => ecran_vPos(5),
      I1 => ecran_vPos(3),
      I2 => ecran_vPos(2),
      I3 => ecran_vPos(4),
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lutdi_344
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_6_Q : MUXCY
    port map (
      CI => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_5_Q_346,
      DI => ecran_hPos(31),
      S => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_6_Q_345,
      O => ecran_y_31_hPos_31_LessThan_35_o
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_6_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ecran_hPos(30),
      I1 => ecran_hPos(31),
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_6_Q_345
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_5_Q : MUXCY
    port map (
      CI => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_4_Q_348,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_5_Q_347,
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_5_Q_346
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(25),
      I1 => ecran_hPos(26),
      I2 => ecran_hPos(27),
      I3 => ecran_hPos(28),
      I4 => ecran_hPos(29),
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_5_Q_347
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_4_Q : MUXCY
    port map (
      CI => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_3_Q_350,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_4_Q_349,
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_4_Q_348
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(20),
      I1 => ecran_hPos(21),
      I2 => ecran_hPos(22),
      I3 => ecran_hPos(23),
      I4 => ecran_hPos(24),
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_4_Q_349
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_3_Q : MUXCY
    port map (
      CI => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_2_Q_352,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_3_Q_351,
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_3_Q_350
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(15),
      I1 => ecran_hPos(16),
      I2 => ecran_hPos(17),
      I3 => ecran_hPos(18),
      I4 => ecran_hPos(19),
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_3_Q_351
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_2_Q : MUXCY
    port map (
      CI => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_1_Q_354,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_2_Q_353,
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_2_Q_352
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(10),
      I1 => ecran_hPos(11),
      I2 => ecran_hPos(12),
      I3 => ecran_hPos(13),
      I4 => ecran_hPos(14),
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_2_Q_353
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_1_Q : MUXCY
    port map (
      CI => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_0_Q_357,
      DI => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lutdi1_356,
      S => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_1_Q_355,
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_1_Q_354
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => ecran_hPos(6),
      I1 => ecran_hPos(7),
      I2 => ecran_hPos(5),
      I3 => ecran_hPos(8),
      I4 => ecran_hPos(9),
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_1_Q_355
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lutdi1 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(5),
      I1 => ecran_hPos(6),
      I2 => ecran_hPos(7),
      I3 => ecran_hPos(8),
      I4 => ecran_hPos(9),
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lutdi1_356
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_0_Q : MUXCY
    port map (
      CI => A(1),
      DI => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lutdi_359,
      S => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_0_Q_358,
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_cy_0_Q_357
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => ecran_hPos(0),
      I1 => ecran_hPos(1),
      I2 => ecran_hPos(3),
      I3 => ecran_hPos(2),
      I4 => ecran_hPos(4),
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lut_0_Q_358
    );
  ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lutdi : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ecran_hPos(3),
      I1 => ecran_hPos(4),
      O => ecran_Mcompar_y_31_hPos_31_LessThan_35_o_lutdi_359
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_6_Q : MUXCY
    port map (
      CI => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_5_Q_361,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_6_Q,
      O => ecran_hPos_31_x_31_LessThan_34_o
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_5_Q : MUXCY
    port map (
      CI => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_4_Q_364,
      DI => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi5_363,
      S => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_5_Q_362,
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_5_Q_361
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(26),
      I1 => ecran_hPos(27),
      I2 => ecran_hPos(28),
      I3 => ecran_hPos(29),
      I4 => ecran_hPos(30),
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_5_Q_362
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi5 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => ecran_hPos(30),
      I1 => ecran_hPos(29),
      I2 => ecran_hPos(28),
      I3 => ecran_hPos(27),
      I4 => ecran_hPos(26),
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi5_363
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_4_Q : MUXCY
    port map (
      CI => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_3_Q_367,
      DI => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi4_366,
      S => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_4_Q_365,
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_4_Q_364
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(21),
      I1 => ecran_hPos(22),
      I2 => ecran_hPos(23),
      I3 => ecran_hPos(24),
      I4 => ecran_hPos(25),
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_4_Q_365
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi4 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => ecran_hPos(25),
      I1 => ecran_hPos(24),
      I2 => ecran_hPos(23),
      I3 => ecran_hPos(22),
      I4 => ecran_hPos(21),
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi4_366
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_3_Q : MUXCY
    port map (
      CI => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_2_Q_370,
      DI => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi3_369,
      S => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_3_Q_368,
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_3_Q_367
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(16),
      I1 => ecran_hPos(17),
      I2 => ecran_hPos(18),
      I3 => ecran_hPos(19),
      I4 => ecran_hPos(20),
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_3_Q_368
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi3 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => ecran_hPos(20),
      I1 => ecran_hPos(19),
      I2 => ecran_hPos(18),
      I3 => ecran_hPos(17),
      I4 => ecran_hPos(16),
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi3_369
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_2_Q : MUXCY
    port map (
      CI => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_1_Q_373,
      DI => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi2_372,
      S => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_2_Q_371,
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_2_Q_370
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(11),
      I1 => ecran_hPos(12),
      I2 => ecran_hPos(13),
      I3 => ecran_hPos(14),
      I4 => ecran_hPos(15),
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_2_Q_371
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi2 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => ecran_hPos(15),
      I1 => ecran_hPos(14),
      I2 => ecran_hPos(13),
      I3 => ecran_hPos(12),
      I4 => ecran_hPos(11),
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi2_372
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_1_Q : MUXCY
    port map (
      CI => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_0_Q_376,
      DI => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi1_375,
      S => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_1_Q_374,
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_1_Q_373
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(6),
      I1 => ecran_hPos(7),
      I2 => ecran_hPos(8),
      I3 => ecran_hPos(9),
      I4 => ecran_hPos(10),
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_1_Q_374
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi1 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => ecran_hPos(10),
      I1 => ecran_hPos(9),
      I2 => ecran_hPos(8),
      I3 => ecran_hPos(7),
      I4 => ecran_hPos(6),
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi1_375
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_0_Q : MUXCY
    port map (
      CI => A(1),
      DI => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi_378,
      S => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_0_Q_377,
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_cy_0_Q_376
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00000020"
    )
    port map (
      I0 => ecran_hPos(1),
      I1 => ecran_hPos(2),
      I2 => ecran_hPos(3),
      I3 => ecran_hPos(4),
      I4 => ecran_hPos(5),
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_0_Q_377
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => ecran_hPos(5),
      I1 => ecran_hPos(3),
      I2 => ecran_hPos(2),
      I3 => ecran_hPos(4),
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lutdi_378
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_6_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_5_Q_380,
      DI => ecran_vPos(31),
      S => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_6_Q,
      O => ecran_GND_17_o_vPos_31_LessThan_13_o
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_5_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_4_Q_382,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_5_Q_381,
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_5_Q_380
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(26),
      I1 => ecran_vPos(27),
      I2 => ecran_vPos(28),
      I3 => ecran_vPos(29),
      I4 => ecran_vPos(30),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_5_Q_381
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_4_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_3_Q_384,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_4_Q_383,
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_4_Q_382
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(21),
      I1 => ecran_vPos(22),
      I2 => ecran_vPos(23),
      I3 => ecran_vPos(24),
      I4 => ecran_vPos(25),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_4_Q_383
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_3_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_2_Q_386,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_3_Q_385,
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_3_Q_384
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(16),
      I1 => ecran_vPos(17),
      I2 => ecran_vPos(18),
      I3 => ecran_vPos(19),
      I4 => ecran_vPos(20),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_3_Q_385
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_2_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_1_Q_388,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_2_Q_387,
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_2_Q_386
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_vPos(11),
      I1 => ecran_vPos(12),
      I2 => ecran_vPos(13),
      I3 => ecran_vPos(14),
      I4 => ecran_vPos(15),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_2_Q_387
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_1_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_0_Q_391,
      DI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lutdi1_390,
      S => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_1_Q_389,
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_1_Q_388
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => ecran_vPos(9),
      I1 => ecran_vPos(6),
      I2 => ecran_vPos(8),
      I3 => ecran_vPos(10),
      I4 => ecran_vPos(7),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_1_Q_389
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lutdi1 : LUT5
    generic map(
      INIT => X"01111111"
    )
    port map (
      I0 => ecran_vPos(9),
      I1 => ecran_vPos(10),
      I2 => ecran_vPos(6),
      I3 => ecran_vPos(8),
      I4 => ecran_vPos(7),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lutdi1_390
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_0_Q : MUXCY
    port map (
      CI => A(1),
      DI => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lutdi_393,
      S => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_0_Q_392,
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_cy_0_Q_391
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00000020"
    )
    port map (
      I0 => ecran_vPos(3),
      I1 => ecran_vPos(1),
      I2 => ecran_vPos(5),
      I3 => ecran_vPos(2),
      I4 => ecran_vPos(4),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_0_Q_392
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lutdi : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => ecran_vPos(4),
      I1 => ecran_vPos(3),
      I2 => ecran_vPos(5),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lutdi_393
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_5_Q : MUXCY
    port map (
      CI => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_4_Q_396,
      DI => ecran_hPos(31),
      S => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_5_Q_395,
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_5_Q_394
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_5_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => ecran_hPos(29),
      I1 => ecran_hPos(30),
      I2 => ecran_hPos(31),
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_5_Q_395
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_4_Q : MUXCY
    port map (
      CI => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_3_Q_398,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_4_Q_397,
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_4_Q_396
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(24),
      I1 => ecran_hPos(25),
      I2 => ecran_hPos(26),
      I3 => ecran_hPos(27),
      I4 => ecran_hPos(28),
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_4_Q_397
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_3_Q : MUXCY
    port map (
      CI => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_2_Q_400,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_3_Q_399,
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_3_Q_398
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(19),
      I1 => ecran_hPos(20),
      I2 => ecran_hPos(21),
      I3 => ecran_hPos(22),
      I4 => ecran_hPos(23),
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_3_Q_399
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_2_Q : MUXCY
    port map (
      CI => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_1_Q_402,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_2_Q_401,
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_2_Q_400
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(14),
      I1 => ecran_hPos(15),
      I2 => ecran_hPos(16),
      I3 => ecran_hPos(17),
      I4 => ecran_hPos(18),
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_2_Q_401
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_1_Q : MUXCY
    port map (
      CI => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_0_Q_405,
      DI => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lutdi1_404,
      S => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_1_Q_403,
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_1_Q_402
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => ecran_hPos(10),
      I1 => ecran_hPos(11),
      I2 => ecran_hPos(9),
      I3 => ecran_hPos(12),
      I4 => ecran_hPos(13),
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_1_Q_403
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lutdi1 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(9),
      I1 => ecran_hPos(10),
      I2 => ecran_hPos(11),
      I3 => ecran_hPos(12),
      I4 => ecran_hPos(13),
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lutdi1_404
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_0_Q : MUXCY
    port map (
      CI => A(1),
      DI => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lutdi_407,
      S => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_0_Q_406,
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_0_Q_405
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => ecran_hPos(4),
      I1 => ecran_hPos(7),
      I2 => ecran_hPos(6),
      I3 => ecran_hPos(8),
      I4 => ecran_hPos(5),
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lut_0_Q_406
    );
  ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lutdi : LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => ecran_hPos(8),
      I1 => ecran_hPos(6),
      I2 => ecran_hPos(5),
      I3 => ecran_hPos(7),
      O => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_lutdi_407
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_5_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_4_Q_409,
      DI => ecran_hPos(31),
      S => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_5_Q_408,
      O => ecran_GND_17_o_hPos_31_LessThan_11_o
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_5_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => ecran_hPos(29),
      I1 => ecran_hPos(30),
      I2 => ecran_hPos(31),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_5_Q_408
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_4_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_3_Q_411,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_4_Q_410,
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_4_Q_409
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(24),
      I1 => ecran_hPos(25),
      I2 => ecran_hPos(26),
      I3 => ecran_hPos(27),
      I4 => ecran_hPos(28),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_4_Q_410
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_3_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_2_Q_413,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_3_Q_412,
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_3_Q_411
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(19),
      I1 => ecran_hPos(20),
      I2 => ecran_hPos(21),
      I3 => ecran_hPos(22),
      I4 => ecran_hPos(23),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_3_Q_412
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_2_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_1_Q_415,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_2_Q_414,
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_2_Q_413
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(14),
      I1 => ecran_hPos(15),
      I2 => ecran_hPos(16),
      I3 => ecran_hPos(17),
      I4 => ecran_hPos(18),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_2_Q_414
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_1_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_0_Q_418,
      DI => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lutdi1_417,
      S => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_1_Q_416,
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_1_Q_415
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => ecran_hPos(10),
      I1 => ecran_hPos(11),
      I2 => ecran_hPos(9),
      I3 => ecran_hPos(12),
      I4 => ecran_hPos(13),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_1_Q_416
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lutdi1 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(9),
      I1 => ecran_hPos(10),
      I2 => ecran_hPos(11),
      I3 => ecran_hPos(12),
      I4 => ecran_hPos(13),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lutdi1_417
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_0_Q : MUXCY
    port map (
      CI => A(1),
      DI => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lutdi_420,
      S => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_0_Q_419,
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_cy_0_Q_418
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => ecran_hPos(4),
      I1 => ecran_hPos(5),
      I2 => ecran_hPos(7),
      I3 => ecran_hPos(6),
      I4 => ecran_hPos(8),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lut_0_Q_419
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lutdi : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ecran_hPos(7),
      I1 => ecran_hPos(8),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_11_o_lutdi_420
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_4_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_3_Q_422,
      DI => ecran_hPos(31),
      S => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_4_Q_421,
      O => ecran_GND_17_o_hPos_31_LessThan_15_o
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(27),
      I1 => ecran_hPos(28),
      I2 => ecran_hPos(29),
      I3 => ecran_hPos(30),
      I4 => ecran_hPos(31),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_4_Q_421
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_3_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_2_Q_424,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_3_Q_423,
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_3_Q_422
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(22),
      I1 => ecran_hPos(23),
      I2 => ecran_hPos(24),
      I3 => ecran_hPos(25),
      I4 => ecran_hPos(26),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_3_Q_423
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_2_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_1_Q_426,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_2_Q_425,
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_2_Q_424
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(17),
      I1 => ecran_hPos(18),
      I2 => ecran_hPos(19),
      I3 => ecran_hPos(20),
      I4 => ecran_hPos(21),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_2_Q_425
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_1_Q : MUXCY
    port map (
      CI => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_0_Q_428,
      DI => ecran_i000052_1_C_1,
      S => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_1_Q_427,
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_1_Q_426
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => ecran_hPos(12),
      I1 => ecran_hPos(13),
      I2 => ecran_hPos(14),
      I3 => ecran_hPos(15),
      I4 => ecran_hPos(16),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_1_Q_427
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_0_Q : MUXCY
    port map (
      CI => A(1),
      DI => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lutdi_430,
      S => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_0_Q_429,
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_cy_0_Q_428
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => ecran_hPos(7),
      I1 => ecran_hPos(8),
      I2 => ecran_hPos(9),
      I3 => ecran_hPos(10),
      I4 => ecran_hPos(11),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lut_0_Q_429
    );
  ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lutdi : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => ecran_hPos(9),
      I1 => ecran_hPos(10),
      I2 => ecran_hPos(11),
      O => ecran_Mcompar_GND_17_o_hPos_31_LessThan_15_o_lutdi_430
    );
  ecran_videoOn : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_GND_17_o_GND_17_o_AND_16_o,
      Q => ecran_videoOn_574
    );
  ecran_HSYNC : FD
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_GND_17_o_hPos_31_OR_39_o,
      Q => ecran_HSYNC_20
    );
  ecran_VSYNC : FD
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_GND_17_o_vPos_31_OR_40_o,
      Q => ecran_VSYNC_21
    );
  ecran_clk25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => ecran_clk25_INV_33_o,
      Q => ecran_clk25_810
    );
  Inst_msa_hdl_etatpres_FSM_FFd1_In11 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => inst2_debounce_Q3_34,
      I1 => inst2_debounce_Q2_35,
      I2 => inst2_debounce_Q1_36,
      O => Inst_msa_hdl_etatpres_FSM_FFd1_In1
    );
  encodeur_V1 : LUT5
    generic map(
      INIT => X"AAEAFFFF"
    )
    port map (
      I0 => encodeur_D_3_D_2_OR_5_o,
      I1 => inst1_debounce_Q2_38,
      I2 => inst1_debounce_Q1_39,
      I3 => inst1_debounce_Q3_37,
      I4 => Inst_msa_hdl_etatpres_FSM_FFd1_In1,
      O => gs
    );
  Inst_msa_hdl_etatpres_FSM_FFd4_In11 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Inst_msa_hdl_etatpres_FSM_FFd1_51,
      I1 => Inst_msa_hdl_etatpres_FSM_FFd4_48,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd5_47,
      I3 => Inst_msa_hdl_etatpres_FSM_FFd3_49,
      O => Inst_msa_hdl_etatpres_FSM_FFd4_In1_54
    );
  encodeur_D_3_D_2_OR_5_o11 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => inst4_debounce_Q2_29,
      I1 => inst4_debounce_Q1_30,
      I2 => inst4_debounce_Q3_28,
      O => encodeur_D_3_D_2_OR_5_o1_55
    );
  Inst_msa_hdl_etatpres_FSM_FFd3_In11 : LUT5
    generic map(
      INIT => X"40406240"
    )
    port map (
      I0 => encodeur_D_3_D_2_OR_5_o,
      I1 => Inst_msa_hdl_etatpres_FSM_FFd2_50,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd1_In1,
      I3 => encodeur_D_3_D_2_OR_5_o1_55,
      I4 => Inst_msa_hdl_etatpres_FSM_FFd1_51,
      O => Inst_msa_hdl_etatpres_FSM_FFd3_In1_52
    );
  Inst_msa_hdl_etatpres_FSM_FFd5_In111 : LUT6
    generic map(
      INIT => X"4040EA4440404044"
    )
    port map (
      I0 => encodeur_D_3_D_2_OR_5_o,
      I1 => Inst_msa_hdl_etatpres_FSM_FFd1_In1,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd1_51,
      I3 => Inst_msa_hdl_etatpres_FSM_FFd2_50,
      I4 => Inst_msa_hdl_etatpres_FSM_FFd3_49,
      I5 => encodeur_D_3_D_2_OR_5_o1_55,
      O => Inst_msa_hdl_etatpres_FSM_FFd5_In11
    );
  ecran_GND_17_o_vPos_31_OR_40_o1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => ecran_Mcompar_vPos_31_GND_17_o_LessThan_14_o_cy_5_Q_312,
      I1 => ecran_GND_17_o_vPos_31_LessThan_13_o,
      O => ecran_GND_17_o_vPos_31_OR_40_o
    );
  ecran_GND_17_o_GND_17_o_AND_16_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ecran_GND_17_o_hPos_31_LessThan_15_o,
      I1 => ecran_GND_17_o_vPos_31_LessThan_16_o,
      O => ecran_GND_17_o_GND_17_o_AND_16_o
    );
  ecran_GND_17_o_hPos_31_OR_39_o1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => ecran_Mcompar_hPos_31_GND_17_o_LessThan_12_o_cy_5_Q_394,
      I1 => ecran_GND_17_o_hPos_31_LessThan_11_o,
      O => ecran_GND_17_o_hPos_31_OR_39_o
    );
  Inst_msa_hdl_etatpres_FSM_FFd3_In2 : LUT6
    generic map(
      INIT => X"FFFFA88ACCFFFFFF"
    )
    port map (
      I0 => Inst_msa_hdl_etatpres_FSM_FFd3_In2_577,
      I1 => Inst_msa_hdl_etatpres_FSM_FFd1_51,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd2_50,
      I3 => Inst_msa_hdl_etatpres_FSM_FFd4_48,
      I4 => Inst_msa_hdl_etatpres_FSM_FFd5_47,
      I5 => gs,
      O => Inst_msa_hdl_etatpres_FSM_FFd3_In3_578
    );
  Inst_msa_hdl_etatpres_FSM_FFd3_In4 : LUT6
    generic map(
      INIT => X"A8A8A8A8FDA8A8A8"
    )
    port map (
      I0 => Inst_msa_hdl_etatpres_FSM_FFd3_49,
      I1 => Inst_msa_hdl_etatpres_FSM_FFd3_In3_578,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd3_In4_579,
      I3 => Inst_msa_hdl_etatpres_FSM_FFd4_48,
      I4 => Inst_msa_hdl_etatpres_FSM_FFd5_47,
      I5 => gs,
      O => Inst_msa_hdl_etatpres_FSM_FFd3_In
    );
  Inst_msa_hdl_etatpres_FSM_FFd2_In2 : LUT6
    generic map(
      INIT => X"1111111151111111"
    )
    port map (
      I0 => Inst_msa_hdl_etatpres_FSM_FFd5_47,
      I1 => gs,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd1_In1,
      I3 => Inst_msa_hdl_etatpres_FSM_FFd3_49,
      I4 => Inst_msa_hdl_etatpres_FSM_FFd4_48,
      I5 => encodeur_D_3_D_2_OR_5_o,
      O => Inst_msa_hdl_etatpres_FSM_FFd2_In2_580
    );
  Inst_msa_hdl_etatpres_FSM_FFd4_In1 : LUT6
    generic map(
      INIT => X"FFEADDDDFFEA5555"
    )
    port map (
      I0 => Inst_msa_hdl_etatpres_FSM_FFd5_47,
      I1 => Inst_msa_hdl_etatpres_FSM_FFd3_49,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd3_In1_52,
      I3 => Inst_msa_hdl_etatpres_FSM_FFd5_In11,
      I4 => gs,
      I5 => Inst_msa_hdl_etatpres_FSM_FFd1_51,
      O => Inst_msa_hdl_etatpres_FSM_FFd4_In2_581
    );
  Inst_msa_hdl_etatpres_FSM_FFd4_In2 : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => Inst_msa_hdl_etatpres_FSM_FFd4_48,
      I1 => Inst_msa_hdl_etatpres_FSM_FFd5_47,
      I2 => gs,
      I3 => Inst_msa_hdl_etatpres_FSM_FFd4_In2_581,
      O => Inst_msa_hdl_etatpres_FSM_FFd4_In
    );
  Inst_msa_hdl_etatpres_FSM_FFd5_In2 : LUT6
    generic map(
      INIT => X"FFFEEFEEEFEEEFEE"
    )
    port map (
      I0 => Inst_msa_hdl_etatpres_FSM_FFd5_In11,
      I1 => Inst_msa_hdl_etatpres_FSM_FFd5_47,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd4_48,
      I3 => Inst_msa_hdl_etatpres_FSM_FFd5_In1_582,
      I4 => Inst_msa_hdl_etatpres_FSM_FFd3_In1_52,
      I5 => Inst_msa_hdl_etatpres_FSM_FFd3_49,
      O => Inst_msa_hdl_etatpres_FSM_FFd5_In2_583
    );
  inst_diviseur_clk_n0006_inv1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(8),
      I1 => inst_diviseur_clk_cnt16hz(5),
      I2 => inst_diviseur_clk_cnt16hz(6),
      I3 => inst_diviseur_clk_cnt16hz(7),
      O => inst_diviseur_clk_n0006_inv1_584
    );
  inst_diviseur_clk_n0006_inv2 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(13),
      I1 => inst_diviseur_clk_cnt16hz(12),
      I2 => inst_diviseur_clk_cnt16hz(9),
      I3 => inst_diviseur_clk_cnt16hz(10),
      I4 => inst_diviseur_clk_cnt16hz(11),
      I5 => inst_diviseur_clk_n0006_inv1_584,
      O => inst_diviseur_clk_n0006_inv2_585
    );
  inst_diviseur_clk_n0006_inv3 : LUT6
    generic map(
      INIT => X"8000800080000000"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(15),
      I1 => inst_diviseur_clk_cnt16hz(16),
      I2 => inst_diviseur_clk_cnt16hz(17),
      I3 => inst_diviseur_clk_cnt16hz(18),
      I4 => inst_diviseur_clk_cnt16hz(14),
      I5 => inst_diviseur_clk_n0006_inv2_585,
      O => inst_diviseur_clk_n0006_inv
    );
  inst_diviseur_clk_n0000_inv1 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(11),
      I1 => inst_diviseur_clk_cnt2hz(10),
      I2 => inst_diviseur_clk_cnt2hz(8),
      I3 => inst_diviseur_clk_cnt2hz(9),
      O => inst_diviseur_clk_n0000_inv1_586
    );
  inst_diviseur_clk_n0000_inv2 : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(16),
      I1 => inst_diviseur_clk_cnt2hz(14),
      I2 => inst_diviseur_clk_cnt2hz(15),
      I3 => inst_diviseur_clk_cnt2hz(12),
      I4 => inst_diviseur_clk_cnt2hz(13),
      I5 => inst_diviseur_clk_n0000_inv1_586,
      O => inst_diviseur_clk_n0000_inv2_587
    );
  inst_diviseur_clk_n0000_inv3 : LUT6
    generic map(
      INIT => X"8000800080000000"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(18),
      I1 => inst_diviseur_clk_cnt2hz(19),
      I2 => inst_diviseur_clk_cnt2hz(20),
      I3 => inst_diviseur_clk_cnt2hz(21),
      I4 => inst_diviseur_clk_cnt2hz(17),
      I5 => inst_diviseur_clk_n0000_inv2_587,
      O => inst_diviseur_clk_n0000_inv
    );
  inst_diviseur_clk_n0012_inv_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2khz(6),
      I1 => inst_diviseur_clk_cnt2khz(5),
      O => N2
    );
  inst_diviseur_clk_n0012_inv : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2khz(7),
      I1 => inst_diviseur_clk_cnt2khz(11),
      I2 => inst_diviseur_clk_cnt2khz(9),
      I3 => inst_diviseur_clk_cnt2khz(8),
      I4 => inst_diviseur_clk_cnt2khz(10),
      I5 => N2,
      O => inst_diviseur_clk_n0012_inv_162
    );
  ecran_n11371 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => ecran_vPos(25),
      I1 => ecran_vPos(24),
      I2 => ecran_vPos(26),
      I3 => ecran_vPos(27),
      I4 => ecran_vPos(28),
      I5 => ecran_vPos(29),
      O => ecran_n11371_589
    );
  ecran_n11372 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => ecran_vPos(31),
      I1 => ecran_vPos(30),
      I2 => ecran_n11371_589,
      O => ecran_n11372_590
    );
  ecran_n11373 : LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => ecran_vPos(0),
      I1 => ecran_vPos(1),
      I2 => ecran_vPos(2),
      I3 => ecran_vPos(3),
      I4 => ecran_vPos(4),
      I5 => ecran_vPos(9),
      O => ecran_n11373_591
    );
  ecran_n11374 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => ecran_vPos(11),
      I1 => ecran_vPos(10),
      I2 => ecran_vPos(5),
      I3 => ecran_vPos(8),
      I4 => ecran_vPos(7),
      I5 => ecran_vPos(6),
      O => ecran_n11374_592
    );
  ecran_n11375 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => ecran_vPos(13),
      I1 => ecran_vPos(12),
      I2 => ecran_vPos(14),
      I3 => ecran_vPos(15),
      I4 => ecran_vPos(16),
      I5 => ecran_vPos(17),
      O => ecran_n11375_593
    );
  ecran_n11376 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => ecran_vPos(19),
      I1 => ecran_vPos(18),
      I2 => ecran_vPos(20),
      I3 => ecran_vPos(21),
      I4 => ecran_vPos(22),
      I5 => ecran_vPos(23),
      O => ecran_n11376_594
    );
  ecran_n11377 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => ecran_n11373_591,
      I1 => ecran_n11376_594,
      I2 => ecran_n11375_593,
      I3 => ecran_n11374_592,
      I4 => ecran_n11372_590,
      I5 => ecran_GND_17_o_hPos_31_equal_1_o_31_7_772,
      O => ecran_n1137
    );
  ecran_GND_17_o_hPos_31_equal_1_o_31_1 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => ecran_hPos(6),
      I1 => ecran_hPos(5),
      I2 => ecran_hPos(7),
      I3 => ecran_hPos(10),
      I4 => ecran_hPos(11),
      I5 => ecran_hPos(12),
      O => ecran_GND_17_o_hPos_31_equal_1_o_31_Q
    );
  ecran_GND_17_o_hPos_31_equal_1_o_31_2 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => ecran_hPos(2),
      I1 => ecran_hPos(3),
      I2 => ecran_hPos(4),
      I3 => ecran_hPos(8),
      I4 => ecran_hPos(9),
      O => ecran_GND_17_o_hPos_31_equal_1_o_31_1_596
    );
  ecran_GND_17_o_hPos_31_equal_1_o_31_3 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => ecran_hPos(18),
      I1 => ecran_hPos(17),
      I2 => ecran_hPos(16),
      I3 => ecran_hPos(15),
      I4 => ecran_hPos(14),
      I5 => ecran_hPos(13),
      O => ecran_GND_17_o_hPos_31_equal_1_o_31_2_597
    );
  ecran_GND_17_o_hPos_31_equal_1_o_31_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => ecran_hPos(20),
      I1 => ecran_hPos(19),
      I2 => ecran_hPos(21),
      I3 => ecran_hPos(22),
      I4 => ecran_hPos(23),
      I5 => ecran_hPos(24),
      O => ecran_GND_17_o_hPos_31_equal_1_o_31_3_598
    );
  ecran_GND_17_o_hPos_31_equal_1_o_31_6 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => ecran_hPos(26),
      I1 => ecran_hPos(25),
      I2 => ecran_hPos(27),
      I3 => ecran_hPos(28),
      I4 => ecran_hPos(29),
      I5 => ecran_hPos(30),
      O => ecran_GND_17_o_hPos_31_equal_1_o_31_5
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_0
    );
  bouton1_IBUF : IBUF
    port map (
      I => bouton1,
      O => bouton1_IBUF_2
    );
  bouton2_IBUF : IBUF
    port map (
      I => bouton2,
      O => bouton2_IBUF_3
    );
  bouton3_IBUF : IBUF
    port map (
      I => bouton3,
      O => bouton3_IBUF_4
    );
  bouton4_IBUF : IBUF
    port map (
      I => bouton4,
      O => bouton4_IBUF_5
    );
  Q_del_7_OBUF : OBUF
    port map (
      I => shreg(7),
      O => Q_del(7)
    );
  Q_del_6_OBUF : OBUF
    port map (
      I => shreg(6),
      O => Q_del(6)
    );
  Q_del_5_OBUF : OBUF
    port map (
      I => shreg(5),
      O => Q_del(5)
    );
  Q_del_4_OBUF : OBUF
    port map (
      I => shreg(4),
      O => Q_del(4)
    );
  Q_del_3_OBUF : OBUF
    port map (
      I => shreg(3),
      O => Q_del(3)
    );
  Q_del_2_OBUF : OBUF
    port map (
      I => shreg(2),
      O => Q_del(2)
    );
  Q_del_1_OBUF : OBUF
    port map (
      I => shreg(1),
      O => Q_del(1)
    );
  Q_del_0_OBUF : OBUF
    port map (
      I => shreg_0_1_811,
      O => Q_del(0)
    );
  RGB_2_OBUF : OBUF
    port map (
      I => ecran_i000052_2,
      O => RGB(2)
    );
  RGB_1_OBUF : OBUF
    port map (
      I => ecran_i000052_1,
      O => RGB(1)
    );
  RGB_0_OBUF : OBUF
    port map (
      I => ecran_i000052_2,
      O => RGB(0)
    );
  HSYNC_OBUF : OBUF
    port map (
      I => ecran_HSYNC_20,
      O => HSYNC
    );
  VSYNC_OBUF : OBUF
    port map (
      I => ecran_VSYNC_21,
      O => VSYNC
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(20),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_20_rt_618
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(19),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_19_rt_619
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(18),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_18_rt_620
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(17),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_17_rt_621
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(16),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_16_rt_622
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(15),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_15_rt_623
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(14),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_14_rt_624
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(13),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_13_rt_625
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(12),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_12_rt_626
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(11),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_11_rt_627
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(10),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_10_rt_628
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(9),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_9_rt_629
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(8),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_8_rt_630
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(7),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_7_rt_631
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(6),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_6_rt_632
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(5),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_5_rt_633
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(4),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_4_rt_634
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(3),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_3_rt_635
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(2),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_2_rt_636
    );
  inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(1),
      O => inst_diviseur_clk_Mcount_cnt2hz_cy_1_rt_637
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2khz(10),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_10_rt_638
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2khz(9),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_9_rt_639
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2khz(8),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_8_rt_640
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2khz(7),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_7_rt_641
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2khz(6),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_6_rt_642
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2khz(5),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_5_rt_643
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2khz(4),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_4_rt_644
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2khz(3),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_3_rt_645
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2khz(2),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_2_rt_646
    );
  inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2khz(1),
      O => inst_diviseur_clk_Mcount_cnt2khz_cy_1_rt_647
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(17),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_17_rt_648
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(16),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_16_rt_649
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(15),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_15_rt_650
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(14),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_14_rt_651
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(13),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_13_rt_652
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(12),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_12_rt_653
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(11),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_11_rt_654
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(10),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_10_rt_655
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(9),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_9_rt_656
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(8),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_8_rt_657
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(7),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_7_rt_658
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(6),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_6_rt_659
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(5),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_5_rt_660
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(4),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_4_rt_661
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(3),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_3_rt_662
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(2),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_2_rt_663
    );
  inst_diviseur_clk_Mcount_cnt16hz_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(1),
      O => inst_diviseur_clk_Mcount_cnt16hz_cy_1_rt_664
    );
  ecran_Mcount_vPos_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(30),
      O => ecran_Mcount_vPos_cy_30_rt_665
    );
  ecran_Mcount_vPos_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(29),
      O => ecran_Mcount_vPos_cy_29_rt_666
    );
  ecran_Mcount_vPos_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(28),
      O => ecran_Mcount_vPos_cy_28_rt_667
    );
  ecran_Mcount_vPos_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(27),
      O => ecran_Mcount_vPos_cy_27_rt_668
    );
  ecran_Mcount_vPos_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(26),
      O => ecran_Mcount_vPos_cy_26_rt_669
    );
  ecran_Mcount_vPos_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(25),
      O => ecran_Mcount_vPos_cy_25_rt_670
    );
  ecran_Mcount_vPos_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(24),
      O => ecran_Mcount_vPos_cy_24_rt_671
    );
  ecran_Mcount_vPos_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(23),
      O => ecran_Mcount_vPos_cy_23_rt_672
    );
  ecran_Mcount_vPos_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(22),
      O => ecran_Mcount_vPos_cy_22_rt_673
    );
  ecran_Mcount_vPos_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(21),
      O => ecran_Mcount_vPos_cy_21_rt_674
    );
  ecran_Mcount_vPos_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(20),
      O => ecran_Mcount_vPos_cy_20_rt_675
    );
  ecran_Mcount_vPos_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(19),
      O => ecran_Mcount_vPos_cy_19_rt_676
    );
  ecran_Mcount_vPos_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(18),
      O => ecran_Mcount_vPos_cy_18_rt_677
    );
  ecran_Mcount_vPos_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(17),
      O => ecran_Mcount_vPos_cy_17_rt_678
    );
  ecran_Mcount_vPos_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(16),
      O => ecran_Mcount_vPos_cy_16_rt_679
    );
  ecran_Mcount_vPos_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(15),
      O => ecran_Mcount_vPos_cy_15_rt_680
    );
  ecran_Mcount_vPos_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(14),
      O => ecran_Mcount_vPos_cy_14_rt_681
    );
  ecran_Mcount_vPos_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(13),
      O => ecran_Mcount_vPos_cy_13_rt_682
    );
  ecran_Mcount_vPos_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(12),
      O => ecran_Mcount_vPos_cy_12_rt_683
    );
  ecran_Mcount_vPos_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(11),
      O => ecran_Mcount_vPos_cy_11_rt_684
    );
  ecran_Mcount_vPos_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(10),
      O => ecran_Mcount_vPos_cy_10_rt_685
    );
  ecran_Mcount_vPos_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(9),
      O => ecran_Mcount_vPos_cy_9_rt_686
    );
  ecran_Mcount_vPos_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(8),
      O => ecran_Mcount_vPos_cy_8_rt_687
    );
  ecran_Mcount_vPos_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(7),
      O => ecran_Mcount_vPos_cy_7_rt_688
    );
  ecran_Mcount_vPos_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(6),
      O => ecran_Mcount_vPos_cy_6_rt_689
    );
  ecran_Mcount_vPos_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(5),
      O => ecran_Mcount_vPos_cy_5_rt_690
    );
  ecran_Mcount_vPos_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(4),
      O => ecran_Mcount_vPos_cy_4_rt_691
    );
  ecran_Mcount_vPos_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(3),
      O => ecran_Mcount_vPos_cy_3_rt_692
    );
  ecran_Mcount_vPos_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(2),
      O => ecran_Mcount_vPos_cy_2_rt_693
    );
  ecran_Mcount_vPos_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(1),
      O => ecran_Mcount_vPos_cy_1_rt_694
    );
  ecran_Mcount_hPos_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(30),
      O => ecran_Mcount_hPos_cy_30_rt_695
    );
  ecran_Mcount_hPos_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(29),
      O => ecran_Mcount_hPos_cy_29_rt_696
    );
  ecran_Mcount_hPos_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(28),
      O => ecran_Mcount_hPos_cy_28_rt_697
    );
  ecran_Mcount_hPos_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(27),
      O => ecran_Mcount_hPos_cy_27_rt_698
    );
  ecran_Mcount_hPos_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(26),
      O => ecran_Mcount_hPos_cy_26_rt_699
    );
  ecran_Mcount_hPos_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(25),
      O => ecran_Mcount_hPos_cy_25_rt_700
    );
  ecran_Mcount_hPos_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(24),
      O => ecran_Mcount_hPos_cy_24_rt_701
    );
  ecran_Mcount_hPos_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(23),
      O => ecran_Mcount_hPos_cy_23_rt_702
    );
  ecran_Mcount_hPos_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(22),
      O => ecran_Mcount_hPos_cy_22_rt_703
    );
  ecran_Mcount_hPos_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(21),
      O => ecran_Mcount_hPos_cy_21_rt_704
    );
  ecran_Mcount_hPos_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(20),
      O => ecran_Mcount_hPos_cy_20_rt_705
    );
  ecran_Mcount_hPos_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(19),
      O => ecran_Mcount_hPos_cy_19_rt_706
    );
  ecran_Mcount_hPos_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(18),
      O => ecran_Mcount_hPos_cy_18_rt_707
    );
  ecran_Mcount_hPos_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(17),
      O => ecran_Mcount_hPos_cy_17_rt_708
    );
  ecran_Mcount_hPos_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(16),
      O => ecran_Mcount_hPos_cy_16_rt_709
    );
  ecran_Mcount_hPos_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(15),
      O => ecran_Mcount_hPos_cy_15_rt_710
    );
  ecran_Mcount_hPos_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(14),
      O => ecran_Mcount_hPos_cy_14_rt_711
    );
  ecran_Mcount_hPos_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(13),
      O => ecran_Mcount_hPos_cy_13_rt_712
    );
  ecran_Mcount_hPos_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(12),
      O => ecran_Mcount_hPos_cy_12_rt_713
    );
  ecran_Mcount_hPos_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(11),
      O => ecran_Mcount_hPos_cy_11_rt_714
    );
  ecran_Mcount_hPos_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(10),
      O => ecran_Mcount_hPos_cy_10_rt_715
    );
  ecran_Mcount_hPos_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(9),
      O => ecran_Mcount_hPos_cy_9_rt_716
    );
  ecran_Mcount_hPos_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(8),
      O => ecran_Mcount_hPos_cy_8_rt_717
    );
  ecran_Mcount_hPos_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(7),
      O => ecran_Mcount_hPos_cy_7_rt_718
    );
  ecran_Mcount_hPos_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(6),
      O => ecran_Mcount_hPos_cy_6_rt_719
    );
  ecran_Mcount_hPos_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(5),
      O => ecran_Mcount_hPos_cy_5_rt_720
    );
  ecran_Mcount_hPos_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(4),
      O => ecran_Mcount_hPos_cy_4_rt_721
    );
  ecran_Mcount_hPos_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(3),
      O => ecran_Mcount_hPos_cy_3_rt_722
    );
  ecran_Mcount_hPos_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(2),
      O => ecran_Mcount_hPos_cy_2_rt_723
    );
  ecran_Mcount_hPos_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(1),
      O => ecran_Mcount_hPos_cy_1_rt_724
    );
  inst_diviseur_clk_Mcount_cnt2hz_xor_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2hz(21),
      O => inst_diviseur_clk_Mcount_cnt2hz_xor_21_rt_725
    );
  inst_diviseur_clk_Mcount_cnt2khz_xor_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt2khz(11),
      O => inst_diviseur_clk_Mcount_cnt2khz_xor_11_rt_726
    );
  inst_diviseur_clk_Mcount_cnt16hz_xor_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_diviseur_clk_cnt16hz(18),
      O => inst_diviseur_clk_Mcount_cnt16hz_xor_18_rt_727
    );
  ecran_Mcount_vPos_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_vPos(31),
      O => ecran_Mcount_vPos_xor_31_rt_728
    );
  ecran_Mcount_hPos_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_hPos(31),
      O => ecran_Mcount_hPos_xor_31_rt_729
    );
  inst_diviseur_clk_div2khz_temp : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_div2khz_temp_rstpot_730,
      Q => inst_diviseur_clk_div2khz_temp_166
    );
  inst_diviseur_clk_div16hz_temp : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_div16hz_temp_rstpot_731,
      Q => inst_diviseur_clk_div16hz_temp_167
    );
  inst_diviseur_clk_div2hz_temp : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_dcm1,
      D => inst_diviseur_clk_div2hz_temp_rstpot_732,
      Q => inst_diviseur_clk_div2hz_temp_165
    );
  ecran_i000025_0 : FD
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_i000025_0_rstpot,
      Q => ecran_i000025(0)
    );
  ecran_RGB_2_GND_17_o_mux_41_OUT_0_1 : LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => ecran_videoOn_574,
      I1 => ecran_hPos_31_x_31_LessThan_34_o,
      I2 => ecran_vPos_31_z_31_LessThan_36_o,
      I3 => ecran_w_31_vPos_31_LessThan_37_o,
      I4 => ecran_y_31_hPos_31_LessThan_35_o,
      O => ecran_i000025_0_rstpot
    );
  ecran_GND_17_o_hPos_31_equal_1_o_31_5_SW0 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => ecran_hPos(0),
      I1 => ecran_hPos(1),
      I2 => ecran_hPos(31),
      O => N4
    );
  ecran_GND_17_o_hPos_31_equal_1_o_31_7 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => N4,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o_31_1_596,
      I2 => ecran_GND_17_o_hPos_31_equal_1_o_31_5,
      I3 => ecran_GND_17_o_hPos_31_equal_1_o_31_3_598,
      I4 => ecran_GND_17_o_hPos_31_equal_1_o_31_Q,
      I5 => ecran_GND_17_o_hPos_31_equal_1_o_31_2_597,
      O => ecran_GND_17_o_hPos_31_equal_1_o
    );
  ecran_i000052_1_LDC : LDC
    port map (
      CLR => ecran_n1125_0_inv,
      D => A(1),
      G => ecran_i000025(0),
      Q => ecran_i000052_1_LDC_735
    );
  ecran_i000052_1_P_1 : FDP
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_i000052_1_C_1,
      PRE => ecran_i000025(0),
      Q => ecran_i000052_1_P_1_737
    );
  ecran_i000052_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ecran_i000052_1_LDC_735,
      I1 => ecran_i000052_1_C_1,
      I2 => ecran_i000052_1_P_1_737,
      O => ecran_i000052_1
    );
  ecran_i000052_2_C_2 : FDC
    port map (
      C => ecran_clk25_BUFG_576,
      CLR => ecran_n1125_0_inv,
      D => ecran_i000025_0_rstpot,
      Q => ecran_i000052_2_C_2_738
    );
  ecran_i000052_2_P_2 : FDP
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_i000025_0_rstpot,
      PRE => ecran_i000025(0),
      Q => ecran_i000052_2_P_2_739
    );
  ecran_i000052_21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => ecran_i000052_1_LDC_735,
      I1 => ecran_i000052_2_C_2_738,
      I2 => ecran_i000052_2_P_2_739,
      O => ecran_i000052_2
    );
  inst_diviseur_clk_div16hz_temp_rstpot : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => inst_diviseur_clk_n0006_inv,
      I1 => inst_diviseur_clk_div16hz_temp_167,
      O => inst_diviseur_clk_div16hz_temp_rstpot_731
    );
  inst_diviseur_clk_div2hz_temp_rstpot : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => inst_diviseur_clk_n0000_inv,
      I1 => inst_diviseur_clk_div2hz_temp_165,
      O => inst_diviseur_clk_div2hz_temp_rstpot_732
    );
  inst_diviseur_clk_div2khz_temp_rstpot : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => inst_diviseur_clk_n0012_inv_162,
      I1 => inst_diviseur_clk_div2khz_temp_166,
      O => inst_diviseur_clk_div2khz_temp_rstpot_730
    );
  Inst_msa_hdl_etatpres_FSM_FFd5_In1 : LUT6
    generic map(
      INIT => X"9898889898989898"
    )
    port map (
      I0 => Inst_msa_hdl_etatpres_FSM_FFd2_50,
      I1 => encodeur_D_3_D_2_OR_5_o1_55,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd1_In1,
      I3 => inst3_debounce_Q1_33,
      I4 => inst3_debounce_Q3_31,
      I5 => inst3_debounce_Q2_32,
      O => Inst_msa_hdl_etatpres_FSM_FFd5_In1_582
    );
  Inst_msa_hdl_etatpres_FSM_FFd5_In3 : LUT6
    generic map(
      INIT => X"FFFF800080008000"
    )
    port map (
      I0 => Inst_msa_hdl_etatpres_FSM_FFd1_51,
      I1 => Inst_msa_hdl_etatpres_FSM_FFd4_48,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd5_47,
      I3 => Inst_msa_hdl_etatpres_FSM_FFd3_49,
      I4 => gs,
      I5 => Inst_msa_hdl_etatpres_FSM_FFd5_In2_583,
      O => Inst_msa_hdl_etatpres_FSM_FFd5_In
    );
  Inst_msa_hdl_etatpres_FSM_FFd3_In3 : LUT5
    generic map(
      INIT => X"08080828"
    )
    port map (
      I0 => encodeur_D_3_D_2_OR_5_o1_55,
      I1 => Inst_msa_hdl_etatpres_FSM_FFd2_50,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd4_48,
      I3 => Inst_msa_hdl_etatpres_FSM_FFd5_47,
      I4 => Inst_msa_hdl_etatpres_FSM_FFd1_51,
      O => Inst_msa_hdl_etatpres_FSM_FFd3_In4_579
    );
  Inst_msa_hdl_etatpres_FSM_FFd3_In1 : LUT4
    generic map(
      INIT => X"5515"
    )
    port map (
      I0 => encodeur_D_3_D_2_OR_5_o,
      I1 => inst2_debounce_Q1_36,
      I2 => inst2_debounce_Q2_35,
      I3 => inst2_debounce_Q3_34,
      O => Inst_msa_hdl_etatpres_FSM_FFd3_In2_577
    );
  encodeur_D_3_D_2_OR_5_o1 : LUT6
    generic map(
      INIT => X"08080808FF080808"
    )
    port map (
      I0 => inst4_debounce_Q2_29,
      I1 => inst4_debounce_Q1_30,
      I2 => inst4_debounce_Q3_28,
      I3 => inst3_debounce_Q1_33,
      I4 => inst3_debounce_Q2_32,
      I5 => inst3_debounce_Q3_31,
      O => encodeur_D_3_D_2_OR_5_o
    );
  ecran_vPos_31_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(31),
      I1 => ecran_Result(31),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_31_rstpot_740
    );
  ecran_vPos_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_31_rstpot_740,
      Q => ecran_vPos(31)
    );
  ecran_vPos_30_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(30),
      I1 => ecran_Result(30),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_30_rstpot_741
    );
  ecran_vPos_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_30_rstpot_741,
      Q => ecran_vPos(30)
    );
  ecran_vPos_29_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(29),
      I1 => ecran_Result(29),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_29_rstpot_742
    );
  ecran_vPos_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_29_rstpot_742,
      Q => ecran_vPos(29)
    );
  ecran_vPos_28_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(28),
      I1 => ecran_Result(28),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_28_rstpot_743
    );
  ecran_vPos_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_28_rstpot_743,
      Q => ecran_vPos(28)
    );
  ecran_vPos_27_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(27),
      I1 => ecran_Result(27),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_27_rstpot_744
    );
  ecran_vPos_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_27_rstpot_744,
      Q => ecran_vPos(27)
    );
  ecran_vPos_26_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(26),
      I1 => ecran_Result(26),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_26_rstpot_745
    );
  ecran_vPos_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_26_rstpot_745,
      Q => ecran_vPos(26)
    );
  ecran_vPos_25_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(25),
      I1 => ecran_Result(25),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_25_rstpot_746
    );
  ecran_vPos_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_25_rstpot_746,
      Q => ecran_vPos(25)
    );
  ecran_vPos_24_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(24),
      I1 => ecran_Result(24),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_24_rstpot_747
    );
  ecran_vPos_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_24_rstpot_747,
      Q => ecran_vPos(24)
    );
  ecran_vPos_23_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(23),
      I1 => ecran_Result(23),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_23_rstpot_748
    );
  ecran_vPos_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_23_rstpot_748,
      Q => ecran_vPos(23)
    );
  ecran_vPos_22_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(22),
      I1 => ecran_Result(22),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_22_rstpot_749
    );
  ecran_vPos_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_22_rstpot_749,
      Q => ecran_vPos(22)
    );
  ecran_vPos_21_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(21),
      I1 => ecran_Result(21),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_21_rstpot_750
    );
  ecran_vPos_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_21_rstpot_750,
      Q => ecran_vPos(21)
    );
  ecran_vPos_20_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(20),
      I1 => ecran_Result(20),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_20_rstpot_751
    );
  ecran_vPos_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_20_rstpot_751,
      Q => ecran_vPos(20)
    );
  ecran_vPos_19_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(19),
      I1 => ecran_Result(19),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_19_rstpot_752
    );
  ecran_vPos_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_19_rstpot_752,
      Q => ecran_vPos(19)
    );
  ecran_vPos_18_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(18),
      I1 => ecran_Result(18),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_18_rstpot_753
    );
  ecran_vPos_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_18_rstpot_753,
      Q => ecran_vPos(18)
    );
  ecran_vPos_17_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(17),
      I1 => ecran_Result(17),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_17_rstpot_754
    );
  ecran_vPos_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_17_rstpot_754,
      Q => ecran_vPos(17)
    );
  ecran_vPos_16_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(16),
      I1 => ecran_Result(16),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_16_rstpot_755
    );
  ecran_vPos_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_16_rstpot_755,
      Q => ecran_vPos(16)
    );
  ecran_vPos_15_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(15),
      I1 => ecran_Result(15),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n1137,
      O => ecran_vPos_15_rstpot_756
    );
  ecran_vPos_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_15_rstpot_756,
      Q => ecran_vPos(15)
    );
  ecran_vPos_14_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(14),
      I1 => ecran_Result(14),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_14_rstpot_757
    );
  ecran_vPos_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_14_rstpot_757,
      Q => ecran_vPos(14)
    );
  ecran_vPos_13_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(13),
      I1 => ecran_Result(13),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_13_rstpot_758
    );
  ecran_vPos_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_13_rstpot_758,
      Q => ecran_vPos(13)
    );
  ecran_vPos_12_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(12),
      I1 => ecran_Result(12),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_12_rstpot_759
    );
  ecran_vPos_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_12_rstpot_759,
      Q => ecran_vPos(12)
    );
  ecran_vPos_11_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(11),
      I1 => ecran_Result(11),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_11_rstpot_760
    );
  ecran_vPos_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_11_rstpot_760,
      Q => ecran_vPos(11)
    );
  ecran_vPos_10_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(10),
      I1 => ecran_Result(10),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_10_rstpot_761
    );
  ecran_vPos_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_10_rstpot_761,
      Q => ecran_vPos(10)
    );
  ecran_vPos_9_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(9),
      I1 => ecran_Result(9),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_9_rstpot_762
    );
  ecran_vPos_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_9_rstpot_762,
      Q => ecran_vPos(9)
    );
  ecran_vPos_8_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(8),
      I1 => ecran_Result(8),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_8_rstpot_763
    );
  ecran_vPos_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_8_rstpot_763,
      Q => ecran_vPos(8)
    );
  ecran_vPos_7_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(7),
      I1 => ecran_Result(7),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_7_rstpot_764
    );
  ecran_vPos_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_7_rstpot_764,
      Q => ecran_vPos(7)
    );
  ecran_vPos_6_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(6),
      I1 => ecran_Result(6),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_6_rstpot_765
    );
  ecran_vPos_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_6_rstpot_765,
      Q => ecran_vPos(6)
    );
  ecran_vPos_5_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(5),
      I1 => ecran_Result(5),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_5_rstpot_766
    );
  ecran_vPos_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_5_rstpot_766,
      Q => ecran_vPos(5)
    );
  ecran_vPos_4_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(4),
      I1 => ecran_Result(4),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_4_rstpot_767
    );
  ecran_vPos_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_4_rstpot_767,
      Q => ecran_vPos(4)
    );
  ecran_vPos_3_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(3),
      I1 => ecran_Result(3),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_3_rstpot_768
    );
  ecran_vPos_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_3_rstpot_768,
      Q => ecran_vPos(3)
    );
  ecran_vPos_2_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(2),
      I1 => ecran_Result(2),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_2_rstpot_769
    );
  ecran_vPos_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_2_rstpot_769,
      Q => ecran_vPos(2)
    );
  ecran_vPos_1_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(1),
      I1 => ecran_Result(1),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_1_rstpot_770
    );
  ecran_vPos_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_1_rstpot_770,
      Q => ecran_vPos(1)
    );
  ecran_vPos_0_rstpot : LUT4
    generic map(
      INIT => X"00CA"
    )
    port map (
      I0 => ecran_vPos(0),
      I1 => ecran_Result(0),
      I2 => ecran_GND_17_o_hPos_31_equal_1_o,
      I3 => ecran_n11377_773,
      O => ecran_vPos_0_rstpot_771
    );
  ecran_vPos_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_vPos_0_rstpot_771,
      Q => ecran_vPos(0)
    );
  ecran_GND_17_o_hPos_31_equal_1_o_31_7_1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => N4,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o_31_1_596,
      I2 => ecran_GND_17_o_hPos_31_equal_1_o_31_5,
      I3 => ecran_GND_17_o_hPos_31_equal_1_o_31_3_598,
      I4 => ecran_GND_17_o_hPos_31_equal_1_o_31_Q,
      I5 => ecran_GND_17_o_hPos_31_equal_1_o_31_2_597,
      O => ecran_GND_17_o_hPos_31_equal_1_o_31_7_772
    );
  ecran_n11377_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => ecran_n11373_591,
      I1 => ecran_n11376_594,
      I2 => ecran_n11375_593,
      I3 => ecran_n11374_592,
      I4 => ecran_n11372_590,
      I5 => ecran_GND_17_o_hPos_31_equal_1_o_31_7_772,
      O => ecran_n11377_773
    );
  ecran_hPos_30_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_30_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_30_rstpot_774
    );
  ecran_hPos_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_30_rstpot_774,
      Q => ecran_hPos(30)
    );
  ecran_hPos_29_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_29_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_29_rstpot_775
    );
  ecran_hPos_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_29_rstpot_775,
      Q => ecran_hPos(29)
    );
  ecran_hPos_28_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_28_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_28_rstpot_776
    );
  ecran_hPos_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_28_rstpot_776,
      Q => ecran_hPos(28)
    );
  ecran_hPos_27_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_27_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_27_rstpot_777
    );
  ecran_hPos_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_27_rstpot_777,
      Q => ecran_hPos(27)
    );
  ecran_hPos_26_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_26_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_26_rstpot_778
    );
  ecran_hPos_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_26_rstpot_778,
      Q => ecran_hPos(26)
    );
  ecran_hPos_25_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_25_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_25_rstpot_779
    );
  ecran_hPos_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_25_rstpot_779,
      Q => ecran_hPos(25)
    );
  ecran_hPos_24_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_24_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_24_rstpot_780
    );
  ecran_hPos_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_24_rstpot_780,
      Q => ecran_hPos(24)
    );
  ecran_hPos_23_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_23_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_23_rstpot_781
    );
  ecran_hPos_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_23_rstpot_781,
      Q => ecran_hPos(23)
    );
  ecran_hPos_22_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_22_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_22_rstpot_782
    );
  ecran_hPos_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_22_rstpot_782,
      Q => ecran_hPos(22)
    );
  ecran_hPos_21_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_21_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_21_rstpot_783
    );
  ecran_hPos_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_21_rstpot_783,
      Q => ecran_hPos(21)
    );
  ecran_hPos_20_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_20_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_20_rstpot_784
    );
  ecran_hPos_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_20_rstpot_784,
      Q => ecran_hPos(20)
    );
  ecran_hPos_19_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_19_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_19_rstpot_785
    );
  ecran_hPos_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_19_rstpot_785,
      Q => ecran_hPos(19)
    );
  ecran_hPos_18_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_18_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_18_rstpot_786
    );
  ecran_hPos_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_18_rstpot_786,
      Q => ecran_hPos(18)
    );
  ecran_hPos_17_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_17_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_17_rstpot_787
    );
  ecran_hPos_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_17_rstpot_787,
      Q => ecran_hPos(17)
    );
  ecran_hPos_16_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_16_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_16_rstpot_788
    );
  ecran_hPos_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_16_rstpot_788,
      Q => ecran_hPos(16)
    );
  ecran_hPos_15_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_15_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_15_rstpot_789
    );
  ecran_hPos_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_15_rstpot_789,
      Q => ecran_hPos(15)
    );
  ecran_hPos_14_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_14_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_14_rstpot_790
    );
  ecran_hPos_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_14_rstpot_790,
      Q => ecran_hPos(14)
    );
  ecran_hPos_13_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_13_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_13_rstpot_791
    );
  ecran_hPos_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_13_rstpot_791,
      Q => ecran_hPos(13)
    );
  ecran_hPos_12_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_12_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_12_rstpot_792
    );
  ecran_hPos_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_12_rstpot_792,
      Q => ecran_hPos(12)
    );
  ecran_hPos_11_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_11_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_11_rstpot_793
    );
  ecran_hPos_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_11_rstpot_793,
      Q => ecran_hPos(11)
    );
  ecran_hPos_10_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_10_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_10_rstpot_794
    );
  ecran_hPos_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_10_rstpot_794,
      Q => ecran_hPos(10)
    );
  ecran_hPos_9_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_9_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_9_rstpot_795
    );
  ecran_hPos_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_9_rstpot_795,
      Q => ecran_hPos(9)
    );
  ecran_hPos_8_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_8_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_8_rstpot_796
    );
  ecran_hPos_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_8_rstpot_796,
      Q => ecran_hPos(8)
    );
  ecran_hPos_7_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_7_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_7_rstpot_797
    );
  ecran_hPos_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_7_rstpot_797,
      Q => ecran_hPos(7)
    );
  ecran_hPos_6_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_6_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_6_rstpot_798
    );
  ecran_hPos_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_6_rstpot_798,
      Q => ecran_hPos(6)
    );
  ecran_hPos_5_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_5_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_5_rstpot_799
    );
  ecran_hPos_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_5_rstpot_799,
      Q => ecran_hPos(5)
    );
  ecran_hPos_4_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_4_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_4_rstpot_800
    );
  ecran_hPos_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_4_rstpot_800,
      Q => ecran_hPos(4)
    );
  ecran_hPos_3_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_3_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_3_rstpot_801
    );
  ecran_hPos_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_3_rstpot_801,
      Q => ecran_hPos(3)
    );
  ecran_hPos_2_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_2_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_2_rstpot_802
    );
  ecran_hPos_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_2_rstpot_802,
      Q => ecran_hPos(2)
    );
  ecran_hPos_1_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_1_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_1_rstpot_803
    );
  ecran_hPos_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_1_rstpot_803,
      Q => ecran_hPos(1)
    );
  ecran_hPos_0_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_0_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_0_rstpot_804
    );
  ecran_hPos_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_0_rstpot_804,
      Q => ecran_hPos(0)
    );
  ecran_hPos_31_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => ecran_Result_31_1,
      I1 => ecran_GND_17_o_hPos_31_equal_1_o,
      O => ecran_hPos_31_rstpot_805
    );
  ecran_hPos_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => ecran_clk25_BUFG_576,
      D => ecran_hPos_31_rstpot_805,
      Q => ecran_hPos(31)
    );
  Inst_msa_hdl_etatpres_FSM_FFd1_In : MUXF7
    port map (
      I0 => N6,
      I1 => N7,
      S => Inst_msa_hdl_etatpres_FSM_FFd1_51,
      O => Inst_msa_hdl_etatpres_FSM_FFd1_In_46
    );
  Inst_msa_hdl_etatpres_FSM_FFd1_In_F : LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => gs,
      I1 => Inst_msa_hdl_etatpres_FSM_FFd4_48,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd2_50,
      I3 => Inst_msa_hdl_etatpres_FSM_FFd3_49,
      I4 => Inst_msa_hdl_etatpres_FSM_FFd5_47,
      O => N6
    );
  Inst_msa_hdl_etatpres_FSM_FFd1_In_G : LUT5
    generic map(
      INIT => X"FFFF4555"
    )
    port map (
      I0 => encodeur_D_3_D_2_OR_5_o,
      I1 => inst2_debounce_Q3_34,
      I2 => inst2_debounce_Q2_35,
      I3 => inst2_debounce_Q1_36,
      I4 => Inst_msa_hdl_etatpres_FSM_FFd5_47,
      O => N7
    );
  Inst_msa_hdl_etatpres_FSM_FFd2_In4 : MUXF7
    port map (
      I0 => N8,
      I1 => N9,
      S => Inst_msa_hdl_etatpres_FSM_FFd2_50,
      O => Inst_msa_hdl_etatpres_FSM_FFd2_In
    );
  Inst_msa_hdl_etatpres_FSM_FFd2_In4_F : LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => Inst_msa_hdl_etatpres_FSM_FFd1_51,
      I1 => Inst_msa_hdl_etatpres_FSM_FFd5_47,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd4_48,
      I3 => gs,
      I4 => Inst_msa_hdl_etatpres_FSM_FFd3_49,
      O => N8
    );
  Inst_msa_hdl_etatpres_FSM_FFd2_In4_G : LUT6
    generic map(
      INIT => X"FFFFFFFFBFBF3F15"
    )
    port map (
      I0 => gs,
      I1 => Inst_msa_hdl_etatpres_FSM_FFd3_49,
      I2 => Inst_msa_hdl_etatpres_FSM_FFd4_48,
      I3 => encodeur_D_3_D_2_OR_5_o1_55,
      I4 => Inst_msa_hdl_etatpres_FSM_FFd5_47,
      I5 => Inst_msa_hdl_etatpres_FSM_FFd2_In2_580,
      O => N9
    );
  ecran_clk25_BUFG : BUFG
    port map (
      O => ecran_clk25_BUFG_576,
      I => ecran_clk25_810
    );
  inst_diviseur_clk_Mcount_cnt2hz_lut_0_INV_0 : INV
    port map (
      I => inst_diviseur_clk_cnt2hz(0),
      O => inst_diviseur_clk_Mcount_cnt2hz_lut(0)
    );
  inst_diviseur_clk_Mcount_cnt2khz_lut_0_INV_0 : INV
    port map (
      I => inst_diviseur_clk_cnt2khz(0),
      O => inst_diviseur_clk_Mcount_cnt2khz_lut(0)
    );
  inst_diviseur_clk_Mcount_cnt16hz_lut_0_INV_0 : INV
    port map (
      I => inst_diviseur_clk_cnt16hz(0),
      O => inst_diviseur_clk_Mcount_cnt16hz_lut(0)
    );
  ecran_Mcount_vPos_lut_0_INV_0 : INV
    port map (
      I => ecran_vPos(0),
      O => ecran_Mcount_vPos_lut(0)
    );
  ecran_Mcount_hPos_lut_0_INV_0 : INV
    port map (
      I => ecran_hPos(0),
      O => ecran_Mcount_hPos_lut(0)
    );
  ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_6_INV_0 : INV
    port map (
      I => ecran_vPos(31),
      O => ecran_Mcompar_vPos_31_z_31_LessThan_36_o_lut_6_Q
    );
  ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_6_INV_0 : INV
    port map (
      I => ecran_hPos(31),
      O => ecran_Mcompar_hPos_31_x_31_LessThan_34_o_lut_6_Q
    );
  ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_6_INV_0 : INV
    port map (
      I => ecran_vPos(31),
      O => ecran_Mcompar_GND_17_o_vPos_31_LessThan_13_o_lut_6_Q
    );
  ecran_n1125_0_inv1_INV_0 : INV
    port map (
      I => ecran_i000025(0),
      O => ecran_n1125_0_inv
    );
  ecran_clk25_INV_33_o1_INV_0 : INV
    port map (
      I => ecran_clk25_810,
      O => ecran_clk25_INV_33_o
    );
  shreg_0_1 : FDCE
    port map (
      C => inst_diviseur_clk_clk16hz_16,
      CE => Inst_msa_hdl_etatpres_FSM_FFd4_In1_54,
      CLR => rst_IBUF_0,
      D => inst_diviseur_clk_clk2hz_15,
      Q => shreg_0_1_811
    );

end Structure;

