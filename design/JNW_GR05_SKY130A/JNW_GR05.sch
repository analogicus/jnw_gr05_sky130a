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
N -540 -460 -490 -460 {
lab=VSS}
N -840 -590 -840 -460 {
lab=VSS}
N -860 -630 -820 -630 {
lab=VDD_1V8}
N -860 -590 -840 -590 {
lab=VSS}
N -840 -460 -540 -460 {
lab=VSS}
N -490 -610 -490 -580 {
lab=V_cap}
N -490 -510 -490 -460 {
lab=VSS}
N -540 -540 -510 -540 {
lab=VSS}
N -540 -540 -540 -460 {
lab=VSS}
C {devices/ipin.sym} -860 -630 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -860 -590 0 0 {name=p2 lab=VSS}
C {JNW_GR05_SKY130A/T_to_I_Manuel.sym} -640 -610 0 0 {name=x2}
C {devices/lab_wire.sym} -490 -610 0 0 {name=p4 sig_type=std_logic lab=V_cap}
C {JNW_TR_SKY130A/JNWTR_RPPO2.sym} -490 -580 1 0 {name=x1 }
