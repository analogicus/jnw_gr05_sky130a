v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -640 30 -640 90 {
lab=V_bjt_n}
N -540 120 -480 120 {
lab=VSS}
N -640 150 -640 220 {
lab=VSS}
N -440 150 -440 220 {
lab=VSS}
N -540 120 -540 220 {
lab=VSS}
N -540 220 -440 220 {
lab=VSS}
N -760 220 -640 220 {
lab=VSS}
N -640 -100 -330 -100 {
lab=V_n}
N -640 -100 -640 -50 {
lab=V_n}
N -440 -120 -330 -120 {
lab=V_p}
N -440 -120 -440 90 {
lab=V_p}
N -360 -80 -330 -80 {
lab=VSS}
N -360 -80 -360 220 {
lab=VSS}
N -440 220 -360 220 {
lab=VSS}
N -640 -640 -480 -640 {
lab=VDD}
N -90 -110 -40 -110 {
lab=OT_out}
N -360 220 0 220 {
lab=VSS}
N 0 40 0 220 {
lab=VSS}
N 0 -110 40 -110 {
lab=VSS}
N 40 -110 40 -0 {
lab=VSS}
N -0 0 40 -0 {
lab=VSS}
N -440 -640 0 -640 {
lab=VDD}
N 0 -640 40 -640 {
lab=VDD}
N 0 -390 0 -140 {
lab=V_current_drive}
N 0 -640 -0 -540 {
lab=VDD}
N -0 -510 40 -510 {
lab=VDD}
N 40 -640 40 -510 {
lab=VDD}
N -440 -480 -440 -120 {
lab=V_p}
N -100 -510 -100 -440 {
lab=V_current_drive}
N -960 -140 -330 -140 {
lab=VDD}
N -960 -640 -960 -140 {
lab=VDD}
N -960 -640 -700 -640 {
lab=VDD}
N -440 -640 -440 -540 {
lab=VDD}
N -480 -640 -480 -510 {
lab=VDD}
N -100 -510 -40 -510 {
lab=V_current_drive}
N -480 -510 -440 -510 {
lab=VDD}
N 210 -360 210 -300 {
lab=I_OF_T_OUT}
N 40 -640 210 -640 {
lab=VDD}
N 210 -390 250 -390 {
lab=VDD}
N 210 -640 250 -640 {
lab=VDD}
N 0 -390 170 -390 {
lab=V_current_drive}
N 210 -300 350 -300 {
lab=I_OF_T_OUT}
N -640 -410 -640 -100 {
lab=V_n}
N -100 -440 0 -440 {
lab=V_current_drive}
N -700 -440 -640 -440 {
lab=VDD}
N -700 -640 -700 -440 {
lab=VDD}
N -640 -640 -640 -470 {
lab=VDD}
N 210 -640 210 -420 {
lab=VDD}
N 250 -640 250 -390 {
lab=VDD}
N -760 -10 -660 -10 {
lab=VSS}
N -760 -10 -760 220 {
lab=VSS}
N -90 -10 -90 40 {
lab=VSS}
N -90 40 0 40 {
lab=VSS}
N -90 -110 -90 -80 {
lab=OT_out}
N -600 120 -540 120 {
lab=VSS}
N -640 220 -540 220 {
lab=VSS}
N 0 -80 -0 0 {
lab=VSS}
N -400 -510 -100 -510 {
lab=V_current_drive}
N -600 -440 -100 -440 {
lab=V_current_drive}
N 0 -480 0 -440 {
lab=V_current_drive}
N -480 -640 -440 -640 {
lab=VDD}
N 0 -440 0 -390 {
lab=V_current_drive}
N -700 -640 -640 -640 {
lab=VDD}
N -790 220 -760 220 {
lab=VSS}
N -0 0 0 40 {
lab=VSS}
N -160 -110 -90 -110 {
lab=OT_out}
N -250 -70 -250 50 {
lab=PROBE}
C {devices/ipin.sym} -960 -640 2 1 {name=p1 lab=VDD
}
C {devices/ipin.sym} -790 220 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 350 -300 0 0 {name=p5 lab=I_OF_T_OUT}
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -640 -50 1 0 {name=x1 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -600 -440 0 1 {name=x3 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -40 -510 0 0 {name=x4 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -40 -110 0 0 {name=x5 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -400 -510 0 1 {name=x6 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 170 -390 0 0 {name=x7[3:0]}
C {sky130_fd_pr/pnp_05v5.sym} -460 120 0 0 {name=Q3
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -620 120 0 1 {name=Q1
model=pnp_05v5_W3p40L3p40
m=10
spiceprefix=X
}
C {devices/lab_wire.sym} -90 -110 0 0 {name=p4 sig_type=std_logic lab=OT_out}
C {devices/lab_wire.sym} -240 -510 0 0 {name=p3 sig_type=std_logic lab=V_current_drive}
C {JNW_TR_SKY130A/JNWTR_CAPX1.sym} 780 1350 0 0 {name=x7 }
C {JNW_TR_SKY130A/JNWTR_CAPX1.sym} -90 -20 0 0 {name=x9 }
C {devices/lab_wire.sym} -360 -120 0 0 {name=p6 sig_type=std_logic lab=V_p}
C {devices/lab_wire.sym} -360 -100 0 0 {name=p7 sig_type=std_logic lab=V_n}
C {JNW_GR05_SKY130A/OTA_Manuel.sym} -180 -110 0 0 {name=x2}
C {devices/opin.sym} -250 50 0 0 {name=p8 lab=PROBE}
C {devices/lab_wire.sym} -640 70 0 0 {name=p10 sig_type=std_logic lab=V_bjt_n}
