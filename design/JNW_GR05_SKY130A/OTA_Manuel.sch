v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Cascoding?} 330 -20 0 0 0.4 0.4 {}
T {Bias Cicuitry
} -280 -240 0 0 0.4 0.4 {}
N -40 -0 0 -0 {
lab=#net1}
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
N -200 -140 -200 -30 {
lab=#net1}
N -200 -140 -100 -140 {
lab=#net1}
N -100 -140 0 -140 {
lab=#net1}
N 0 -140 0 -30 {
lab=#net1}
N -40 -140 -40 -0 {
lab=#net1}
N -160 -140 -160 -20 {
lab=#net1}
N -200 -0 -160 0 {
lab=#net1}
N -160 -20 -160 -0 {
lab=#net1}
N -200 30 -200 150 {
lab=#net2}
N 0 30 -0 150 {
lab=#net3}
N -200 210 -200 240 {
lab=VSS}
N -200 240 0 240 {
lab=VSS}
N 0 210 0 240 {
lab=VSS}
N 0 210 -0 240 {
lab=VSS}
N -0 240 240 240 {
lab=VSS}
N 240 210 240 240 {
lab=VSS}
N 40 180 200 180 {
lab=#net4}
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
N -360 -180 -360 20 {
lab=#net5}
N -100 -180 -100 -140 {
lab=#net1}
N -320 -210 -140 -210 {
lab=#net5}
N -300 -210 -300 -140 {
lab=#net5}
N -360 -140 -300 -140 {
lab=#net5}
N -100 -210 -60 -210 {
lab=VDD}
N -60 -300 -60 -210 {
lab=VDD}
N -360 -300 -60 -300 {
lab=VDD}
N -360 100 -360 240 {
lab=VSS}
N -580 180 -240 180 {
lab=#net6}
N -620 240 -360 240 {
lab=VSS}
N -360 240 -200 240 {
lab=VSS}
N -620 -330 -620 150 {
lab=#net7}
N -660 -350 -620 -350 {
lab=VDD}
N -660 -420 -660 -350 {
lab=VDD}
N -620 -420 -620 -380 {
lab=VDD}
N -660 -420 -620 -420 {
lab=VDD}
N -580 -350 200 -350 {
lab=#net7}
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
lab=#net7}
N -560 -300 -560 -280 {
lab=#net7}
N -560 -350 -560 -300 {
lab=#net7}
N -660 240 -620 240 {
lab=VSS}
N -760 240 -660 240 {
lab=VSS}
N -760 -420 -660 -420 {
lab=VDD}
N -440 60 -380 60 {
lab=VSS}
N -440 60 -440 240 {
lab=VSS}
N -100 -300 -100 -240 {
lab=VDD}
N 240 -350 280 -350 {}
N 240 -420 280 -420 {}
N 280 -420 280 -350 {}
C {devices/ipin.sym} -760 -420 2 1 {name=p1 lab=VDD
}
C {devices/ipin.sym} -760 240 2 1 {name=p2 lab=VSS

}
C {devices/ipin.sym} -280 0 2 1 {name=p3 lab=V_n}
C {devices/ipin.sym} 80 0 2 0 {name=p4 lab=V_p
}
C {devices/opin.sym} 340 -100 2 1 {name=p5 lab=I_out}
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 40 0 0 1 {name=x3 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -240 0 0 0 {name=x1 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -320 -210 0 1 {name=x2 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 200 -350 0 0 {name=x4 }
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -360 20 1 0 {name=x5 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -240 180 0 0 {name=x6 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -140 -210 0 0 {name=x7 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 40 180 0 1 {name=x8 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 200 180 0 0 {name=x9 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -580 180 0 1 {name=x10 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -580 -350 0 1 {name=x11 }
