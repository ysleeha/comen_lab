-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../practice_2.gen/sources_1/ip/mmcm_50m/mmcm_50m_clk_wiz.v" \
  "../../../../practice_2.gen/sources_1/ip/mmcm_50m/mmcm_50m.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib
