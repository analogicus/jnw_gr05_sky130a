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
N -140 -600 -80 -600 {
lab=VDD_1V8}
N -80 -600 -60 -600 {
lab=VDD_1V8}
N -30 -460 -0 -460 {
lab=I_OF_T_OUT}
N -30 -460 -30 -450 {
lab=I_OF_T_OUT}
N -30 -480 -30 -450 {
lab=I_OF_T_OUT}
N -30 -600 -30 -560 {
lab=VDD_1V8}
N -60 -600 -30 -600 {
lab=VDD_1V8}
N -70 -520 -70 -410 {
lab=VSS}
N -70 -410 -70 -340 {
lab=VSS}
N -70 -520 -50 -520 {
lab=VSS}
N -70 -410 -50 -410 {
lab=VSS}
N -90 -190 -30 -190 {
lab=VSS}
N -30 -220 -30 -190 {
lab=VSS}
N -30 -230 -30 -220 {
lab=VSS}
N -70 -270 -70 -190 {
lab=VSS}
N -70 -340 -70 -270 {
lab=VSS}
N -70 -270 -50 -270 {
lab=VSS}
N -30 -370 -30 -310 {
lab=#net1}
C {devices/ipin.sym} -140 -600 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -90 -190 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 0 -460 0 0 {name=p5 lab=I_OF_T_OUT}
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -30 -560 1 0 {name=x1 }
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -30 -450 1 0 {name=x2 }
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -30 -310 1 0 {name=x3 }
