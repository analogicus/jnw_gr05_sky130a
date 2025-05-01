v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Shift-I          Insert new component
Shift-Z         Zoom in
Ctrl-Z           Zoom out
R                 Rotate
F                 Full view

Manual: https://xschem.sourceforge.io/stefan/xschem_man/xschem_man.pdf
} -2355 -1795 0 0 0.6 0.6 {}
T {big diode
} -1140 -180 0 0 0.4 0.4 {}
T {small diode
} -770 -190 0 0 0.4 0.4 {}
T {Shift-I          Insert new component
Shift-Z         Zoom in
Ctrl-Z           Zoom out
R                 Rotate
F                 Full view

Manual: https://xschem.sourceforge.io/stefan/xschem_man/xschem_man.pdf
} -2245 -1715 0 0 0.6 0.6 {}
T {<-- I_left = I_right -->} -1000 -560 0 0 0.345 0.345 {}
N -1000 -230 -1000 -170 {
lab=V_bjt_n}
N -900 -140 -840 -140 {
lab=VSS}
N -1000 -110 -1000 -40 {
lab=VSS}
N -800 -110 -800 -40 {
lab=VSS}
N -900 -140 -900 -40 {
lab=VSS}
N -900 -40 -800 -40 {
lab=VSS}
N -1120 -40 -1000 -40 {
lab=VSS}
N -1000 -360 -1000 -310 {
lab=V_n}
N -800 -40 -720 -40 {
lab=VSS}
N -360 -370 -310 -370 {
lab=OTA_out}
N -270 -370 -230 -370 {
lab=VSS}
N -270 -650 -270 -400 {
lab=V_current_drive}
N -1120 -270 -1020 -270 {
lab=VSS}
N -360 -270 -360 -220 {
lab=VSS}
N -360 -370 -360 -340 {
lab=OTA_out}
N -960 -140 -900 -140 {
lab=VSS}
N -1000 -40 -900 -40 {
lab=VSS}
N -270 -340 -270 -260 {
lab=VSS}
N -1150 -40 -1120 -40 {
lab=VSS}
N -720 -380 -690 -380 {
lab=V_p}
N -720 -360 -690 -360 {
lab=V_n}
N -1000 -360 -720 -360 {
lab=V_n}
N -800 -380 -720 -380 {
lab=V_p}
N -720 -40 -230 -40 {
lab=VSS}
N -360 -220 -360 -40 {
lab=VSS}
N -1150 -400 -690 -400 {lab=VDD_1V8}
N -450 -370 -360 -370 {lab=OTA_out}
N -690 -400 -620 -400 {lab=VDD_1V8}
N -690 -380 -620 -380 {lab=V_p}
N -690 -360 -620 -360 {lab=V_n}
N -650 -340 -630 -340 {lab=VSS}
N -650 -340 -650 -40 {lab=VSS}
N -630 -340 -620 -340 {lab=VSS}
N -1000 -460 -1000 -360 {lab=V_n}
N -1000 -670 -1000 -460 {lab=V_n}
N -270 -260 -270 -40 {lab=VSS}
N -1000 -900 -840 -900 {
lab=VDD_1V8}
N -800 -900 -360 -900 {
lab=VDD_1V8}
N -360 -900 -320 -900 {
lab=VDD_1V8}
N -360 -900 -360 -800 {
lab=VDD_1V8}
N -360 -770 -320 -770 {
lab=VDD_1V8}
N -320 -900 -320 -770 {
lab=VDD_1V8}
N -460 -770 -460 -700 {
lab=V_current_drive}
N -1150 -900 -1150 -400 {
lab=VDD_1V8}
N -800 -900 -800 -800 {
lab=VDD_1V8}
N -840 -900 -840 -770 {
lab=VDD_1V8}
N -460 -770 -400 -770 {
lab=V_current_drive}
N -840 -770 -800 -770 {
lab=VDD_1V8}
N -460 -700 -360 -700 {
lab=V_current_drive}
N -1060 -700 -1000 -700 {
lab=VDD_1V8}
N -1060 -900 -1060 -700 {
lab=VDD_1V8}
N -1000 -900 -1000 -730 {
lab=VDD_1V8}
N -760 -770 -460 -770 {
lab=V_current_drive}
N -960 -700 -460 -700 {
lab=V_current_drive}
N -360 -740 -360 -700 {
lab=V_current_drive}
N -840 -900 -800 -900 {
lab=VDD_1V8}
N -360 -700 -360 -650 {
lab=V_current_drive}
N -1060 -900 -1000 -900 {
lab=VDD_1V8}
N -800 -740 -800 -170 {
lab=V_p}
N -1200 -900 -1060 -900 {lab=VDD_1V8}
N -1200 -40 -1150 -40 {lab=VSS}
N -1180 -270 -1180 -40 {lab=VSS}
N -1180 -270 -1120 -270 {lab=VSS}
N -220 -370 -220 -280 {lab=VSS}
N -230 -370 -220 -370 {lab=VSS}
N -220 -280 -220 -40 {lab=VSS}
N -360 -650 -270 -650 {lab=V_current_drive}
N -230 -40 -220 -40 {lab=VSS}
C {devices/ipin.sym} -1200 -900 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -1200 -40 0 0 {name=p8 lab=VSS}
C {sky130_fd_pr/pnp_05v5.sym} -820 -140 0 0 {name=Q3
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -980 -140 0 1 {name=Q1
model=pnp_05v5_W3p40L3p40
m=5
spiceprefix=X
}
C {devices/lab_wire.sym} -390 -370 0 0 {name=p10 sig_type=std_logic lab=OTA_out}
C {devices/lab_wire.sym} -720 -380 0 0 {name=p12 sig_type=std_logic lab=V_p}
C {devices/lab_wire.sym} -720 -360 0 0 {name=p13 sig_type=std_logic lab=V_n}
C {JNW_GR05_SKY130A/OTA_Manuel.sym} -470 -370 0 0 {name=x11}
C {devices/lab_wire.sym} -1000 -190 0 0 {name=p15 sig_type=std_logic lab=V_bjt_n}
C {JNW_ATR_SKY130A/JNWATR_NCH_2C1F2.sym} -310 -370 0 0 {name=x2 }
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -1000 -310 1 0 {name=x5}
C {JNW_TR_SKY130A/JNWTR_CAPX1.sym} -360 -280 0 0 {name=x12[0:1]}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -960 -700 0 1 {name=x9[1:0]}
C {JNW_ATR_SKY130A/JNWATR_PCH_2C5F0.sym} -400 -770 0 0 {name=x6[1:0]}
C {devices/lab_wire.sym} -610 -770 0 0 {name=p11 sig_type=std_logic lab=V_current_drive}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -760 -770 0 1 {name=x3}
