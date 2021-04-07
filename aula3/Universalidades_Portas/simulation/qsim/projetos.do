onerror {quit -f}
vlib work
vlog -work work projetos.vo
vlog -work work projetos.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Univer_Portas_NAND_vlg_vec_tst
vcd file -direction projetos.msim.vcd
vcd add -internal Univer_Portas_NAND_vlg_vec_tst/*
vcd add -internal Univer_Portas_NAND_vlg_vec_tst/i1/*
add wave /*
run -all
