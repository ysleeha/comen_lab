// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Jan 14 02:11:52 2024
// Host        : DESKTOP-GLH3044 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/comen_lab/practice2/practice2.gen/sources_1/ip/ila_sram_ctrl/ila_sram_ctrl_stub.v
// Design      : ila_sram_ctrl
// Purpose     : Stub declaration of top-level module interface
// Device      : xa7a35tcsg324-1I
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2023.1" *)
module ila_sram_ctrl(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8)
/* synthesis syn_black_box black_box_pad_pin="probe0[0:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[18:0],probe5[7:0],probe6[0:0],probe7[2:0],probe8[2:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [18:0]probe4;
  input [7:0]probe5;
  input [0:0]probe6;
  input [2:0]probe7;
  input [2:0]probe8;
endmodule
