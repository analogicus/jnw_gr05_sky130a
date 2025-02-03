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
T {Connnect Source and Gate to make it a diode
} -350 -320 0 0 0.6 0.6 {}
N -120 -580 -60 -580 {
lab=VDD_1V8}
N -60 -580 -60 -540 {
lab=VDD_1V8}
N -60 -400 -60 -340 {
lab=VSS}
N -100 -340 -60 -340 {
lab=VSS}
N -170 -460 -140 -460 {
lab=I_BIAS_T2I}
N 40 -460 100 -460 {
lab=I_OF_T_OUT}
N -60 -340 160 -340 {
lab=VSS}
N 160 -360 160 -340 {
lab=VSS}
N 140 -400 140 -360 {
lab=VSS}
N 140 -360 140 -340 {
lab=VSS}
N 100 -460 160 -460 {
lab=I_OF_T_OUT}
N 160 -460 160 -440 {
lab=I_OF_T_OUT}
N 160 -460 160 -440 {
lab=I_OF_T_OUT}
N 160 -460 270 -460 {
lab=I_OF_T_OUT}
N -180 -460 -170 -460 {
lab=I_BIAS_T2I}
N -190 -460 -180 -460 {
lab=I_BIAS_T2I}
C {devices/ipin.sym} -120 -580 0 0 {name=p1 lab=VDD_1V8}
C {JNW_GR05_SKY130A/T_to_I_Manuel.sym} -60 -460 0 0 {name=x1}
C {devices/ipin.sym} -100 -340 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -190 -460 0 0 {name=p3 lab=I_BIAS_T2I}
C {devices/opin.sym} 270 -460 0 0 {name=p5 lab=I_OF_T_OUT}
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} 160 -440 1 0 {name=x2 }
