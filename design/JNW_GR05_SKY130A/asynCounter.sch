v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -100 180 -100 {lab=Q1}
N 180 -100 180 -0 {lab=Q1}
N 180 -80 240 -80 {lab=Q1}
N 340 -100 400 -100 {lab=Q2}
N 400 -100 400 -0 {lab=Q2}
N 400 -80 460 -80 {lab=Q2}
N 560 -100 620 -100 {lab=Q3}
N 620 -100 620 -0 {lab=Q3}
N 620 -80 680 -80 {lab=Q3}
N 780 -100 840 -100 {lab=Q4}
N 840 -100 840 -0 {lab=Q4}
N 70 -160 70 -140 {lab=VDD}
N 20 -160 70 -160 {lab=VDD}
N 70 -160 290 -160 {lab=VDD}
N 290 -160 290 -140 {lab=VDD}
N 290 -160 510 -160 {lab=VDD}
N 510 -160 510 -140 {lab=VDD}
N 510 -160 730 -160 {lab=VDD}
N 730 -160 730 -140 {lab=VDD}
N 70 -20 70 60 {lab=VSS}
N 70 60 290 60 {lab=VSS}
N 290 -20 290 60 {lab=VSS}
N 290 60 510 60 {lab=VSS}
N 510 -20 510 60 {lab=VSS}
N 510 60 730 60 {lab=VSS}
N 730 -20 730 60 {lab=VSS}
N -20 60 70 60 {lab=VSS}
N -10 -100 20 -100 {lab=VDD}
N -40 -160 20 -160 {lab=VDD}
N 210 -160 210 -100 {lab=VDD}
N 210 -100 240 -100 {lab=VDD}
N 430 -100 460 -100 {lab=VDD}
N 650 -100 680 -100 {lab=VDD}
N -40 60 -20 60 {lab=VSS}
N -40 -80 20 -80 {lab=CLK}
N -130 -30 -100 -30 {lab=Vk}
N -200 -160 -40 -160 {lab=VDD}
N -240 -30 -210 -30 {lab=Reset}
N -170 -160 -170 -70 {lab=VDD}
N -170 10 -170 60 {lab=VSS}
N -210 60 -170 60 {lab=VSS}
N -170 60 -40 60 {lab=VSS}
N -10 -160 -10 -100 {lab=VDD}
N -10 -60 20 -60 {lab=Vk}
N 210 -60 240 -60 {lab=Vk}
N 430 -160 430 -100 {lab=VDD}
N 430 -60 460 -60 {lab=Vk}
N 650 -160 650 -100 {lab=VDD}
N 650 -60 680 -60 {lab=Vk}
N -100 -30 -60 -30 {lab=Vk}
N -60 -30 -10 -30 {lab=Vk}
N -10 -60 -10 -30 {lab=Vk}
C {JNW_GR05_SKY130A/JKflipflop.sym} 70 -80 0 0 {name=x1}
C {JNW_GR05_SKY130A/JKflipflop.sym} 290 -80 0 0 {name=x2}
C {JNW_GR05_SKY130A/JKflipflop.sym} 510 -80 0 0 {name=x3}
C {JNW_GR05_SKY130A/JKflipflop.sym} 730 -80 0 0 {name=x4}
C {devices/ipin.sym} -200 -160 0 0 {name=p4 lab=VDD}
C {devices/opin.sym} 180 0 2 1 {name=p19 lab=Q1
}
C {devices/ipin.sym} -210 60 0 0 {name=p1 lab=VSS}
C {devices/ipin.sym} -40 -80 0 0 {name=p2 lab=CLK}
C {devices/opin.sym} 400 0 2 1 {name=p3 lab=Q2
}
C {devices/opin.sym} 620 0 2 1 {name=p5 lab=Q3
}
C {devices/opin.sym} 840 0 2 1 {name=p6 lab=Q4}
C {devices/ipin.sym} -240 -30 0 0 {name=p8 lab=Reset
}
C {JNW_TR_SKY130A/JNWTR_IVX1_CV.sym} -210 -30 0 0 {name=x5 }
C {devices/lab_pin.sym} -60 -30 0 0 {name=p7 sig_type=std_logic lab=Vk
}
C {devices/lab_pin.sym} 210 -60 0 0 {name=p10 sig_type=std_logic lab=Vk
}
C {devices/lab_pin.sym} 430 -60 0 0 {name=p11 sig_type=std_logic lab=Vk
}
C {devices/lab_pin.sym} 650 -60 0 0 {name=p12 sig_type=std_logic lab=Vk
}
