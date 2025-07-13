v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 710 -430 710 -320 {lab=von}
N 950 -430 950 -320 {lab=vop}
N 710 -290 950 -290 {lab=GND}
N 710 -200 950 -200 {lab=#net1}
N 710 -550 950 -550 {lab=#net2}
N 710 -460 950 -460 {lab=VDD}
N 830 -200 830 -160 {lab=#net1}
N 830 -100 830 -70 {lab=GND}
N 830 -670 830 -630 {lab=VDD}
N 830 -570 830 -550 {lab=#net2}
N 630 -460 670 -460 {lab=vip}
N 630 -460 630 -290 {lab=vip}
N 630 -290 670 -290 {lab=vip}
N 990 -460 1030 -460 {lab=vin}
N 1030 -460 1030 -290 {lab=vin}
N 990 -290 1030 -290 {lab=vin}
N 780 -320 780 -290 {lab=GND}
N 880 -320 880 -290 {lab=GND}
N 710 -380 780 -380 {lab=von}
N 880 -380 950 -380 {lab=vop}
N 550 -370 630 -370 {lab=vip}
N 550 -280 550 -250 {lab=GND}
N 550 -370 550 -340 {lab=vip}
N 1100 -280 1100 -250 {lab=GND}
N 1100 -370 1100 -340 {lab=vin}
N 1030 -370 1100 -370 {lab=vin}
N 480 -550 480 -520 {lab=GND}
N 480 -640 480 -610 {lab=VDD}
N 1370 -430 1370 -320 {lab=#net3}
N 1610 -430 1610 -320 {lab=#net4}
N 1370 -290 1610 -290 {lab=GND}
N 1370 -200 1610 -200 {lab=#net5}
N 1370 -550 1610 -550 {lab=#net6}
N 1370 -460 1610 -460 {lab=VDD}
N 1490 -200 1490 -160 {lab=#net5}
N 1490 -100 1490 -70 {lab=GND}
N 1490 -670 1490 -630 {lab=VDD}
N 1490 -570 1490 -550 {lab=#net6}
N 1290 -460 1330 -460 {lab=#net3}
N 1290 -460 1290 -290 {lab=#net3}
N 1290 -290 1330 -290 {lab=#net3}
N 1650 -460 1690 -460 {lab=#net4}
N 1690 -460 1690 -290 {lab=#net4}
N 1650 -290 1690 -290 {lab=#net4}
N 1440 -320 1440 -290 {lab=GND}
N 1540 -320 1540 -290 {lab=GND}
N 1370 -380 1440 -380 {lab=#net3}
N 1540 -380 1610 -380 {lab=#net4}
N 1290 -380 1370 -380 {lab=#net3}
N 1610 -380 1690 -380 {lab=#net4}
C {symbols/nfet_03v3.sym} 690 -290 0 0 {name=M1
L=0.75u
W=7u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 970 -290 0 1 {name=M2
L=0.75u
W=7u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 690 -460 0 0 {name=M3
L=0.5u
W=16.77u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 970 -460 0 1 {name=M4
L=0.5u
W=16.77u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/isource.sym} 830 -130 0 0 {name=I0 value=10u}
C {devices/gnd.sym} 830 -70 0 0 {name=l1 lab=GND}
C {devices/isource.sym} 830 -600 0 0 {name=I1 value=10u}
C {devices/vdd.sym} 830 -670 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 830 -290 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 830 -460 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} 550 -310 0 0 {name=V1 value=0.9 savecurrent=false}
C {devices/capa.sym} 780 -350 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 880 -350 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 550 -250 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 1100 -310 0 0 {name=V2 value=0.9 savecurrent=false}
C {devices/gnd.sym} 1100 -250 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 480 -580 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} 480 -520 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 480 -640 0 0 {name=l8 lab=VDD}
C {devices/code_shown.sym} 0 -630 0 0 {name=NGSPICE only_toplevel=true 
value="
.option wnflag=1
.option savecurrents
.temp 27
.control
save all
write Inv-Damp.raw
set appendwrite 
op
write Inv-Damp.raw
**dc V1 0 1.65 1m
tran 1m 10m 1m
**tran 100n 5u 100n
**ac dec 20 1 1e10
**plot v(vout)
.endc
"}
C {devices/lab_pin.sym} 550 -370 0 0 {name=p1 sig_type=std_logic lab=vip}
C {devices/lab_pin.sym} 1100 -370 0 1 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 740 -380 3 1 {name=p3 sig_type=std_logic lab=von}
C {devices/lab_pin.sym} 920 -380 3 1 {name=p4 sig_type=std_logic lab=vop}
C {devices/code.sym} 230 -290 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="

.lib /foss/pdks/volare/gf180mcu/versions/0fe599b2afb6708d281543108caf8310912f54af/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.include /foss/pdks/volare/gf180mcu/versions/0fe599b2afb6708d281543108caf8310912f54af/gf180mcuD/libs.tech/ngspice/design.ngspice 

*.include $::180MCU_MODELS/design.ngspice
*.lib $::180MCU_MODELS/sm141064.ngspice typical

"}
C {devices/ngspice_probe.sym} 830 -550 0 1 {name=r1}
C {devices/ngspice_probe.sym} 830 -200 0 0 {name=r2}
C {devices/launcher.sym} 130 -110 0 0 {name=h1
descr="load op & annotate" 
tclcommand="xschem raw_read $netlist_dir/Inv-Damp.raw; set show_hidden_texts 1; xschem annotate_op"}
C {devices/title.sym} 160 -30 0 0 {name=l9 author="Nithin Purushothama"}
C {devices/code.sym} 20 -290 0 0 {name=SAVE_COMMANDS only_toplevel=false value="
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
.save @m.xm3.m0[gds]
.save @m.xm3.m0[cgg]
.save @m.xm3.m0[cgs]
.save @m.xm3.m0[cgd]
.save @m.xm4.m0[gm]
.save @m.xm4.m0[id]
.save @m.xm4.m0[vth]
.save @m.xm4.m0[gds]
.save @m.xm4.m0[cgg]
.save @m.xm4.m0[cgs]
.save @m.xm4.m0[cgd]
"}
C {devices/ngspice_get_value.sym} 620 -230 0 0 {name=r4 node=@m.xm1.m0[gm]
descr="gm1"}
C {devices/ngspice_get_value.sym} 620 -200 0 0 {name=r5 node=@m.xm1.m0[id]
descr="id1"}
C {devices/ngspice_get_value.sym} 990 -250 0 0 {name=r6 node=@m.xm2.m0[gm]
descr="gm2"}
C {devices/ngspice_get_value.sym} 990 -220 0 0 {name=r7 node=@m.xm4.m0[id]
descr="id2"}
C {devices/ngspice_get_value.sym} 600 -500 0 0 {name=r3 node=@m.xm3.m0[gm]
descr="gm3"}
C {devices/ngspice_get_value.sym} 1000 -500 0 0 {name=r8 node=@m.xm4.m0[gm]
descr="gm4"}
C {devices/ngspice_get_value.sym} 600 -470 0 0 {name=r9 node=@m.xm3.m0[id]
descr="id3"}
C {devices/ngspice_get_value.sym} 1000 -470 0 0 {name=r10 node=@m.xm4.m0[id]
descr="id4"}
C {devices/ngspice_get_value.sym} 600 -530 0 0 {name=r11 node=@m.xm3.m0[gds]
descr="gds3"}
C {devices/ngspice_get_value.sym} 1000 -530 0 0 {name=r12 node=@m.xm4.m0[gds]
descr="gds4"}
C {devices/ngspice_get_value.sym} 620 -170 0 0 {name=r13 node=@m.xm3.m0[gds]
descr="gds1"}
C {devices/ngspice_get_value.sym} 990 -180 0 0 {name=r14 node=@m.xm2.m0[gds]
descr="gds2"}
C {devices/ammeter.sym} 710 -520 0 0 {name=Vmeas savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 950 -520 0 1 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 710 -230 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 950 -230 0 1 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {symbols/nfet_03v3.sym} 1350 -290 0 0 {name=M5
L=0.75u
W=7u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1630 -290 0 1 {name=M6
L=0.75u
W=7u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1350 -460 0 0 {name=M7
L=0.5u
W=16.77u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1630 -460 0 1 {name=M8
L=0.5u
W=16.77u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/isource.sym} 1490 -130 0 0 {name=I2 value=10u}
C {devices/gnd.sym} 1490 -70 0 0 {name=l10 lab=GND}
C {devices/isource.sym} 1490 -600 0 0 {name=I3 value=10u}
C {devices/vdd.sym} 1490 -670 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} 1490 -290 0 0 {name=l12 lab=GND}
C {devices/vdd.sym} 1490 -460 0 0 {name=l13 lab=VDD}
C {devices/capa.sym} 1440 -350 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1540 -350 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/ngspice_probe.sym} 1490 -550 0 1 {name=r15}
C {devices/ngspice_probe.sym} 1490 -200 0 0 {name=r16}
C {devices/ngspice_get_value.sym} 1280 -230 0 0 {name=r17 node=@m.xm1.m0[gm]
descr="gm1"}
C {devices/ngspice_get_value.sym} 1280 -200 0 0 {name=r18 node=@m.xm1.m0[id]
descr="id1"}
C {devices/ngspice_get_value.sym} 1650 -250 0 0 {name=r19 node=@m.xm2.m0[gm]
descr="gm2"}
C {devices/ngspice_get_value.sym} 1650 -220 0 0 {name=r20 node=@m.xm4.m0[id]
descr="id2"}
C {devices/ngspice_get_value.sym} 1260 -500 0 0 {name=r21 node=@m.xm3.m0[gm]
descr="gm3"}
C {devices/ngspice_get_value.sym} 1660 -500 0 0 {name=r22 node=@m.xm4.m0[gm]
descr="gm4"}
C {devices/ngspice_get_value.sym} 1260 -470 0 0 {name=r23 node=@m.xm3.m0[id]
descr="id3"}
C {devices/ngspice_get_value.sym} 1660 -470 0 0 {name=r24 node=@m.xm4.m0[id]
descr="id4"}
C {devices/ngspice_get_value.sym} 1260 -530 0 0 {name=r25 node=@m.xm3.m0[gds]
descr="gds3"}
C {devices/ngspice_get_value.sym} 1660 -530 0 0 {name=r26 node=@m.xm4.m0[gds]
descr="gds4"}
C {devices/ngspice_get_value.sym} 1280 -170 0 0 {name=r27 node=@m.xm3.m0[gds]
descr="gds1"}
C {devices/ngspice_get_value.sym} 1650 -180 0 0 {name=r28 node=@m.xm2.m0[gds]
descr="gds2"}
C {devices/ammeter.sym} 1370 -520 0 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 1610 -520 0 1 {name=Vmeas5 savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 1370 -230 0 0 {name=Vmeas6 savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 1610 -230 0 1 {name=Vmeas7 savecurrent=true spice_ignore=0}
C {devices/ngspice_probe.sym} 1320 -380 0 0 {name=r29}
C {devices/ngspice_probe.sym} 1660 -380 0 1 {name=r30}
