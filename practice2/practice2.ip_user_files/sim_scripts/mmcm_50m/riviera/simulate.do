transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+mmcm_50m  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mmcm_50m xil_defaultlib.glbl

do {mmcm_50m.udo}

run 1000ns

endsim

quit -force
