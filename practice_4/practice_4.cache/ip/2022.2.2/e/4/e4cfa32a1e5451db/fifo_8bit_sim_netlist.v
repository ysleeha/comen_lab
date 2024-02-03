// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Fri Feb  2 07:05:52 2024
// Host        : DESKTOP-GLH3044 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_8bit_sim_netlist.v
// Design      : fifo_8bit
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_8bit,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2.2" *) 
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
    empty,
    valid);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output valid;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire valid;
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
  (* C_HAS_VALID = "1" *) 
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
        .valid(valid),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 55536)
`pragma protect data_block
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
Qy8JvBbUtbl1kyXlIsocGcWO
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
