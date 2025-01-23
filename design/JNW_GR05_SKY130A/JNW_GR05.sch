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
N -100 -630 -100 -600 {
lab=VDD_1V8}
N -100 -400 -100 -390 {
lab=VSS}
N 40 -630 40 -610 {
lab=VDD_1V8}
N -20 -430 -0 -430 {
lab=VSS}
N 40 -610 40 -600 {
lab=VDD_1V8}
N 40 -400 40 -340 {
lab=VSS}
N -100 -340 40 -340 {
lab=VSS}
N -160 -430 -160 -340 {
lab=VSS}
N -20 -430 -20 -340 {
lab=VSS}
N -140 -670 -100 -670 {
lab=VDD_1V8}
N -100 -670 -100 -640 {
lab=VDD_1V8}
N -100 -640 -100 -630 {
lab=VDD_1V8}
N 40 -670 40 -630 {
lab=VDD_1V8}
N -100 -670 40 -670 {
lab=VDD_1V8}
N -100 -600 -100 -580 {
lab=VDD_1V8}
N -100 -500 -100 -460 {
lab=#net1}
N -180 -540 -120 -540 {
lab=VSS}
N -180 -540 -180 -340 {
lab=VSS}
N 40 -600 40 -590 {
lab=VDD_1V8}
N 40 -590 40 -460 {
lab=VDD_1V8}
C {devices/ipin.sym} -140 -670 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -190 -340 0 0 {name=p2 lab=VSS}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -140 -430 0 0 {name=x1[2:0]}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 0 -430 0 0 {name=x2 }
C {JNW_TR_SKY130A/JNWTR_RPPO16.sym} -100 -580 1 0 {name=x3 }
