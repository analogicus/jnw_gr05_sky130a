v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 390 -840 1190 -440 {flags=graph

y2=88.02
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1


divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=re(lg_mag)
color=5
dataset=-1
unitx=1
logx=1
logy=0
sim_type=ac

y1=-21.88
autoload=0
rawfile=/Users/wulff/data/2023/aicex/ip/jnw_bias_sky130a/design/JNW_BIAS_SKY130A/simulation/TB_JNW_BIAS_IBS_LSTB.raw
x1=-1.4999885e+08
x2=8.5000015e+08}
B 2 390 -420 1190 -20 {flags=graph


ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1

x2=8.5000015e+08
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=1
logy=0
sim_type=ac
x1=-1.4999885e+08
y1=0
y2=180
color=4
node=re(lg_phase)
autoload=0
rawfile=/Users/wulff/data/2023/aicex/ip/jnw_bias_sky130a/design/JNW_BIAS_SKY130A/simulation/TB_JNW_BIAS_IBS_LSTB.raw}
N 140 -80 170 -80 {
lab=LPI}
N 140 -60 170 -60 {
lab=LPO}
N -200 -100 -160 -100 {
lab=#net1}
N -200 -130 -200 -100 {
lab=#net1}
N -280 -130 -200 -130 {
lab=#net1}
N -280 -130 -280 -110 {
lab=#net1}
N -280 -50 -280 -10 {
lab=0}
N -280 -10 -160 -10 {
lab=0}
N -160 -80 -160 -10 {
lab=0}
N -160 -30 290 -30 {
lab=0}
N 290 -100 290 -90 {
lab=IBP_1U[0]}
N -170 -80 -160 -80 {lab=0}
N 140 -100 180 -100 {lab=IBP_1U[3:0]}
C {JNW_BIAS_SKY130A/JNW_BIAS_IBS.sym} -10 -80 0 0 {name=x1}
C {devices/vsource.sym} -280 -80 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -220 -10 0 0 {name=l1 lab=0}
C {devices/vsource.sym} 290 -60 0 0 {name=V2 value=0.5 savecurrent=false}
C {devices/lab_wire.sym} 150 -80 0 1 {name=p1 sig_type=std_logic lab=LPI}
C {devices/code_shown.sym} -290 -910 0 0 {name=s1 only_toplevel=false value="

.lib "../../../tech/ngspice/corners.spi" Ktt
.lib "../../../tech/ngspice/temperature.spi" Tt
.lib "../../../tech/ngspice/supply.spi" Vl

.include ../../../../cpdk/ngspice/tian_subckt.lib
X999 LPI LPO loopgainprobe

.include ../../../../cpdk/ngspice/ideal_circuits.spi


.option savecurrents
.save all
.control
optran 0 0 0 10n 20u 0
op
write TB_JNW_BIAS_IBS_LSTB_OP.raw

* Set voltage AC to 1
ac dec 50 100 1G

* Set Current to 1
alter i.X999.Ii acmag=1
alter v.X999.Vi acmag=0
ac dec 50 100 1G

let lg_mag = db(tian_loop())
let lg_phase = 180*cph(tian_loop())/pi

write TB_JNW_BIAS_IBS_LSTB.raw

meas ac gm_db find lg_mag when lg_phase=0
meas ac pm_deg find lg_phase when lg_mag=0
meas ac f3db when lg_phase=135
meas ac ug when lg_mag=0
meas ac lf_gain find lg_mag at=1k
write \{cicname\}_meas.raw
exit
.endc
.end

"}
C {devices/lab_wire.sym} 150 -100 0 1 {name=p3 sig_type=std_logic lab=IBP_1U[3:0]}
C {devices/lab_wire.sym} 290 -100 0 1 {name=p4 sig_type=std_logic lab=IBP_1U[0]}
C {devices/lab_wire.sym} 150 -60 0 1 {name=p2 sig_type=std_logic lab=LPO}
C {devices/launcher.sym} 460 -890 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/TB_JNW_BIAS_IBS_LSTB.raw ac"
}
