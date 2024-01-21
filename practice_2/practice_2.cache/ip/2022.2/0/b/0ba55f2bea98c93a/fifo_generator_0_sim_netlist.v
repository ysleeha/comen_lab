// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Jan 20 05:17:00 2024
// Host        : DESKTOP-GLH3044 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53488)
`pragma protect data_block
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
NNZYzRBMcYPpBVXYlRn+mgIzOeDXHQ==
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
