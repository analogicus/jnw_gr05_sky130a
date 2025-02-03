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
N -140 -380 -110 -380 {
lab=VDD_1V8}
N -170 -320 -140 -320 {
lab=#net1}
C {devices/ipin.sym} -140 -380 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -210 -320 0 0 {name=p2 lab=VSS}
C {JNW_GR05_SKY130A/T_to_I_Manuel.sym} 60 -350 0 0 {}
