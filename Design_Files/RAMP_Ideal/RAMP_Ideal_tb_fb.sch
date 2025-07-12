v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 390 -440 390 -420 {lab=VDD}
N 390 -360 390 -340 {lab=GND}
N 660 -440 660 -420 {lab=VDD}
N 660 -300 660 -280 {lab=GND}
N 490 -380 490 -360 {lab=#net1}
N 490 -300 490 -280 {lab=GND}
N 550 -340 600 -340 {lab=#net2}
N 550 -340 550 -230 {lab=#net2}
N 550 -230 830 -230 {lab=#net2}
N 890 -310 890 -230 {lab=#net2}
N 850 -380 890 -310 {lab=#net2}
N 720 -380 790 -380 {lab=#net2}
N 490 -380 600 -380 {lab=#net1}
N 830 -230 890 -230 {lab=#net2}
N 890 -170 890 -150 {lab=GND}
N 790 -380 850 -380 {lab=#net2}
C {chipathon/RAMP_Ideal/RAMP_Ideal_tb.sym} 380 -360 0 0 {name=x1}
C {devices/vsource.sym} 390 -390 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/gnd.sym} 390 -340 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 390 -440 0 0 {name=l2 lab=VDD}
C {devices/vdd.sym} 660 -440 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 660 -280 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 490 -330 0 0 {name=V2 value=1.65 savecurrent=false}
C {devices/gnd.sym} 490 -280 0 0 {name=l5 lab=GND}
C {devices/capa.sym} 890 -200 0 0 {name=C1
m=1
value=250p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 890 -150 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 0 -550 0 0 {name=NGSPICE only_toplevel=true 
value="
.option wnflag=1
.option savecurrents
.temp 27
.control
save all
write RAMP_Ideal_tb_fb.raw
set appendwrite 
op
write RAMP_Ideal_tb_fb.raw
**dc V1 0 1.65 1m
tran 1m 10m 1m
**tran 100n 5u 100n
**ac dec 20 1 1e10
.endc
"}
C {devices/code.sym} 0 -190 0 0 {name=SAVE_COMMANDS only_toplevel=false value="
.save @m.xm1.m0[gm]
.save @m.xm1.m0[id]
.save @m.xm1.m0[vth]
.save @m.xm1.m0[gds]
.save @m.xm1.m0[cgg]
.save @m.xm1.m0[cgs]
.save @m.xm1.m0[cgd]
.save @m.xm2.m0[gm]
.save @m.xm2.m0[id]
.save @m.xm2.m0[vth]
.save @m.xm2.m0[gds]
.save @m.xm2.m0[cgg]
.save @m.xm2.m0[cgs]
.save @m.xm2.m0[cgd]
.save @m.xm3.m0[gm]
.save @m.xm3.m0[id]
.save @m.xm3.m0[vth]
.save @m.xm3.m0[vds]
.save @m.xm3.m0[gds]
.save @m.xm3.m0[cgg]
.save @m.xm3.m0[cgs]
.save @m.xm3.m0[cgd]
.save @m.xm4.m0[gm]
.save @m.xm4.m0[id]
.save @m.xm4.m0[vth]
.save @m.xm4.m0[vds]
.save @m.xm4.m0[gds]
.save @m.xm4.m0[cgg]
.save @m.xm4.m0[cgs]
.save @m.xm4.m0[cgd]
"}
C {devices/launcher.sym} 70 -250 0 0 {name=h2
descr="load op & annotate" 
tclcommand="xschem raw_read $netlist_dir/Inv-Damp.raw; set show_hidden_texts 1; xschem annotate_op"}
C {devices/code.sym} 150 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.lib /foss/pdks/volare/gf180mcu/versions/0fe599b2afb6708d281543108caf8310912f54af/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include /foss/pdks/volare/gf180mcu/versions/0fe599b2afb6708d281543108caf8310912f54af/gf180mcuD/libs.tech/ngspice/design.ngspice 
.lib /foss/pdks/volare/gf180mcu/versions/0fe599b2afb6708d281543108caf8310912f54af/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_statistical

**.include $::180MCU_MODELS/design.ngspice
**.lib $::180MCU_MODELS/sm141064.ngspice typical
**.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
*.include $::180MCU_MODELS/design.ngspice
*.lib $::180MCU_MODELS/sm141064.ngspice typical

"}
C {devices/title.sym} 160 -30 0 0 {name=l7 author="Nithin Purushothama"}
C {devices/ngspice_probe.sym} 850 -380 0 0 {name=r1}
C {devices/ngspice_probe.sym} 490 -380 0 0 {name=r2}
