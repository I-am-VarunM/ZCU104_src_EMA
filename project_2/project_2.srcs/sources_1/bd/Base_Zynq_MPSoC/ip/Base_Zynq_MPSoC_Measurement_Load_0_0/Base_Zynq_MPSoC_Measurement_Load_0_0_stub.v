// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Jun  7 15:08:27 2023
// Host        : i80r7node2 running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/manvar00/Downloads/RELEASE_DVD/vivado_designs/zcu104_src_ema/project_2/project_2.srcs/sources_1/bd/Base_Zynq_MPSoC/ip/Base_Zynq_MPSoC_Measurement_Load_0_0/Base_Zynq_MPSoC_Measurement_Load_0_0_stub.v
// Design      : Base_Zynq_MPSoC_Measurement_Load_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Measurement_Load,Vivado 2019.1" *)
module Base_Zynq_MPSoC_Measurement_Load_0_0(en, clk, out_load)
/* synthesis syn_black_box black_box_pad_pin="en,clk,out_load" */;
  input en;
  input clk;
  output out_load;
endmodule
