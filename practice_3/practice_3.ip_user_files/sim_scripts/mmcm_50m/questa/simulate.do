onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib mmcm_50m_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {mmcm_50m.udo}

run 1000ns

quit -force
