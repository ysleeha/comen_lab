// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Fri Feb  2 07:16:19 2024
// Host        : DESKTOP-GLH3044 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/comen_lab/practice_4/practice_4.gen/sources_1/ip/fifo_8bit/fifo_8bit_sim_netlist.v
// Design      : fifo_8bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_8bit,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2.2" *) 
(* NotValidForBitStream *)
module fifo_8bit
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "5" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "6" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1017" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1016" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_8bit_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Uus+5g3Fts6ofehbTlGvCWP47ZUO4Iguts10nwWKrrDCnmsKa0ECOFAy/6mqYixli8+MQiv36nW7
/i00MI/aOdL5Bnv7lIG8IKDhQU26Y0bwz+LQ8JdFuk+yoPzP3KSeDflyhZYqW+F1mMe76Z1rKxpm
NKBrJNbZx9pDDnUS99Q=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MjhF8pcXDmDHbm3qaKwAoW7xraCAj9OKmQsxF9ez58Q1MBQmQ478ZxYQkHS7BgJ8jBjXuEVawhYE
RXXrl2Vh9LdUmrzHoIXf/7/0O8zwhvqGXZlBJvufZPjkW+kT2DV0zifiTSX/MtiLKEkjwrDOwdPw
eQ2VXS1M6bP+Fdv/EZtrQu+O6rr/z8rKbDnwlpS07oAAFNo9whhRhTyGODGiHXHvEt9aEmwggTe4
69Kzr3fkuDSbVmZuu9PSi/LMLdlx8wBbTY5dNNoD7dbmKs/lS8cyJHdH4o5HtFB3C+8TTd/+tS5n
wZBB2jesSLZ9tn0xfDf59P50VDr2XuQhTu0gtA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WgIQovaPdeSINbxJR137BKZONMNArLTTEi/M2ur2lEjx6z6OBuKH5q80CRzC4EYDDe6jUXzKWFDu
81B03qnuBmJaePVrwKDN5+8u99JrU5kQaFyFrQTWY2Z8nEt4zMvYeOHOve66lP+jPK2QItaVblAY
XbhtjP+k6pZCb/IRcRc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YD7Tl5QfW9Ui8DCiXtaE8D5ZIKMluUXQGhmoMiq6ZO2KSI9h6Ro9aoSFdKZWX6lCbhqBo9FUrcy0
uH7NQ9YbCY43K8tJE8tbFYzJxOmmHphtV7vSkjSl9HinJXduSqG5SfRjXhN7DUAlYw/QvHBhgUO3
YwZJso8yfud7CbV1HNEcwGwqXEwsGFdkE6bTiUhRnA9Sbof8jjC/qnZtL9qB3F7SHSONAp4yEUkt
t2zKOJsTQ1BbdYhkdSK4tU8C0hGDpCEl8foBaTj8wARxmwoB98XfsLW359Rc1/Cyo1FjSyA9yiYz
CJsstysstNZDK4UkQMreL/vFqi+PxPgf6cCd9w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NDZIPYFfy5fHOyzo3Wvc+H6hGcMX/P2lLOQCrUCDKgWjBGN6qxCdHPt1E3UKOUWIisbvG/y2kR2e
lMxrLh2Am52VyNGgcKpQwnqw7eXa7+7xvN+Jo11Q1DRbu+NCAFEicO3kbrl48gTPAPhOW5LM7eA2
hZRbCh4SawXFUSOshB/ZJ9/ytC5fO0WCXXV6w0JjN5+rkDg401K4uq8xD4e84GVmnE5GUAfliRXm
W3urevu5NlqqRbGfuX0Yhf83nZnzIHe4PxFqnvtA7+BtSIGzgFiD8OqbV6+nRweKJRcdrx132aph
AoQtianVEl1M8EAP5CNzJAUfMvkkhMRU2x+WtA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ttaeY1lqndtl71pfmwuj1l1gkilLl3f5JV8o3KrBbi/MoHNXAw51rhKtwIQN5JMGkXNAq1kZyGmw
wfnBzWYlAxQE++8sDBT/lxMFxwK9TLDRjMA2veyUqZekotMyLr6d5jf7DgLHCM2cXo9TziodEX6R
o0vGAZjsBlNys+6jGfJbtdV8SCuAlc0I4z9p0boiUCidiK/avjWoktlxrQf1L9g1LZYdk1aRWr/r
hRVHSNpbPLPKSgbHsx6noNv3dgB2mfhn9jhmlmYxV7N5L+d1aoG4VKoY8gUkgypD0PthTdXpweFl
EObdkZWgp0s91R37yUiGaMhImifGXLT2TmvWcg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Xjh/r+uTIFLK1SUOPho9ZPs/oSNalRX+tpCee/BF80wWUXHxPNNIFfPbhrb5Ppm3iEtrNdI5DLRI
0tjaQNPbzdLVasl11GmsykNWzFFsvFxpFj7FYoGMg9QXQ+eT+V0zHbYMSapoSEKGOkdAC/UB8Cys
JxI58H0p8bLI3k0lZp9bTmnvhQqPdYGwLQCb2WsrplhqUtEumZjMcDjl4805ti1AZn5/ADeauued
Yo1NJOUajSC26cFNfwkugV4pVY67Lxk4tZPvHKNbu/qlVhdtJswY4bWKFxZutnAnXmo8S5nFwwEV
JNXYgpVDS07Cue7sbfuxNcNJFvsj6AwVEYNUNw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HsJKFyC7O8ipZYjpbPgzgOY1jcqskM/gO40stsMiM1axRuoFUxObJUt2hfCUSRNCPGcNO1F/k5sQ
YRkxxGWGkipZ+SNKhaOeg1KPWPOyKulujFtq1r64yeL9JT24FMoPBllBlpowEJW2rhYR8ZlWfZra
FfoGFR0l2YzhaeCfNwxUC4ipvZ64nViLxOqoX5r82UyusSDrPfqHu+sw2dmI0qIOe6Krpjgb0kvl
O+UFZqiv9YUgV0mrWsCOYt7y+jtTQJXRkUax3IbEk2EjOoMmQYwXf+x+Fay+Ed2L1weAiKUhgcqj
r7Y9moK51yRXg5LeoQCkNYG50Aw14aC0/I6frAQLjU6fip4iHHXe2RdL0v2xKvLh4X9buAKWic0X
mzA6XFlqEIlNKwo55UbQkTtkWgLwJxeydfCgAOeffrK6Ls2/4a2oneFZbKMNXe9GU4B8AZBZqhla
9MIcb3bCI75UlkW5iI5SB8R/eT/qvrL3yo+JpH6QS7RRXQVgEkwcPrz7

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XhWAwLXQiQzRNHMj075cYascgsaaVmImnIfShSSdw3P5BkCWWmhosk5iLRi/nFtxUTXJuO2ST73Z
EuKgr6/PAqe2+AN48tbN2MKOLx+RKrgqzckIqKWA2gp974Fs/VXaPvr2TnlZ3QkOXqFYvx5UcOI0
PDcRse59FDAYbBIPtS2sw0//yQyHEoKf+D2tIvVNwHyXylR2Oko+g07H/jX5+xx/yuQg29ctBI/m
8vhIbJMnPIEs6AaWbll/KI4pfVEV2TE36xgAWxtyWcx/O9wCJzzri4VIQ/WuagIWoydOMKPISdih
IpmPuVDzuPwInDZfBse7K5fixLpWr1DmvJx7cg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sCbhosRvV5loCfp2CX5UW6G9dA98Fobzy39VERO4hPN82wRKr7i0hyc2W9kSdV3tifArfeuGK+hN
e9a6qR3mx5a2IrDDjAcEtVchIDpVVJLANzyh7qwTqBXDW/QRSPi3F5pA/YLWK9hePfmya4/jccvE
uKl38Z9x0Ag/YCb6H5BQKuS6O0s383I+FSzOTS0Sxpu+7L3Yr5kP8prRGIP1qD6zMgG6uKJj3HF9
omstvh1F3q5YMgScMd7v1MZWsZELgUQDktPhSt7HUUHogq2aZQYl7x3riganBKoQKZ13A9Iex2ky
qTF3cIrtAz6ZLK4ND+RBseQdbcm7l6h5GALeCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
P9Ji+GKT738MP7o8TaU+mDFK4pwND49sGVKlSEKVKYxfXQEpCgR3QoVlcWyNhPWFVCBRkAYfaXDX
w0WOnd+KAWMuSDiTgtIpjKHzomg6DvwzJONdE94jHt48fL/q3itgN6pxVY7sU6Bo7xJ0oFjBhGEx
7AY1YLKCoR95jGRnMi1K/OcvN2r3aLyVD4CZBm6xRydif1UrumV6WgSEP7wrQo64lc2+HShIad9x
RbARl/mCcH9mF8W1q5/Gp1LU3RiCnqrMA3tnN2mL3BLWKWJ3bHPQIGFb+eKzCFcksrNNuZW9I+F/
N+Q2f3PL3cVGpFzWMzIBCYLuA6RWNCw/62lOhw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53360)
`pragma protect data_block
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
jnbMO6gcldc=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
