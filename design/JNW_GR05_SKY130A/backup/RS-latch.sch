v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 20 40 70 {lab=VDD}
N 90 -170 140 -170 {lab=Q}
N 140 -160 140 -60 {lab=Q}
N -60 -60 140 -60 {lab=Q}
N -60 -60 -60 90 {lab=Q}
N -60 90 -60 100 {lab=Q}
N -60 100 -0 100 {lab=Q}
N 90 110 140 110 {lab=nQ}
N 140 -40 140 110 {lab=nQ}
N -40 -40 140 -40 {lab=nQ}
N -40 -150 -40 -40 {lab=nQ}
N -40 -160 0 -160 {lab=nQ}
N 40 -130 40 -90 {lab=VSS}
N 40 150 40 190 {lab=VSS}
N -100 120 0 120 {lab=nR}
N -40 -160 -40 -150 {lab=nQ}
N 140 -170 140 -160 {lab=Q}
N 40 -260 40 -210 {lab=VDD}
N -100 -180 -10 -180 {lab=nS}
N 140 -170 170 -170 {lab=Q}
N -10 -180 -0 -180 {lab=nS}
N 170 -170 180 -170 {lab=Q}
N 140 110 180 110 {lab=nQ}
N 180 -170 190 -170 {lab=Q}
C {devices/ipin.sym} -230 -160 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -230 -120 0 0 {name=p3 lab=VSS}
C {devices/lab_wire.sym} 40 -260 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 40 20 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 40 -90 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 40 190 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {JNW_TR_SKY130A/JNWTR_NDX1_CV.sym} 0 -160 0 0 {name=x2 }
C {JNW_TR_SKY130A/JNWTR_NDX1_CV.sym} 0 120 0 0 {name=x1 }
C {devices/lab_wire.sym} 40 -90 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -100 -180 0 0 {name=p8 lab=nS}
C {devices/ipin.sym} -100 120 0 0 {name=p7 lab=nR
}
C {devices/opin.sym} 190 -170 0 0 {name=p9 lab=Q}
C {devices/opin.sym} 180 110 0 0 {name=p2 lab=nQ}
