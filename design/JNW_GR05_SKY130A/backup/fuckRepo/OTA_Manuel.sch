v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Cascoding?} 20 -60 0 0 0.4 0.4 {}
T {Bias Cicuitry
} -590 -330 0 0 0.4 0.4 {}
N -350 -40 -310 -40 {
lab=V_diff_pair_bias}
N -670 -340 -670 -280 {
lab=VDD}
N -710 -250 -670 -250 {
lab=VDD}
N -710 -310 -710 -250 {
lab=VDD}
N -710 -340 -710 -310 {
lab=VDD}
N -710 -340 -670 -340 {
lab=VDD}
N -350 -140 -350 -40 {
lab=V_diff_pair_bias}
N -470 -140 -470 -60 {
lab=V_diff_pair_bias}
N -510 -40 -470 -40 {
lab=V_diff_pair_bias}
N -470 -60 -470 -40 {
lab=V_diff_pair_bias}
N -510 -10 -510 110 {
lab=V_d_dp_n}
N -310 -10 -310 110 {
lab=V_d_dp_p}
N -510 200 -310 200 {
lab=VSS}
N -310 200 -70 200 {
lab=VSS}
N -70 170 -70 200 {
lab=VSS}
N -270 140 -110 140 {
lab=V_d_dp_p}
N -70 140 -30 140 {
lab=VSS}
N -30 140 -30 200 {
lab=VSS}
N -70 200 -30 200 {
lab=VSS}
N -930 170 -930 200 {
lab=VSS}
N -590 -40 -550 -40 {
lab=V_n}
N -270 -40 -230 -40 {
lab=V_p}
N -630 -250 -450 -250 {
lab=V_diff_pair_bias_res}
N -610 -250 -610 -180 {
lab=V_diff_pair_bias_res}
N -670 -180 -610 -180 {
lab=V_diff_pair_bias_res}
N -410 -250 -370 -250 {
lab=VDD}
N -370 -340 -370 -250 {
lab=VDD}
N -670 -340 -370 -340 {
lab=VDD}
N -890 140 -550 140 {
lab=V_d_dp_n}
N -930 200 -670 200 {
lab=VSS}
N -670 200 -510 200 {
lab=VSS}
N -930 -370 -930 110 {
lab=V_2nd_current_mirror}
N -970 -390 -930 -390 {
lab=VDD}
N -970 -460 -970 -390 {
lab=VDD}
N -930 -460 -930 -420 {
lab=VDD}
N -970 -460 -930 -460 {
lab=VDD}
N -890 -390 -110 -390 {
lab=V_2nd_current_mirror}
N -930 -460 -70 -460 {
lab=VDD}
N -70 -460 -70 -420 {
lab=VDD}
N -550 -460 -550 -340 {
lab=VDD}
N -70 -360 -70 110 {
lab=I_out}
N -70 -140 30 -140 {
lab=I_out}
N -510 140 -470 140 {
lab=VSS}
N -470 140 -470 200 {
lab=VSS}
N -350 140 -310 140 {
lab=VSS}
N -350 140 -350 160 {
lab=VSS}
N -350 160 -350 200 {
lab=VSS}
N -970 140 -930 140 {
lab=VSS}
N -970 140 -970 200 {
lab=VSS}
N -930 -320 -870 -320 {
lab=V_2nd_current_mirror}
N -870 -340 -870 -320 {
lab=V_2nd_current_mirror}
N -870 -390 -870 -340 {
lab=V_2nd_current_mirror}
N -970 200 -930 200 {
lab=VSS}
N -1070 200 -970 200 {
lab=VSS}
N -1070 -460 -970 -460 {
lab=VDD}
N -750 20 -750 200 {
lab=VSS}
N -410 -340 -410 -280 {
lab=VDD}
N -70 -390 -30 -390 {
lab=VDD}
N -70 -460 -30 -460 {
lab=VDD}
N -30 -460 -30 -390 {
lab=VDD}
N -310 90 -250 90 {
lab=V_d_dp_p}
N -250 90 -250 140 {
lab=V_d_dp_p}
N -570 90 -510 90 {
lab=V_d_dp_n}
N -570 90 -570 140 {
lab=V_d_dp_n}
N -510 -140 -510 -70 {
lab=V_diff_pair_bias}
N -510 -140 -470 -140 {
lab=V_diff_pair_bias}
N -470 -140 -350 -140 {
lab=V_diff_pair_bias}
N -350 -140 -310 -140 {
lab=V_diff_pair_bias}
N -310 -140 -310 -70 {
lab=V_diff_pair_bias}
N -410 -220 -410 -190 {
lab=V_diff_pair_bias}
N -410 -190 -410 -140 {
lab=V_diff_pair_bias}
N -750 -140 -750 20 {
lab=VSS}
N -750 -140 -690 -140 {
lab=VSS}
N -670 -220 -670 -180 {
lab=V_diff_pair_bias_res}
N -670 10 -670 20 {
lab=VSS}
N -670 -100 -670 -70 {
lab=#net1}
N -750 -30 -690 -30 {
lab=VSS}
N -680 -410 -680 -390 {
lab=V_2nd_current_mirror}
N -410 180 -310 180 {lab=VSS}
N -310 170 -310 180 {lab=VSS}
N -510 180 -410 180 {lab=VSS}
N -510 170 -510 180 {lab=VSS}
N -670 20 -670 200 {lab=VSS}
N -410 180 -410 200 {lab=VSS}
C {devices/ipin.sym} -1070 -460 2 1 {name=p1 lab=VDD
}
C {devices/ipin.sym} -1070 200 2 1 {name=p2 lab=VSS

}
C {devices/ipin.sym} -590 -40 2 1 {name=p3 lab=V_n}
C {devices/ipin.sym} -230 -40 2 0 {name=p4 lab=V_p
}
C {devices/opin.sym} -70 -200 2 1 {name=p5 lab=I_out}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C1F2.sym} -270 -40 0 1 {name=x8}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C1F2.sym} -550 -40 0 0 {name=x3}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -110 -390 0 0 {name=x4}
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -670 -180 1 0 {name=x5}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -110 140 0 0 {name=x9}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -890 140 0 1 {name=x10}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -890 -390 0 1 {name=x11}
C {devices/lab_pin.sym} -310 -140 0 1 {name=p6 sig_type=std_logic lab=V_diff_pair_bias}
C {devices/lab_pin.sym} -610 -210 0 1 {name=p7 sig_type=std_logic lab=V_diff_pair_bias_res}
C {devices/lab_pin.sym} -310 10 0 1 {name=p8 sig_type=std_logic lab=V_d_dp_p}
C {devices/lab_pin.sym} -510 30 0 1 {name=p9 sig_type=std_logic lab=V_d_dp_n}
C {devices/lab_pin.sym} -680 -410 0 1 {name=p10 sig_type=std_logic lab=V_2nd_current_mirror}
C {JNW_ATR_SKY130A/JNWATR_PCH_12C5F0.sym} -630 -250 0 1 {name=x7}
C {JNW_TR_SKY130A/JNWTR_RPPO16.sym} -670 -70 1 0 {name=x6}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -550 140 0 0 {name=x1}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -270 140 0 1 {name=x2}
C {JNW_ATR_SKY130A/JNWATR_PCH_12C5F0.sym} -450 -250 0 0 {name=x20}
