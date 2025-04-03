v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Cascoding?} 330 -20 0 0 0.4 0.4 {}
T {Bias Cicuitry
} -280 -290 0 0 0.4 0.4 {}
N -40 -0 0 -0 {
lab=V_diff_pair_bias}
N -360 -300 -360 -240 {
lab=VDD}
N -400 -210 -360 -210 {
lab=VDD}
N -400 -270 -400 -210 {
lab=VDD}
N -400 -300 -400 -270 {
lab=VDD}
N -400 -300 -360 -300 {
lab=VDD}
N -40 -100 -40 -0 {
lab=V_diff_pair_bias}
N -160 -100 -160 -20 {
lab=V_diff_pair_bias}
N -200 0 -160 0 {
lab=V_diff_pair_bias}
N -160 -20 -160 -0 {
lab=V_diff_pair_bias}
N -200 30 -200 150 {
lab=V_d_dp_n}
N 0 30 -0 150 {
lab=V_d_dp_p}
N -200 240 0 240 {
lab=VSS}
N -0 240 240 240 {
lab=VSS}
N 240 210 240 240 {
lab=VSS}
N 40 180 200 180 {
lab=V_d_dp_p}
N 240 180 280 180 {
lab=VSS}
N 280 180 280 240 {
lab=VSS}
N 240 240 280 240 {
lab=VSS}
N -620 210 -620 240 {
lab=VSS}
N -280 -0 -240 0 {
lab=V_n}
N 40 0 80 0 {
lab=V_p}
N -320 -210 -140 -210 {
lab=V_diff_pair_bias_res}
N -300 -210 -300 -140 {
lab=V_diff_pair_bias_res}
N -360 -140 -300 -140 {
lab=V_diff_pair_bias_res}
N -100 -210 -60 -210 {
lab=VDD}
N -60 -300 -60 -210 {
lab=VDD}
N -360 -300 -60 -300 {
lab=VDD}
N -580 180 -240 180 {
lab=V_d_dp_n}
N -620 240 -360 240 {
lab=VSS}
N -360 240 -200 240 {
lab=VSS}
N -620 -330 -620 150 {
lab=V_2nd_current_mirror}
N -660 -350 -620 -350 {
lab=VDD}
N -660 -420 -660 -350 {
lab=VDD}
N -620 -420 -620 -380 {
lab=VDD}
N -660 -420 -620 -420 {
lab=VDD}
N -580 -350 200 -350 {
lab=V_2nd_current_mirror}
N -620 -420 240 -420 {
lab=VDD}
N 240 -420 240 -380 {
lab=VDD}
N -240 -420 -240 -300 {
lab=VDD}
N 240 -320 240 150 {
lab=I_out}
N 240 -100 340 -100 {
lab=I_out}
N -200 180 -160 180 {
lab=VSS}
N -160 180 -160 240 {
lab=VSS}
N -40 180 0 180 {
lab=VSS}
N -40 180 -40 200 {
lab=VSS}
N -40 200 -40 240 {
lab=VSS}
N -660 180 -620 180 {
lab=VSS}
N -660 180 -660 240 {
lab=VSS}
N -620 -280 -560 -280 {
lab=V_2nd_current_mirror}
N -560 -300 -560 -280 {
lab=V_2nd_current_mirror}
N -560 -350 -560 -300 {
lab=V_2nd_current_mirror}
N -660 240 -620 240 {
lab=VSS}
N -760 240 -660 240 {
lab=VSS}
N -760 -420 -660 -420 {
lab=VDD}
N -440 60 -440 240 {
lab=VSS}
N -100 -300 -100 -240 {
lab=VDD}
N 240 -350 280 -350 {
lab=VDD}
N 240 -420 280 -420 {
lab=VDD}
N 280 -420 280 -350 {
lab=VDD}
N 0 130 60 130 {
lab=V_d_dp_p}
N 60 130 60 180 {
lab=V_d_dp_p}
N -260 130 -200 130 {
lab=V_d_dp_n}
N -260 130 -260 180 {
lab=V_d_dp_n}
N -200 -100 -200 -30 {
lab=V_diff_pair_bias}
N -200 -100 -160 -100 {
lab=V_diff_pair_bias}
N -160 -100 -40 -100 {
lab=V_diff_pair_bias}
N -40 -100 -0 -100 {
lab=V_diff_pair_bias}
N 0 -100 0 -30 {
lab=V_diff_pair_bias}
N -100 -180 -100 -150 {
lab=V_diff_pair_bias}
N -100 -150 -100 -100 {
lab=V_diff_pair_bias}
N -440 -100 -440 60 {
lab=VSS}
N -440 -100 -380 -100 {
lab=VSS}
N -360 -180 -360 -140 {
lab=V_diff_pair_bias_res}
N -360 50 -360 60 {
lab=VSS}
N -360 -60 -360 -30 {
lab=#net1}
N -440 10 -380 10 {
lab=VSS}
N -370 -370 -370 -350 {
lab=V_2nd_current_mirror}
N -100 220 0 220 {lab=VSS}
N 0 210 0 220 {lab=VSS}
N -200 220 -100 220 {lab=VSS}
N -200 210 -200 220 {lab=VSS}
N -360 60 -360 240 {lab=VSS}
N -100 220 -100 240 {lab=VSS}
C {devices/ipin.sym} -760 -420 2 1 {name=p1 lab=VDD
}
C {devices/ipin.sym} -760 240 2 1 {name=p2 lab=VSS

}
C {devices/ipin.sym} -280 0 2 1 {name=p3 lab=V_n}
C {devices/ipin.sym} 80 0 2 0 {name=p4 lab=V_p
}
C {devices/opin.sym} 240 -160 2 1 {name=p5 lab=I_out}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C1F2.sym} 40 0 0 1 {name=x3[2:0]}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C1F2.sym} -240 0 0 0 {name=x1[2:0]}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 200 -350 0 0 {name=x4}
C {JNW_TR_SKY130A/JNWTR_RPPO16.sym} -360 -140 1 0 {name=x5}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 200 180 0 0 {name=x9}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -580 180 0 1 {name=x10}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -580 -350 0 1 {name=x11}
C {devices/lab_pin.sym} 0 -100 0 1 {name=p6 sig_type=std_logic lab=V_diff_pair_bias}
C {devices/lab_pin.sym} -300 -170 0 1 {name=p7 sig_type=std_logic lab=V_diff_pair_bias_res}
C {devices/lab_pin.sym} 0 50 0 1 {name=p8 sig_type=std_logic lab=V_d_dp_p}
C {devices/lab_pin.sym} -200 70 0 1 {name=p9 sig_type=std_logic lab=V_d_dp_n}
C {devices/lab_pin.sym} -370 -370 0 1 {name=p10 sig_type=std_logic lab=V_2nd_current_mirror}
C {JNW_ATR_SKY130A/JNWATR_PCH_8C1F2.sym} -320 -210 0 1 {name=x2[2:0]}
C {JNW_ATR_SKY130A/JNWATR_PCH_8C1F2.sym} -140 -210 0 0 {name=x3 }
C {JNW_TR_SKY130A/JNWTR_RPPO16.sym} -360 -30 1 0 {name=x4[1:0]}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -240 180 0 0 {name=x1}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 40 180 0 1 {name=x2}
