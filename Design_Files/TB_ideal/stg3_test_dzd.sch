v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Stage-3 Ring Amplifier design Testbench} 160 -620 0 0 1 1 {}
T {Load Cap: 250pF
BW: 50MHz
Gm3: 400uS
A1A2: 200
VDD: 3.3V} 0 -750 0 0 0.4 0.4 {}
N 510 -240 570 -240 {lab=#net1}
N 510 -320 510 -240 {lab=#net1}
N 510 -350 610 -350 {lab=#net1}
N 610 -240 610 -210 {lab=GND}
N 610 -210 610 -170 {lab=GND}
N 610 -490 610 -440 {lab=VDD}
N 310 -340 310 -300 {lab=GND}
N 310 -450 310 -400 {lab=VDD}
N 610 -290 610 -270 {lab=#net2}
N 510 -350 510 -320 {lab=#net1}
N 610 -380 610 -350 {lab=#net1}
N 780 -370 820 -370 {lab=#net3}
N 780 -370 780 -310 {lab=#net3}
N 780 -310 860 -310 {lab=#net3}
N 860 -340 860 -310 {lab=#net3}
N 860 -400 860 -370 {lab=#net4}
N 860 -220 860 -170 {lab=GND}
N 860 -310 860 -280 {lab=#net3}
N 860 -490 860 -470 {lab=VDD}
N 860 -410 860 -400 {lab=#net4}
N 1020 -240 1080 -240 {lab=VDD}
N 1020 -320 1020 -240 {lab=VDD}
N 1020 -350 1120 -350 {lab=VDD}
N 1120 -240 1120 -210 {lab=GND}
N 1120 -210 1120 -170 {lab=GND}
N 1120 -290 1120 -270 {lab=#net5}
N 1020 -350 1020 -320 {lab=VDD}
N 1120 -400 1120 -350 {lab=VDD}
N 1260 -270 1300 -270 {lab=GND}
N 1260 -270 1260 -210 {lab=GND}
N 1260 -210 1340 -210 {lab=GND}
N 1340 -240 1340 -210 {lab=GND}
N 1340 -300 1340 -270 {lab=#net6}
N 1340 -390 1340 -370 {lab=VDD}
N 1340 -310 1340 -300 {lab=#net6}
N 1340 -210 1340 -170 {lab=GND}
N 610 -490 1340 -490 {lab=VDD}
N 610 -170 610 -160 {lab=GND}
N 610 -160 610 -120 {lab=GND}
N 610 -120 1330 -120 {lab=GND}
N 1340 -170 1340 -120 {lab=GND}
N 860 -170 860 -130 {lab=GND}
N 860 -130 860 -120 {lab=GND}
N 1120 -170 1120 -120 {lab=GND}
N 1120 -490 1120 -400 {lab=VDD}
N 1340 -490 1340 -390 {lab=VDD}
N 1330 -120 1340 -120 {lab=GND}
C {symbols/nfet_03v3.sym} 590 -240 0 0 {name=M1
L=0.5u
W=5u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/isource.sym} 610 -410 0 0 {name=I0 value=10u}
C {devices/vsource.sym} 310 -370 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/gnd.sym} 310 -300 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 310 -450 0 0 {name=l4 lab=VDD}
C {devices/code_shown.sym} 0 -530 0 0 {name=NGSPICE only_toplevel=true 
value="
.option wnflag=1
.option savecurrents
.temp 27
.control
save all
write stg3_test_dzd.raw
set appendwrite 
op
write stg3_test_dzd.raw
**dc V1 0 1.65 1m
tran 1m 10m 1m
**tran 100n 5u 100n
**ac dec 20 1 1e10
**plot v(vout)
.endc
"}
C {devices/code.sym} 230 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="

.lib /foss/pdks/volare/gf180mcu/versions/0fe599b2afb6708d281543108caf8310912f54af/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include /foss/pdks/volare/gf180mcu/versions/0fe599b2afb6708d281543108caf8310912f54af/gf180mcuD/libs.tech/ngspice/design.ngspice 

*.include $::180MCU_MODELS/design.ngspice
*.lib $::180MCU_MODELS/sm141064.ngspice typical

"}
C {devices/code.sym} 20 -190 0 0 {name=SAVE_COMMANDS only_toplevel=false value="
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
C {devices/launcher.sym} 280 -510 0 0 {name=h2
descr="load op & annotate" 
tclcommand="xschem raw_read $netlist_dir/Inv-Damp.raw; set show_hidden_texts 1; xschem annotate_op"}
C {devices/ngspice_probe.sym} 510 -290 0 1 {name=r1}
C {devices/ammeter.sym} 610 -320 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/ngspice_get_value.sym} 520 -450 0 0 {name=r4 node=@m.xm1.m0[gm]
descr="gm1"}
C {devices/ngspice_get_value.sym} 520 -420 0 0 {name=r13 node=@m.xm1.m0[gds]
descr="gds1"}
C {symbols/pfet_03v3.sym} 840 -370 0 0 {name=M2
L=0.5u
W=15.375u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/vdd.sym} 990 -490 0 0 {name=l5 lab=VDD}
C {devices/isource.sym} 860 -250 0 0 {name=I1 value=10u}
C {devices/ngspice_get_value.sym} 940 -460 0 0 {name=r2 node=@m.xm2.m0[gm]
descr="gm2"}
C {devices/ngspice_get_value.sym} 940 -430 0 0 {name=r3 node=@m.xm2.m0[gds]
descr="gds2"}
C {devices/ngspice_get_value.sym} 520 -390 0 0 {name=r5 node=@m.xm1.m0[cgg]
descr="cgg1"}
C {devices/ngspice_get_value.sym} 940 -400 0 0 {name=r6 node=@m.xm2.m0[cgg]
descr="cgg2"}
C {devices/ammeter.sym} 860 -440 0 0 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {devices/ngspice_get_value.sym} 520 -360 0 0 {name=r7 node=v(@m.xm1.m0[vth])
descr="vth1"}
C {devices/ngspice_get_value.sym} 940 -370 0 0 {name=r8 node=v(@m.xm2.m0[vth])
descr="vth2"}
C {devices/ngspice_probe.sym} 780 -330 0 1 {name=r9}
C {symbols/nfet_03v3.sym} 1100 -240 0 0 {name=M3
L=0.5u
W=5u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/ngspice_probe.sym} 1020 -290 0 1 {name=r10}
C {devices/ammeter.sym} 1120 -320 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {devices/ngspice_get_value.sym} 1030 -360 0 0 {name=r11 node=v(@m.xm3.m0[vth])
descr="vth3"}
C {devices/ngspice_get_value.sym} 1030 -390 0 0 {name=r12 node=v(@m.xm3.m0[vds])
descr="vds1"}
C {symbols/pfet_03v3.sym} 1320 -270 0 0 {name=M4
L=0.5u
W=15.375u
nf=1
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/ammeter.sym} 1340 -340 0 0 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {devices/ngspice_probe.sym} 1260 -230 0 1 {name=r14}
C {devices/gnd.sym} 970 -120 0 0 {name=l10 lab=GND}
C {devices/ngspice_get_value.sym} 1240 -310 0 0 {name=r15 node=v(@m.xm4.m0[vth])
descr="vth4"}
C {devices/ngspice_get_value.sym} 1240 -340 0 0 {name=r16 node=v(@m.xm4.m0[vds])
descr="vds4"}
C {devices/title.sym} 160 -30 0 0 {name=l11 author="Nithin Purushothama"}
