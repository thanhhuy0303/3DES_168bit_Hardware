transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_DeepPipe {D:/UIT/Documents/CE213/Tri_DES_DeepPipe/Tri_DES_DeepPipe.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_DeepPipe {D:/UIT/Documents/CE213/Tri_DES_DeepPipe/SP_box.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_DeepPipe {D:/UIT/Documents/CE213/Tri_DES_DeepPipe/Key_schedule.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_DeepPipe {D:/UIT/Documents/CE213/Tri_DES_DeepPipe/Inv_Initial_Permutation.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_DeepPipe {D:/UIT/Documents/CE213/Tri_DES_DeepPipe/Initial_Permutation.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_DeepPipe {D:/UIT/Documents/CE213/Tri_DES_DeepPipe/Expansion.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_DeepPipe {D:/UIT/Documents/CE213/Tri_DES_DeepPipe/DES_deep_round.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_DeepPipe {D:/UIT/Documents/CE213/Tri_DES_DeepPipe/DES_core_DeepPipe.v}

vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_DeepPipe {D:/UIT/Documents/CE213/Tri_DES_DeepPipe/tb_Tri_DES_DeepPipe.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  tb_Tri_DES_DeepPipe

add wave *
view structure
view signals
run -all
