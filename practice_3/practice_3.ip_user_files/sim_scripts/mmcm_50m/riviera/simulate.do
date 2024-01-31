onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+mmcm_50m  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mmcm_50m xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {mmcm_50m.udo}

run 1000ns

endsim

quit -force
