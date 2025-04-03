v {xschem version=3.4.5 file_version=1.2
}
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
N -840 -590 -820 -590 {
lab=VSS}
N -600 -610 -490 -610 {
lab=V_cap}
N -840 -590 -840 -460 {
lab=VSS}
N -860 -590 -840 -590 {
lab=VSS}
N -690 -650 -650 -650 {
lab=#net1}
N -780 -530 -750 -530 {
lab=VSS}
N -780 -530 -780 -460 {
lab=VSS}
N -840 -460 -780 -460 {
lab=VSS}
N -730 -710 -730 -680 {
lab=VDD_1V8}
N -840 -710 -730 -710 {
lab=VDD_1V8}
N -610 -710 -610 -680 {
lab=VDD_1V8}
N -730 -710 -610 -710 {
lab=VDD_1V8}
N -610 -710 -570 -710 {
lab=VDD_1V8}
N -570 -710 -570 -650 {
lab=VDD_1V8}
N -610 -650 -570 -650 {
lab=VDD_1V8}
N -800 -650 -730 -650 {
lab=VDD_1V8}
N -800 -710 -800 -650 {
lab=VDD_1V8}
N -730 -620 -730 -570 {
lab=#net1}
N -730 -590 -670 -590 {
lab=#net1}
N -670 -650 -670 -590 {
lab=#net1}
N -610 -610 -600 -610 {
lab=V_cap}
N -610 -620 -610 -610 {
lab=V_cap}
N -730 -470 -730 -460 {
lab=V_sense}
N -730 -490 -730 -470 {
lab=V_sense}
C {devices/ipin.sym} -840 -710 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -860 -590 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} -490 -610 0 0 {name=p4 sig_type=std_logic lab=V_cap}
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -730 -570 1 0 {name=x1 }
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -740 -50 1 0 {name=x12}
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -800 -70 1 0 {name=x2}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -650 -650 0 0 {name=x3 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -690 -650 0 1 {name=x4 }
C {devices/ipin.sym} -730 -460 0 0 {name=p6 lab=V_sense}
