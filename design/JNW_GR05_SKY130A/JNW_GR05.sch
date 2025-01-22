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
N -100 -490 -100 -460 {
lab=VDD_1V8}
N -100 -400 -100 -390 {
lab=VSS}
N 40 -490 40 -470 {
lab=VDD_1V8}
N -20 -430 -0 -430 {
lab=VSS}
N 40 -470 40 -460 {
lab=VDD_1V8}
N 40 -400 40 -340 {
lab=VSS}
N -100 -340 40 -340 {
lab=VSS}
N -160 -430 -160 -340 {
lab=VSS}
N -20 -430 -20 -340 {
lab=VSS}
N -140 -530 -100 -530 {
lab=VDD_1V8}
N -100 -530 -100 -500 {
lab=VDD_1V8}
N -100 -500 -100 -490 {
lab=VDD_1V8}
N 40 -530 40 -490 {
lab=VDD_1V8}
N -100 -530 40 -530 {
lab=VDD_1V8}
C {devices/ipin.sym} -140 -530 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -190 -340 0 0 {name=p2 lab=VSS}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} -140 -430 0 0 {name=x1[2:0]}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 0 -430 0 0 {name=x2 }
