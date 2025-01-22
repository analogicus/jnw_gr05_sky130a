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
N -560 -440 -540 -440 {
lab=VDD_1V8}
N -100 -430 -80 -430 {
lab=VSS}
N -100 -400 -80 -400 {
lab=VSS}
N -80 -430 -80 -400 {
lab=VSS}
N -190 -340 -180 -340 {
lab=VSS}
N -180 -340 -100 -340 {
lab=VSS}
N -100 -390 -100 -340 {
lab=VSS}
N -160 -430 -140 -430 {
lab=VSS}
N -100 -490 -100 -460 {
lab=#net1}
N -100 -400 -100 -390 {
lab=VSS}
N 40 -490 40 -470 {
lab=#net2}
N -20 -430 -0 -430 {
lab=VSS}
N 40 -470 40 -460 {
lab=#net2}
N 40 -400 40 -340 {
lab=VSS}
N -100 -340 40 -340 {
lab=VSS}
N -160 -430 -160 -340 {
lab=VSS}
N -20 -430 -20 -340 {
lab=VSS}
C {devices/ipin.sym} -560 -840 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -190 -340 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -560 -440 0 0 {name=p3 lab=PWRUP_1V8}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -140 -430 0 0 {name=x1[2:0]}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 0 -430 0 0 {name=x2 }
C {JNW_TR_SKY130A/JNWTR_CAPX4.sym} 190 -630 0 0 {name=x4 }
C {JNW_TR_SKY130A/JNWTR_RES2.sym} 0 -880 0 0 {name=x3 }
