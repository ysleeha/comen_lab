// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Fri Feb  2 07:16:18 2024
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 53472)
`pragma protect data_block
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
w/58hrJD
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
