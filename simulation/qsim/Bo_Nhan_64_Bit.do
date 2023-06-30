onerror {quit -f}
vlib work
vlog -work work Bo_Nhan_64_Bit.vo
vlog -work work Bo_Nhan_64_Bit.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Bo_Nhan_64_Bit_vlg_vec_tst
vcd file -direction Bo_Nhan_64_Bit.msim.vcd
vcd add -internal Bo_Nhan_64_Bit_vlg_vec_tst/*
vcd add -internal Bo_Nhan_64_Bit_vlg_vec_tst/i1/*
add wave /*
run -all
