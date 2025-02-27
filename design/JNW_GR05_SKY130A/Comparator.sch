v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1000 -550 1000 -450 {lab=Y}
N 800 -550 800 -450 {lab=X}
N 800 -770 800 -610 {lab=Vout1}
N 1000 -770 1000 -610 {lab=Vout2}
N 800 -390 1000 -390 {lab=#net1}
N 840 -580 860 -580 {lab=Vout2}
N 860 -580 960 -640 {lab=Vout2}
N 960 -640 1000 -640 {lab=Vout2}
N 940 -580 960 -580 {lab=Vout1}
N 840 -640 940 -580 {lab=Vout1}
N 800 -640 840 -640 {lab=Vout1}
N 840 -800 860 -800 {lab=Vout2}
N 860 -800 960 -740 {lab=Vout2}
N 960 -730 1000 -730 {lab=Vout2}
N 940 -800 960 -800 {lab=Vout1}
N 840 -740 940 -800 {lab=Vout1}
N 800 -730 840 -730 {lab=Vout1}
N 620 -740 800 -740 {lab=Vout1}
N 620 -770 620 -740 {lab=Vout1}
N 1000 -740 1180 -740 {lab=Vout2}
N 1180 -770 1180 -740 {lab=Vout2}
N 1000 -520 1360 -520 {lab=Y}
N 1360 -770 1360 -520 {lab=Y}
N 440 -770 440 -520 {lab=X}
N 440 -520 800 -520 {lab=X}
N 440 -850 440 -830 {lab=VDD}
N 440 -850 1360 -850 {lab=VDD}
N 1360 -850 1360 -840 {lab=VDD}
N 1360 -840 1360 -830 {lab=VDD}
N 1180 -850 1180 -830 {lab=VDD}
N 1000 -850 1000 -830 {lab=VDD}
N 800 -850 800 -830 {lab=VDD}
N 620 -850 620 -830 {lab=VDD}
N 620 -800 660 -800 {lab=VDD}
N 660 -850 660 -800 {lab=VDD}
N 440 -800 480 -800 {lab=VDD}
N 480 -850 480 -800 {lab=VDD}
N 760 -800 800 -800 {lab=VDD}
N 760 -850 760 -800 {lab=VDD}
N 1000 -800 1040 -800 {lab=VDD}
N 1040 -850 1040 -800 {lab=VDD}
N 1140 -800 1180 -800 {lab=VDD}
N 1140 -850 1140 -800 {lab=VDD}
N 1320 -800 1360 -800 {lab=VDD}
N 1320 -850 1320 -800 {lab=VDD}
N 900 -390 900 -350 {lab=#net1}
N 900 -290 900 -260 {lab=#net2}
N 900 -320 940 -320 {lab=#net2}
N 940 -320 940 -260 {lab=#net2}
N 900 -260 940 -260 {lab=#net2}
N 910 -260 910 -240 {lab=#net2}
N 900 -890 900 -850 {lab=VDD}
N 800 -690 850 -690 {lab=Vout1}
N 1000 -690 1050 -690 {lab=Vout2}
N 720 -420 760 -420 {lab=Vin1}
N 1040 -420 1080 -420 {lab=Vin2}
N 560 -800 580 -800 {lab=CLK}
N 560 -800 560 -720 {lab=CLK}
N 1220 -800 1240 -800 {lab=CLK}
N 1240 -800 1240 -720 {lab=CLK}
N 1400 -800 1420 -800 {lab=CLK}
N 1420 -800 1420 -720 {lab=CLK}
N 480 -720 1420 -720 {lab=CLK}
N 380 -800 400 -800 {lab=CLK}
N 380 -800 380 -720 {lab=CLK}
N 380 -720 480 -720 {lab=CLK}
N 380 -720 380 -320 {lab=CLK}
N 340 -320 380 -320 {lab=CLK}
N 1000 -580 1160 -580 {lab=#net2}
N 1160 -580 1160 -260 {lab=#net2}
N 940 -260 1160 -260 {lab=#net2}
N 640 -580 800 -580 {lab=#net2}
N 640 -580 640 -260 {lab=#net2}
N 640 -260 900 -260 {lab=#net2}
N 800 -420 820 -420 {lab=#net2}
N 820 -420 820 -260 {lab=#net2}
N 980 -420 1000 -420 {lab=#net2}
N 980 -420 980 -260 {lab=#net2}
N 380 -320 860 -320 {lab=CLK}
N 840 -740 840 -730 {lab=Vout1}
N 960 -740 960 -730 {lab=Vout2}
C {devices/ipin.sym} 900 -890 2 1 {name=p1 lab=VDD
}
C {devices/ipin.sym} 910 -240 2 1 {name=p2 lab=VSS

}
C {devices/opin.sym} 850 -690 2 1 {name=p3 lab=Vout1
}
C {devices/ipin.sym} 720 -420 2 1 {name=p4 lab=Vin1

}
C {devices/ipin.sym} 1080 -420 2 0 {name=p5 lab=Vin2

}
C {devices/ipin.sym} 340 -320 2 1 {name=p6 lab=CLK

}
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 760 -420 0 0 {name=x1 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 1040 -420 0 1 {name=x2 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 960 -800 0 0 {name=x3 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 960 -580 0 0 {name=x4 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C5F0.sym} 840 -580 0 1 {name=x5 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 580 -800 0 0 {name=x6 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 400 -800 0 0 {name=x7 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 1220 -800 0 1 {name=x8 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 1400 -800 0 1 {name=x9 }
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 840 -800 0 1 {name=x10 }
C {JNW_ATR_SKY130A/JNWATR_NCH_4C1F2.sym} 860 -320 0 0 {name=x11 }
C {devices/opin.sym} 1050 -690 2 1 {name=p7 lab=Vout2
}
C {devices/lab_pin.sym} 800 -500 0 0 {name=p8 sig_type=std_logic lab=X}
C {devices/lab_pin.sym} 1000 -500 0 0 {name=p9 sig_type=std_logic lab=Y}
