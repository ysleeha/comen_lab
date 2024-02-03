vlib work
vlib riviera

vlib riviera/fifo_generator_v13_2_7
vlib riviera/xil_defaultlib

vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work fifo_generator_v13_2_7  -v2k5 \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../practice_4.gen/sources_1/ip/fifo_8bit/sim/fifo_8bit.v" \


vlog -work xil_defaultlib \
"glbl.v"

