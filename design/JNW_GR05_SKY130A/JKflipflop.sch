v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 -200 170 -170 {lab=VDD}
N 170 -90 170 -60 {lab=VSS}
N 170 -420 170 -390 {lab=VDD}
N 170 -310 170 -280 {lab=VSS}
N 170 -450 170 -420 {lab=VDD}
N 170 -60 170 -30 {lab=VSS}
N 140 -30 170 -30 {lab=VSS}
N 140 -450 170 -450 {lab=VDD}
N 560 -240 660 -240 {lab=Q}
N 560 -180 660 -180 {lab=nQ}
N 90 -360 130 -360 {lab=nQ}
N 90 -390 90 -360 {lab=nQ}
N 60 -340 130 -340 {lab=J}
N -120 -140 -50 -140 {lab=K}
N 90 -120 130 -120 {lab=Q}
N 90 -120 90 -90 {lab=Q}
N -10 -210 -10 -180 {lab=VDD}
N -10 -100 -10 -70 {lab=VSS}
N 30 -140 130 -140 {lab=#net1}
N 220 -350 300 -350 {lab=#net2}
N 300 -350 300 -250 {lab=#net2}
N 300 -230 300 -130 {lab=#net3}
N 220 -130 300 -130 {lab=#net3}
N 340 -310 340 -280 {lab=VDD}
N 340 -200 340 -170 {lab=VSS}
N 390 -240 460 -240 {lab=#net4}
N 430 -180 460 -180 {lab=CLK}
N 520 -300 520 -270 {lab=VDD}
N 520 -150 520 -120 {lab=VSS}
N 450 -120 490 -120 {lab=RESET_N}
N 490 -150 490 -120 {lab=RESET_N}
C {JNW_TR_SKY130A/JNWTR_ANX1_CV.sym} 130 -340 0 0 {name=x1 }
C {JNW_TR_SKY130A/JNWTR_ANX1_CV.sym} 130 -120 0 0 {name=x2 }
C {devices/ipin.sym} 60 -340 0 0 {name=p4 lab=J}
C {devices/ipin.sym} -120 -140 0 0 {name=p1 lab=K}
C {devices/ipin.sym} 430 -180 0 0 {name=p2 lab=CLK}
C {devices/ipin.sym} 140 -450 0 0 {name=p3 lab=VDD}
C {devices/lab_wire.sym} 90 -90 0 0 {name=p9 sig_type=std_logic lab=Q}
C {devices/lab_wire.sym} 90 -390 0 0 {name=p11 sig_type=std_logic lab=nQ}
C {devices/lab_wire.sym} 170 -280 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 170 -200 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {JNW_TR_SKY130A/JNWTR_IVX1_CV.sym} -50 -140 0 0 {name=x3 }
C {devices/lab_wire.sym} -10 -210 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -10 -70 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {JNW_TR_SKY130A/JNWTR_ORX1_CV.sym} 300 -230 0 0 {name=x4 }
C {devices/lab_wire.sym} 340 -310 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 340 -170 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 520 -300 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 520 -120 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {JNW_TR_SKY130A/JNWTR_DFRNQNX1_CV.sym} 460 -180 0 0 {name=x6 }
C {devices/opin.sym} 660 -180 2 1 {name=p18 lab=nQ
}
C {devices/opin.sym} 660 -240 2 1 {name=p19 lab=Q
}
C {devices/ipin.sym} 140 -30 0 0 {name=p6 lab=VSS}
C {devices/ipin.sym} 450 -120 0 0 {name=p7 lab=RESET_N}
