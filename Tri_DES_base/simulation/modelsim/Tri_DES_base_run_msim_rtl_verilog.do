transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_base {D:/UIT/Documents/CE213/Tri_DES_base/Tri_DES_base.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_base {D:/UIT/Documents/CE213/Tri_DES_base/S_box.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_base {D:/UIT/Documents/CE213/Tri_DES_base/P_box.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_base {D:/UIT/Documents/CE213/Tri_DES_base/Key_schedule.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_base {D:/UIT/Documents/CE213/Tri_DES_base/Inv_Initial_Permutation.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_base {D:/UIT/Documents/CE213/Tri_DES_base/Initial_Permutation.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_base {D:/UIT/Documents/CE213/Tri_DES_base/Expansion.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_base {D:/UIT/Documents/CE213/Tri_DES_base/DES_core_base.v}

vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES_base {D:/UIT/Documents/CE213/Tri_DES_base/tb_Tri_DES_base.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  tb_Tri_DES_base

add wave *
view structure
view signals
run -all
