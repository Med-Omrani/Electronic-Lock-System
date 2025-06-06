onerror {exit -code 1}
vlib work
vlog -work work serrure.vo
vlog -work work dec_clavier_sim.vwf.vt
vsim -novopt -c -t 1ps -L fiftyfivenm_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.serrure_vlg_vec_tst -voptargs="+acc"
vcd file -direction serrure.msim.vcd
vcd add -internal serrure_vlg_vec_tst/*
vcd add -internal serrure_vlg_vec_tst/i1/*
run -all
quit -f
