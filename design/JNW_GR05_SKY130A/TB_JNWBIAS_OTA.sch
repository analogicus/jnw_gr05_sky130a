v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 380 -620 1180 -220 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=8
unity=1
x1=0
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=1
rawfile=$netlist_dir/TB_JNWBIAS_OTA.raw
sim_type=ac
autoload=1
color=4
node=vo_mag
x2=9
y1=0
y2=0.01}
B 2 380 -220 1180 180 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=0
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=1
logy=0
rawfile=$netlist_dir/TB_JNWBIAS_OTA.raw
sim_type=ac
autoload=1
color=4
node=ph(vo)
x2=9
y1=-2
y2=4}
N -250 0 -250 20 {
lab=VDD_1V8}
N -250 80 -250 120 {
lab=0}
N -250 120 -130 120 {
lab=0}
N -250 -120 -0 -120 {
lab=VDD_1V8}
N -250 -120 -250 0 {
lab=VDD_1V8}
N 0 -60 0 120 {
lab=0}
N -130 120 0 120 {
lab=0}
N -150 -100 0 -100 {
lab=#net1}
N -50 -80 -0 -80 {
lab=#net2}
N -50 -80 -50 -40 {
lab=#net2}
N -150 -40 -50 -40 {
lab=#net2}
N 170 -90 210 -90 {
lab=VO}
N -110 -40 -110 0 {lab=#net2}
N -110 60 -110 120 {lab=0}
C {devices/vsource.sym} -250 50 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -190 120 0 0 {name=l1 lab=0}
C {devices/simulator_commands.sym} 120 160 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.include tb_jnwbias_ota.cir
"}
C {devices/lab_wire.sym} -120 -120 0 0 {name=p1 sig_type=std_logic lab=VDD_1V8}
C {devices/vsource.sym} -150 -70 0 0 {name=V2 value="dc 0 ac 1" savecurrent=false}
C {devices/lab_wire.sym} 210 -90 0 0 {name=p2 sig_type=std_logic lab=VO}
C {devices/launcher.sym} 20 -560 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/TB_JNWBIAS_OTA.raw tran"
}
C {devices/vsource.sym} -110 30 0 0 {name=V3 value="dc 0" savecurrent=false}
C {JNW_GR05_SKY130A/OTA_Manuel.sym} 150 -90 0 0 {name=x2}
