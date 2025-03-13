v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -100 180 -100 {lab=Q1}
N 180 -100 180 -0 {lab=Q1}
N 340 -100 400 -100 {lab=Q2}
N 400 -100 400 -0 {lab=Q2}
N 560 -100 620 -100 {lab=Q3}
N 620 -100 620 -0 {lab=Q3}
N 780 -100 840 -100 {lab=Q4}
N 840 -100 840 -0 {lab=Q4}
N 70 -160 70 -140 {lab=VDD}
N 20 -240 70 -240 {lab=VDD}
N 70 -240 290 -240 {lab=VDD}
N 290 -160 290 -140 {lab=VDD}
N 290 -240 510 -240 {lab=VDD}
N 510 -160 510 -140 {lab=VDD}
N 510 -240 730 -240 {lab=VDD}
N 730 -160 730 -140 {lab=VDD}
N 90 -20 90 60 {lab=VSS}
N 70 60 290 60 {lab=VSS}
N 310 -20 310 60 {lab=VSS}
N 290 60 510 60 {lab=VSS}
N 530 -20 530 60 {lab=VSS}
N 510 60 730 60 {lab=VSS}
N 750 -20 750 60 {lab=VSS}
N -20 60 70 60 {lab=VSS}
N -40 -240 20 -240 {lab=VDD}
N -40 60 -20 60 {lab=VSS}
N -40 -80 20 -80 {lab=CLK}
N 70 -240 70 -160 {lab=VDD}
N 290 -240 290 -160 {lab=VDD}
N 510 -240 510 -160 {lab=VDD}
N 730 -240 730 -160 {lab=VDD}
N -0 -100 20 -100 {lab=VDD}
N 220 -100 240 -100 {lab=#net1}
N 440 -100 460 -100 {lab=#net2}
N 660 -100 680 -100 {lab=Vj}
N 220 -60 240 -60 {lab=VDD}
N 0 -60 20 -60 {lab=VDD}
N 440 -60 460 -60 {lab=VDD}
N 660 -60 680 -60 {lab=VDD}
N 80 -390 120 -390 {lab=RESET}
N 160 -460 160 -430 {lab=VDD}
N 160 -350 160 -320 {lab=VSS}
N 200 -390 240 -390 {lab=Vj}
N 560 -80 680 -80 {lab=#net3}
N 560 -80 560 -60 {lab=#net3}
N 340 -80 460 -80 {lab=#net4}
N 340 -80 340 -60 {lab=#net4}
N 120 -80 240 -80 {lab=#net5}
N 120 -80 120 -60 {lab=#net5}
N 730 60 750 60 {lab=VSS}
N 50 -20 50 -0 {lab=VSS}
N 40 0 50 0 {lab=VSS}
N 270 -20 270 0 {lab=VSS}
N 260 0 270 0 {lab=VSS}
N 490 -20 490 0 {lab=VSS}
N 480 0 490 0 {lab=VSS}
N 710 -20 710 0 {lab=VSS}
N 700 0 710 0 {lab=VSS}
C {JNW_GR05_SKY130A/JKflipflop.sym} 70 -80 0 0 {name=x1}
C {JNW_GR05_SKY130A/JKflipflop.sym} 290 -80 0 0 {name=x2}
C {JNW_GR05_SKY130A/JKflipflop.sym} 510 -80 0 0 {name=x3}
C {JNW_GR05_SKY130A/JKflipflop.sym} 730 -80 0 0 {name=x4}
C {devices/ipin.sym} -40 -240 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 180 0 2 1 {name=p19 lab=Q1
}
C {devices/ipin.sym} -40 60 0 0 {name=p1 lab=VSS}
C {devices/ipin.sym} -40 -80 0 0 {name=p2 lab=CLK}
C {devices/opin.sym} 400 0 2 1 {name=p3 lab=Q2
}
C {devices/opin.sym} 620 0 2 1 {name=p5 lab=Q3
}
C {devices/opin.sym} 840 0 2 1 {name=p6 lab=Q4}
C {devices/ipin.sym} 80 -390 0 0 {name=p7 lab=RESET}
C {devices/lab_wire.sym} 0 -60 2 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 220 -60 2 1 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 440 -60 2 1 {name=p10 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 660 -60 2 1 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 160 -460 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 160 -320 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 240 -390 0 0 {name=p20 sig_type=std_logic lab=Vj}
C {devices/lab_wire.sym} 40 0 0 0 {name=p12 sig_type=std_logic lab=Vj}
C {JNW_TR_SKY130A/JNWTR_IVX1_CV.sym} 120 -390 0 0 {name=x5 }
C {devices/lab_wire.sym} 260 0 0 0 {name=p16 sig_type=std_logic lab=Vj}
C {devices/lab_wire.sym} 480 0 0 0 {name=p21 sig_type=std_logic lab=Vj}
C {devices/lab_wire.sym} 700 0 0 0 {name=p22 sig_type=std_logic lab=Vj}
C {devices/lab_wire.sym} 0 -100 2 1 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 660 -100 2 1 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 440 -100 2 1 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 220 -100 2 1 {name=p15 sig_type=std_logic lab=VDD}
