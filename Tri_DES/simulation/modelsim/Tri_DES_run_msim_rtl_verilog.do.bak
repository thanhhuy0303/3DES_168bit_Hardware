transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES {D:/UIT/Documents/CE213/Tri_DES/Tri_DES.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES {D:/UIT/Documents/CE213/Tri_DES/SP_box.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES {D:/UIT/Documents/CE213/Tri_DES/Key_schedule.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES {D:/UIT/Documents/CE213/Tri_DES/Inv_Initial_Permutation.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES {D:/UIT/Documents/CE213/Tri_DES/Initial_Permutation.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES {D:/UIT/Documents/CE213/Tri_DES/Expansion.v}
vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES {D:/UIT/Documents/CE213/Tri_DES/DES_core.v}

vlog -vlog01compat -work work +incdir+D:/UIT/Documents/CE213/Tri_DES {D:/UIT/Documents/CE213/Tri_DES/tb_Tri_DES.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  tb_Tri_DES

add wave *
view structure
view signals
run -all
