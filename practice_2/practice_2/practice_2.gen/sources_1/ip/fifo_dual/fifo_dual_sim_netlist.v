// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Jan 20 05:17:00 2024
// Host        : DESKTOP-GLH3044 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fifo_dual -prefix
//               fifo_dual_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module fifo_dual
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1016" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1015" *) 
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
  (* C_RD_FREQ = "100" *) 
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
  (* C_WR_FREQ = "50" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_dual_fifo_generator_v13_2_7 U0
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uS/dIpDTldS7400uyLsI6bJxO+WmZJrKXsU8qB+wpyI+d4PWZVO6Cm0qMQFNUZb63p6zCI5fvnQy
SxjaSP1nCte/oQZc55w1rQbTqy54T9kryRoH26nDjSBVZvJ8hffw7NONwiKrqeB6I7HJKX5RKw73
wIJxNNH7BCiCEtRLIxc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L7q2sHnC0pU7uHs8shPm9nAcqyU+hUFnNkd6BPHl+ureEVBUvubWhEbLRLiFFJveufcmAfAXTzae
tWbKcVVt/zKzWEtv0onUXoSEgyS4+QaTAFeCPHR2bbnlP0aCCG2SYmC1dv16cFoAk/NLitClNXAv
h+UBGzod+suWv55DaNHeHtSZ/YLZxHdn/R47atTiQM+A1TWQkpa3faF/L9ANZISSe/OR6mPfQ/Zk
4AptHNmW/pWpd3JL4e06iK9P6ZLLRqSMR9mu6AFIeWYBVz+KkxgSIWgQO7/AHBUFjlIiMFhyQR5Y
UC1fo4CPZX7fMdUPwQiC+eZ7UtxMAUzovIzwEw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KZhqqPnSEvcItoYRHrFT/Wt2IEXHe7pq5lmAOfYqAaaoY8mpIG3Kd8B/C4s9kNUbktSOX78NnnrJ
brxcu/1EAlI9itnDH8ahxble+2Nt/Lj3dQ1/wbDy3HOKlwBVuOvVDArOpgho+BAnoLUZXrpsw8EI
FSIPKmsETVzLzZDw6m0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WZbb0PsQl1vn7dY/rZzI8ZGsAP5Ad4C/d2cBXS49yTbQqKMTY7r1YHlrjBGteY6wrhKVmM92u/3/
/UJWPyNVqwcsrRAHhR/Lp3Mg87NIhYzETdNAOpnc7rWC9ieIeEiyPM734sI7QtAMVrZxXoUXnCjp
fjQhaMqv+HsuEWpFhDail+v8Ftwmr5xP1JSpqPfxLz5a6+q8/lTxRGeWZokM7vP2YFKg7L7Yoowh
gOm5w3JhR2fXZsksWxfQk7885JzsI4yZOrU8dY667YWWhkjZE/SKo2TMksiasL22T6CpyUbMwQm2
DJ+cMJbr9/8csBEifIsopc4V9zFbSU9eoxlqZA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Adid/GOKDljgmM7UpkmD6EVL+5rt6bnWK9P8RIZiI3EkLW96rM6eCs7jkLeKnEW/WPGRhlZrGw8p
C7Ni27oibJKJT5xUBJDymbO+yheaaTI0GaeDMIzks860gYA3qdvTPxTBotaOg6MIpnYd070NhTod
Qq5XNnxLuF7/s5rAZANJHyRQKwu4gVBfs5SU2FSjF546M5FvN7BX6G7B76ALW6vKqGyKxwoHkc52
Bm8/jGTxJ6zbwn2v31NEfjO6nM5m6yYwY0476QLXWI6+7/ILkSvDVTt7B9HpcaRg3n3T4AEQDMyX
8bBPgm0qFbWZue0dlr9ljYOl0dgwaO8G9uYe9g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
tq2b3cw7fnIOEbRUxnQIgAjXwRE3aRwj2IBVmS0S998fvCLPMUtm5MVXAqk0TwuEzKG3br/oRham
Oe5KAx6FauTTVpRhLH5RY3832M9OVTSW/bNq12/dXnJyOfYS76FQtd9HNFrSkVPMONGMD0ZQXRic
Yr0MaeflUHQmU6QUCt5OJkbG4F8qJLMWJsg03K7dNzDfkvev3QVf72bmHTm4SF6/cs94NXQl/NPr
CzQorTZ5BgCzVAui7mM0eu3mu6OPkecNQ3Ih+1zsJuGkAHWC7aFgh7ii6xEj1upD365TzJUF1ZCe
0jZj/Ub1m5OgZMbjbLYn/Fh5nqi+fAmL7jDAHQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
S+EkimFGNL3D/SKyjUVYhIZzRbEoTqlnv2kHD0e4rYYCt/O4IYecNmch6HRfd2U/WSZPkAoJ+xa7
GKQSo51PL81HSvqURo2CxltObyTYiklnzGtbdWUMpOSCjDe8LpQjUNwhSksWjZjUQypyYXS4hbCR
VJy96ow8zi5m1XMzoLaVMDYoJYLtOVh7eaL7InaIL5gXJIHWkhoKYh9bR/O5HE6YTsgZl+Ofmx/3
0mQ/bL5ZKSY6gBEUD8f5+SoMIjfXrGkjMj1+fEAIv0fO/wKyJQMKnDOgWMvcUw56dOJ7FWkbNvbC
kzquuXhk5LuzZfXWmhyDSyMGBWK1wN7iyMKMUg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
LQ4hjhkD/G9XJd+gVR5WF2vSll/p8/psR+nHjJ5/DHrtiRqVWFVc7B7T9XZuJBmTqrQV4iSBYWDo
zNaVdq26mGk6TTNo11Dcici0hEwC2Bg66k9kr1if+0iZo3VtB/ZuEOj2w7euhFo3ja1OovnDXxf0
8t4WMUK68mfUiMuKgVcbOFhm3Jdnbnz4u7SggH2/rkfOS8jbon9q9n0EXlK23tz2NzDLCS8B7ERx
dYvwqwBiySKoP1/EcfSwFNIWpr6p7kbRo7iM/JbP6UwBbkDHgE8HGS+3lTXIUXsmGmsx6EDSr/gY
i7lHwZTmDuhuIEJaf6gTJgtqMSxVyDVsrnba5umKgV8z5OOWUkM3FjVWIXOG7Ef2iKFCzBPmp2Lk
8XbrXk/bb9H/jr4UR3hgdbizISTysLTJd4n5uyeDhDgkxAc+1FudacmuZyBlA/VTR1f0i9+cOgLI
kdqbo1u5hQwnMphluBKjdTA3nZ8VnpDbdq5R7hIF61tIrUfdjwQw02je

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JzhYMwmYowESMI19XNb+BEFcZw3IXZpwZO3gzrVg2CdSjbAR3tiIVbPHI5Rgu59SH7H8abU59Atd
+nrPiG37rmU6CD+cMV2mU8SHfCDLYsnrbd9YLZ1GEfqTovR0NZHQTHj+7c5dP7nqm30C/kg1adqd
DOV7F128PbmM5U45xRxOJKUgS/Waz0gvmYKKJejkiyFPOgGbN5f844mtysoOckLrAU/BzRs8SB9G
zzisK/a8hM5af8/opZ64TGhH44Npzy8kcP+gI+k+U0oF0SOqW7CjadKaJhr2oDkTScVVCbBqFEjc
2gH862vcCfZu5Cd0Sp2ALgoqVxA+91lAIHJp3Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ooNS+XjsaWLRgvcrNWVpR3ihKtIJNT1oT4D5ivD5mCfw+4/SAyx9P4cmdvOotLNPE1eqvx1Smd9Q
LDImL/GqS7Cq3KEUtEBbvQAOp+0SjiW74cC6nyOqCA8NQcn5JM+vUzGSsORPnM5qP96axGmyEvSi
p3uL9Gmx+3S3KUJuAzfuqZwJD7gdcA0Zv3hPRl+xhx8qFtkPCfT5uj7wpFVaaJ8tTl1SDd2uRUIx
rgVgV+oERCg71oEVN7PqPK1y7pFVgSW9uhP1wuvO/EsbyrLYZV6HtBn3tJDcxhTsQWrrou3F1kFQ
cFnl9tcL1wXJo/F3wvsbYM1W0UPHv69XAsEUhg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d8YRbu+fllaHlNDedyRNDRtn9CBoVbO9fZCdhKpy0yf9dL6A08sFZuWVtVGljxF/L9volGB0IRjl
KbH2N/JBQA+tZWuh75kK5pjveAAKLVACS8A+Jmt/mrxzlolPWsruJ8o1Owrjq5tGWspdqmeDGS7U
/Ww7cN0C9ExUj4cjRDcKaqDS9MGwRtx4LfcQbQbRDZBk+cyRaWCchvmhjoum4uTizvqMq2u4oSym
t2zyKFjAuMO4zC2LbPbODeumm+FhlOKAHRyEBKA+VQeLB4apkMYparuD5AFWAuVvdWEbGq/L4cJ7
pEGz+6Hqi68CfF/4tMNiyHveP1lxnyAaiW6Kjg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53008)
`pragma protect data_block
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
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
