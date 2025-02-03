v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -520 120 -470 120 {
lab=VSS}
N -640 30 -640 90 {
lab=#net1}
N -600 120 -520 120 {
lab=VSS}
N -640 150 -640 220 {
lab=VSS}
N -440 150 -440 220 {
lab=VSS}
N -540 120 -540 220 {
lab=VSS}
N -640 220 -440 220 {
lab=VSS}
N -640 -80 -640 -50 {
lab=#net2}
N -790 220 -640 220 {
lab=VSS}
N -440 -60 -440 90 {
lab=#net3}
N -640 -100 -330 -100 {
lab=#net2}
N -640 -100 -640 -80 {
lab=#net2}
N -440 -120 -330 -120 {
lab=#net3}
N -440 -120 -440 -60 {
lab=#net3}
N -360 -80 -330 -80 {
lab=VSS}
N -360 -80 -360 220 {
lab=VSS}
N -380 220 -360 220 {
lab=VSS}
N -440 220 -380 220 {
lab=VSS}
N -540 -140 -330 -140 {
lab=VDD}
N -840 -640 -600 -640 {
lab=VDD}
N -160 -110 -40 -110 {
lab=#net4}
N -360 220 0 220 {
lab=VSS}
N 0 -80 0 220 {
lab=VSS}
N 0 -110 40 -110 {
lab=VSS}
N 40 -110 40 -0 {
lab=VSS}
N -0 0 40 -0 {
lab=VSS}
N -600 -640 0 -640 {
lab=VDD}
N 30 -640 40 -640 {
lab=VDD}
N 0 -640 30 -640 {
lab=VDD}
N 0 -480 0 -140 {
lab=#net5}
N 0 -640 -0 -540 {
lab=VDD}
N -0 -510 40 -510 {
lab=VDD}
N 40 -640 40 -510 {
lab=VDD}
N -440 -480 -440 -120 {
lab=#net3}
N -100 -510 -100 -440 {
lab=#net5}
N -80 -440 0 -440 {
lab=#net5}
N -960 -140 -540 -140 {
lab=VDD}
N -960 -640 -960 -140 {
lab=VDD}
N -960 -640 -870 -640 {
lab=VDD}
N -870 -640 -840 -640 {
lab=VDD}
N -440 -640 -440 -540 {
lab=VDD}
N -480 -640 -480 -510 {
lab=VDD}
N -400 -510 -40 -510 {
lab=#net5}
N -480 -510 -440 -510 {
lab=VDD}
N 210 -410 210 -370 {
lab=#net6}
N 40 -640 120 -640 {
lab=VDD}
N 210 -570 210 -470 {
lab=VDD}
N 120 -640 200 -640 {
lab=VDD}
N 210 -440 250 -440 {
lab=VDD}
N 250 -570 250 -440 {
lab=VDD}
N 200 -640 240 -640 {
lab=VDD}
N 0 -440 120 -440 {
lab=#net5}
N 140 -440 170 -440 {
lab=#net5}
N 210 -370 210 -350 {
lab=#net6}
N 210 -350 350 -350 {
lab=#net6}
N -640 -410 -640 -100 {
lab=#net2}
N -600 -440 -80 -440 {
lab=#net5}
N -700 -440 -640 -440 {
lab=VDD}
N -700 -640 -700 -440 {
lab=VDD}
N -640 -640 -640 -470 {
lab=VDD}
N 120 -440 140 -440 {
lab=#net5}
N 210 -640 210 -570 {
lab=VDD}
N 240 -640 250 -640 {
lab=VDD}
N 250 -640 250 -620 {
lab=VDD}
N 250 -620 250 -570 {
lab=VDD}
C {devices/ipin.sym} -960 -640 2 1 {name=p1 lab=VDD
}
C {devices/ipin.sym} -790 220 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 350 -350 0 0 {name=p5 lab=I_OF_T_OUT}
C {sky130_fd_pr/pnp_05v5.sym} -620 120 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -460 120 0 0 {name=Q1[7:0]
model=pnp_05v5_W3p40L3p40
spiceprefix=X
}
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -640 -50 1 0 {name=x1 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_BIAS_SKY130A/JNWBIAS_OTA.sym} -180 -110 0 0 {name=x2}
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -600 -440 0 1 {name=x3 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -40 -510 0 0 {name=x4 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -40 -110 0 0 {name=x5 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -400 -510 0 1 {name=x6 }
C {/home/manuel/Documents/NTNU/01_Advanced_Integrated_Circuits/aicex2025/ip/jnw_bias_sky130a/design/JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 170 -440 0 0 {name=x7 }
