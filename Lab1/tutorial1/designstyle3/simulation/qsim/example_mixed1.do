onerror {exit -code 1}
vlib work
vlog -work work example_mixed1.vo
vlog -work work example_mixed1.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.example_mixed1_vlg_vec_tst -voptargs="+acc"
vcd file -direction example_mixed1.msim.vcd
vcd add -internal example_mixed1_vlg_vec_tst/*
vcd add -internal example_mixed1_vlg_vec_tst/i1/*
run -all
quit -f
