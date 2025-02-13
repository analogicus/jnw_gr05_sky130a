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
} -1500 -1380 0 0 0.6 0.6 {}
T {big diode
} -1250 -260 0 0 0.4 0.4 {}
T {small diode
} -880 -270 0 0 0.4 0.4 {}
N -1110 -310 -1110 -250 {
lab=V_bjt_n}
N -1010 -220 -950 -220 {
lab=VSS}
N -1110 -190 -1110 -120 {
lab=VSS}
N -910 -190 -910 -120 {
lab=VSS}
N -1010 -220 -1010 -120 {
lab=VSS}
N -1010 -120 -910 -120 {
lab=VSS}
N -1230 -120 -1110 -120 {
lab=VSS}
N -1110 -440 -1110 -390 {
lab=V_n}
N -910 -120 -830 -120 {
lab=VSS}
N -1110 -980 -950 -980 {
lab=VDD_1V8}
N -470 -450 -420 -450 {
lab=OTA_out}
N -380 -450 -340 -450 {
lab=VSS}
N -910 -980 -470 -980 {
lab=VDD_1V8}
N -470 -980 -430 -980 {
lab=VDD_1V8}
N -380 -730 -380 -480 {
lab=V_current_drive}
N -470 -980 -470 -880 {
lab=VDD_1V8}
N -470 -850 -430 -850 {
lab=VDD_1V8}
N -430 -980 -430 -850 {
lab=VDD_1V8}
N -570 -850 -570 -780 {
lab=V_current_drive}
N -1260 -980 -1260 -480 {
lab=VDD_1V8}
N -1430 -980 -1170 -980 {
lab=VDD_1V8}
N -910 -980 -910 -880 {
lab=VDD_1V8}
N -950 -980 -950 -850 {
lab=VDD_1V8}
N -570 -850 -510 -850 {
lab=V_current_drive}
N -950 -850 -910 -850 {
lab=VDD_1V8}
N -260 -700 -260 -640 {
lab=sys_out}
N -430 -980 -260 -980 {
lab=VDD_1V8}
N -260 -730 -220 -730 {
lab=VDD_1V8}
N -260 -980 -220 -980 {
lab=VDD_1V8}
N -470 -730 -300 -730 {
lab=V_current_drive}
N -1110 -750 -1110 -440 {
lab=V_n}
N -570 -780 -470 -780 {
lab=V_current_drive}
N -1170 -780 -1110 -780 {
lab=VDD_1V8}
N -1170 -980 -1170 -780 {
lab=VDD_1V8}
N -1110 -980 -1110 -810 {
lab=VDD_1V8}
N -260 -980 -260 -760 {
lab=VDD_1V8}
N -220 -980 -220 -730 {
lab=VDD_1V8}
N -1230 -350 -1130 -350 {
lab=VSS}
N -1350 -350 -1350 -120 {
lab=VSS}
N -470 -350 -470 -300 {
lab=VSS}
N -470 -450 -470 -420 {
lab=OTA_out}
N -1070 -220 -1010 -220 {
lab=VSS}
N -1110 -120 -1010 -120 {
lab=VSS}
N -380 -420 -380 -340 {
lab=I2}
N -870 -850 -570 -850 {
lab=V_current_drive}
N -1070 -780 -570 -780 {
lab=V_current_drive}
N -470 -820 -470 -780 {
lab=V_current_drive}
N -950 -980 -910 -980 {
lab=VDD_1V8}
N -470 -780 -470 -730 {
lab=V_current_drive}
N -1170 -980 -1110 -980 {
lab=VDD_1V8}
N -1260 -120 -1230 -120 {
lab=VSS}
N -380 -340 -380 -300 {
lab=I2}
N -650 -410 -650 -290 {
lab=I0}
N -830 -460 -800 -460 {
lab=V_p}
N -910 -820 -910 -250 {
lab=V_p}
N -830 -440 -800 -440 {
lab=V_n}
N -1110 -440 -830 -440 {
lab=V_n}
N -910 -460 -830 -460 {
lab=V_p}
N -210 -370 -210 -320 {
lab=I1}
N -340 -410 -230 -410 {
lab=VSS}
N -340 -450 -340 -410 {
lab=VSS}
N -340 -410 -340 -120 {
lab=VSS}
N -830 -120 -340 -120 {
lab=VSS}
N -470 -300 -470 -120 {
lab=VSS}
N -1440 -120 -1260 -120 {lab=VSS}
N -1350 -350 -1230 -350 {lab=VSS}
N -1260 -480 -800 -480 {lab=VDD_1V8}
N -560 -450 -470 -450 {lab=OTA_out}
N -800 -480 -730 -480 {lab=VDD_1V8}
N -800 -460 -730 -460 {lab=V_p}
N -800 -440 -730 -440 {lab=V_n}
N -760 -420 -740 -420 {lab=VSS}
N -760 -420 -760 -120 {lab=VSS}
N -740 -420 -730 -420 {lab=VSS}
N -210 -500 -210 -450 {lab=sys_out}
N -210 -640 -210 -500 {lab=sys_out}
N -260 -640 -210 -640 {lab=sys_out}
N -210 -320 -210 -300 {lab=I1}
C {devices/ipin.sym} -1430 -980 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -210 -300 0 1 {name=p6 lab=I1
}
C {devices/ipin.sym} -650 -290 0 1 {name=p3 lab=I0
}
C {devices/ipin.sym} -1440 -120 0 0 {name=p8 lab=VSS}
C {JNW_TR_SKY130A/JNWTR_RPPO16.sym} -1110 -390 1 0 {name=x2[3:0]}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -1070 -780 0 1 {name=x5 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -510 -850 0 0 {name=x6[1:0]}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} -420 -450 0 0 {name=x1[1:0]}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -870 -850 0 1 {name=x8[4:0]}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -300 -730 0 0 {name=x7[9:0]}
C {sky130_fd_pr/pnp_05v5.sym} -930 -220 0 0 {name=Q3
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} -1090 -220 0 1 {name=Q1
model=pnp_05v5_W3p40L3p40
m=10
spiceprefix=X
}
C {devices/lab_wire.sym} -500 -450 0 0 {name=p10 sig_type=std_logic lab=OTA_out}
C {devices/lab_wire.sym} -710 -850 0 0 {name=p11 sig_type=std_logic lab=V_current_drive}
C {JNW_TR_SKY130A/JNWTR_CAPX1.sym} -470 -360 0 0 {name=x10 }
C {devices/lab_wire.sym} -830 -460 0 0 {name=p12 sig_type=std_logic lab=V_p}
C {devices/lab_wire.sym} -830 -440 0 0 {name=p13 sig_type=std_logic lab=V_n}
C {JNW_GR05_SKY130A/OTA_Manuel.sym} -580 -450 0 0 {name=x11}
C {devices/lab_wire.sym} -1110 -270 0 0 {name=p15 sig_type=std_logic lab=V_bjt_n}
C {devices/ipin.sym} -380 -300 0 1 {name=p2 lab=I2
}
C {JNW_TR_SKY130A/JNWTR_RPPO16.sym} -210 -450 1 0 {name=x3[15:0]}
C {devices/lab_wire.sym} -210 -500 0 0 {name=p4 sig_type=std_logic lab=sys_out}
