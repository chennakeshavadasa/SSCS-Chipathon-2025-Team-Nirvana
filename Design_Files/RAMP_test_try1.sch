v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 410 -240 410 -180 {lab=#net1}
N 520 -180 630 -180 {lab=#net1}
N 630 -240 630 -180 {lab=#net1}
N 410 -410 410 -300 {lab=vout_minus}
N 630 -410 630 -300 {lab=vout_plus}
N 410 -590 410 -500 {lab=VDD}
N 630 -590 630 -500 {lab=VDD}
N 670 -270 750 -270 {lab=vin_minus}
N 310 -270 370 -270 {lab=vin_plus}
N 450 -500 590 -500 {lab=vctrl}
N 410 -590 630 -590 {lab=VDD}
N 410 -180 520 -180 {lab=#net1}
N 410 -270 630 -270 {lab=GND}
N 520 -70 520 0 {lab=GND}
N 520 -180 520 -160 {lab=#net1}
N 630 -470 630 -410 {lab=vout_plus}
N 410 -470 410 -410 {lab=vout_minus}
N 130 -70 130 0 {lab=GND}
N 130 -390 130 -110 {lab=vbias}
N 130 -110 130 -100 {lab=vbias}
N 180 -110 180 -70 {lab=vbias}
N 130 -110 180 -110 {lab=vbias}
N 130 -590 130 -450 {lab=VDD}
N 170 -70 180 -70 {lab=vbias}
N 180 -70 480 -70 {lab=vbias}
N 130 0 520 -0 {lab=GND}
N 130 -590 410 -590 {lab=VDD}
N 0 -310 0 -270 {lab=GND}
N 0 -420 0 -370 {lab=VDD}
N 1000 -280 1000 -240 {lab=vcm_ref}
N 900 -350 960 -350 {lab=vcm_ref}
N 900 -280 900 -210 {lab=vcm_ref}
N 900 -210 960 -210 {lab=vcm_ref}
N 1000 -80 1000 0 {lab=GND}
N 910 -80 960 -80 {lab=VDD}
N 1000 -390 1000 -350 {lab=#net2}
N 900 -280 1000 -280 {lab=vcm_ref}
N 1240 -220 1240 -180 {lab=vcm_ref}
N 1160 -150 1200 -150 {lab=vcm_ref}
N 1160 -220 1160 -150 {lab=vcm_ref}
N 1160 -280 1200 -280 {lab=vcm_ref}
N 1240 -360 1240 -310 {lab=#net3}
N 1150 -390 1200 -390 {lab=GND}
N 1240 -420 1240 -390 {lab=#net4}
N 1240 -280 1260 -280 {lab=#net4}
N 1260 -420 1260 -280 {lab=#net4}
N 1240 -420 1260 -420 {lab=#net4}
N 1240 -450 1240 -420 {lab=#net4}
N 1240 -150 1240 0 {lab=GND}
N 1000 -280 1160 -280 {lab=vcm_ref}
N 1160 -220 1240 -220 {lab=vcm_ref}
N 1000 -520 1240 -520 {lab=VDD}
N 1000 0 1240 0 {lab=GND}
N 900 -350 900 -280 {lab=vcm_ref}
N 1000 -320 1000 -280 {lab=vcm_ref}
N 1160 -280 1160 -220 {lab=vcm_ref}
N 1240 -250 1240 -220 {lab=vcm_ref}
N 1000 -180 1000 -110 {lab=#net5}
N 1000 -210 1020 -210 {lab=GND}
N 1020 -210 1020 -80 {lab=GND}
N 1000 -80 1020 -80 {lab=GND}
N 1780 -160 1890 -160 {lab=#net6}
N 1670 -390 1670 -280 {lab=#net7}
N 1890 -390 1890 -280 {lab=vctrl}
N 1670 -570 1670 -480 {lab=VDD}
N 1890 -570 1890 -480 {lab=VDD}
N 1930 -250 2010 -250 {lab=vcm_ref}
N 1570 -250 1630 -250 {lab=vout_plus}
N 1710 -480 1850 -480 {lab=#net7}
N 1670 -570 1890 -570 {lab=VDD}
N 1670 -160 1780 -160 {lab=#net6}
N 1670 -250 1890 -250 {lab=GND}
N 1780 -160 1780 -140 {lab=#net6}
N 1890 -450 1890 -390 {lab=vctrl}
N 1670 -450 1670 -390 {lab=#net7}
N 1780 -480 1780 -420 {lab=#net7}
N 1670 -420 1780 -420 {lab=#net7}
N 1480 -340 1480 -280 {lab=#net7}
N 1480 -340 1670 -340 {lab=#net7}
N 1480 -160 1670 -160 {lab=#net6}
N 1400 -250 1440 -250 {lab=vout_minus}
N 1780 -140 1780 -110 {lab=#net6}
N 1780 -50 1780 0 {lab=GND}
N 1780 -80 1780 -50 {lab=GND}
N 1480 -250 1530 -250 {lab=GND}
N 1000 -520 1000 -450 {lab=VDD}
N 1240 -520 1240 -510 {lab=VDD}
C {symbols/nfet_03v3.sym} 390 -270 0 0 {name=M1
L=0.3u
W=1u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 430 -500 0 1 {name=M3
L=0.5u
W=0.5u
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
C {devices/vdd.sym} 520 -590 0 0 {name=l2 lab=VDD}
C {devices/gnd.sym} 520 -270 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 520 -500 1 0 {name=p3 sig_type=std_logic lab=vctrl}
C {devices/vsource.sym} 310 -240 0 0 {name=V2 value="dc 1.65 ac 1" savecurrent=false}
C {devices/gnd.sym} 310 -210 0 0 {name=l8 lab=GND}
C {devices/ngspice_probe.sym} 520 -180 0 0 {name=r7}
C {symbols/nfet_03v3.sym} 500 -70 0 0 {name=M8
L=2u
W=4u
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
C {devices/ngspice_probe.sym} 370 -70 0 0 {name=r8}
C {devices/ammeter.sym} 520 -130 0 0 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {devices/gnd.sym} 520 0 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 750 -240 0 0 {name=V3 value="dc 1.65 ac 1 180" savecurrent=false}
C {devices/gnd.sym} 750 -210 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 310 -270 1 0 {name=p6 sig_type=std_logic lab=vin_plus}
C {devices/lab_pin.sym} 750 -270 1 0 {name=p7 sig_type=std_logic lab=vin_minus}
C {devices/lab_pin.sym} 630 -410 2 0 {name=p8 sig_type=std_logic lab=vout_plus}
C {devices/lab_pin.sym} 410 -410 2 1 {name=p9 sig_type=std_logic lab=vout_minus}
C {devices/ngspice_get_value.sym} 660 -230 0 0 {name=r11 node=@m.xm2.m0[gm]
descr="gm2"}
C {devices/ngspice_get_value.sym} 660 -200 0 0 {name=r12 node=@m.xm2.m0[gds]
descr="gds2"}
C {devices/ngspice_get_value.sym} 660 -170 0 0 {name=r14 node=@m.xm2.m0[cgg]
descr="cgg2"}
C {devices/ngspice_get_value.sym} 660 -140 0 0 {name=r15 node=v(@m.xm2.m0[vth])
descr="vth2"}
C {devices/ngspice_get_value.sym} 740 -520 0 0 {name=r20 node=@m.xm4.m0[gm]
descr="gm4"}
C {devices/ngspice_get_value.sym} 740 -490 0 0 {name=r21 node=@m.xm4.m0[gds]
descr="gds4"}
C {devices/ngspice_get_value.sym} 740 -460 0 0 {name=r22 node=@m.xm4.m0[cgg]
descr="cgg4"}
C {devices/ngspice_get_value.sym} 740 -430 0 0 {name=r23 node=v(@m.xm4.m0[vth])
descr="vth4"}
C {devices/lab_pin.sym} 350 -70 3 1 {name=p14 sig_type=std_logic lab=vbias}
C {symbols/nfet_03v3.sym} 150 -70 0 1 {name=M9
L=2u
W=4u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/isource.sym} 130 -420 0 0 {name=I0 value=10u}
C {symbols/nfet_03v3.sym} 650 -270 0 1 {name=M2
L=0.3u
W=1u
nf=2
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 610 -500 0 0 {name=M4
L=0.5u
W=0.5u
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
C {devices/vsource.sym} 0 -340 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/gnd.sym} 0 -270 0 0 {name=l5 lab=GND}
C {devices/vdd.sym} 0 -420 0 0 {name=l6 lab=VDD}
C {devices/ngspice_probe.sym} 1000 -140 0 0 {name=r3
}
C {devices/ammeter.sym} 1000 -420 0 0 {name=Vmeas1 savecurrent=true }
C {devices/vdd.sym} 910 -80 0 0 {name=l15 lab=VDD
}
C {devices/ammeter.sym} 1240 -480 0 0 {name=Vmeas3 savecurrent=true }
C {devices/ngspice_probe.sym} 1240 -330 0 1 {name=r4
}
C {devices/gnd.sym} 1150 -390 0 0 {name=l18 lab=GND
}
C {devices/lab_pin.sym} 1110 -280 3 1 {name=p1 sig_type=std_logic lab=vcm_ref
}
C {symbols/pfet_03v3.sym} 980 -350 0 0 {name=M5
L=0.5u
W=0.5u
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 980 -210 0 0 {name=M6
L=0.5u
W=0.5u
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
C {symbols/nfet_03v3.sym} 980 -80 0 0 {name=M11
L=0.28u
W=0.22u
nf=1
m=6
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1220 -150 0 0 {name=M13
L=0.5u
W=0.5u
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
C {symbols/pfet_03v3.sym} 1220 -280 0 0 {name=M12
L=0.5u
W=0.5u
nf=1
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1220 -390 0 0 {name=M7
L=0.28u
W=0.22u
nf=1
m=20
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1910 -250 0 1 {name=M18
L=0.5u
W=0.75u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1690 -480 0 1 {name=M19
L=2u
W=2u
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
C {symbols/pfet_03v3.sym} 1870 -480 0 0 {name=M20
L=2u
W=2u
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
C {devices/vdd.sym} 1780 -570 0 0 {name=l4 lab=VDD
}
C {devices/gnd.sym} 1780 -250 0 0 {name=l9 lab=GND
}
C {devices/ngspice_probe.sym} 1780 -160 0 0 {name=r27
}
C {devices/ngspice_get_value.sym} 1940 -170 0 0 {name=r28 node=@m.xm18.m0[gm]
descr="gm18"
}
C {devices/ngspice_get_value.sym} 1940 -140 0 0 {name=r29 node=@m.xm18.m0[gds]
descr="gds18"
}
C {devices/ngspice_get_value.sym} 1940 -110 0 0 {name=r30 node=@m.xm18.m0[cgg]
descr="cgg18"
}
C {devices/ngspice_get_value.sym} 1940 -80 0 0 {name=r31 node=v(@m.xm18.m0[vth])
descr="vth18"
}
C {devices/ngspice_get_value.sym} 2000 -500 0 0 {name=r32 node=@m.xm20.m0[gm]
descr="gm20"
}
C {devices/ngspice_get_value.sym} 2000 -470 0 0 {name=r33 node=@m.xm20.m0[gds]
descr="gds20"
}
C {devices/ngspice_get_value.sym} 2000 -440 0 0 {name=r34 node=@m.xm20.m0[cgg]
descr="cgg20"
}
C {devices/ngspice_get_value.sym} 2000 -410 0 0 {name=r35 node=v(@m.xm20.m0[vth])
descr="vth20"
}
C {symbols/nfet_03v3.sym} 1460 -250 0 0 {name=M21
L=0.5u
W=0.75u
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
C {devices/lab_pin.sym} 1740 -80 2 1 {name=p15 sig_type=std_logic lab=vbias
}
C {symbols/nfet_03v3.sym} 1760 -80 0 0 {name=M22
L=2u
W=4u
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
C {devices/gnd.sym} 1780 0 0 0 {name=l11 lab=GND
}
C {devices/lab_pin.sym} 1400 -250 3 1 {name=p2 sig_type=std_logic lab=vout_minus
}
C {devices/lab_pin.sym} 1570 -250 1 0 {name=p10 sig_type=std_logic lab=vout_plus
}
C {devices/lab_pin.sym} 1890 -370 2 0 {name=p12 sig_type=std_logic lab=vctrl
}
C {devices/lab_pin.sym} 2010 -250 3 1 {name=p13 sig_type=std_logic lab=vcm_ref
}
C {devices/gnd.sym} 1530 -250 0 0 {name=l10 lab=GND
}
C {devices/vdd.sym} 1120 -520 0 0 {name=l12 lab=VDD
}
C {devices/gnd.sym} 1120 0 0 0 {name=l13 lab=GND
}
C {devices/ngspice_get_value.sym} 1390 -170 0 0 {name=r1 node=@m.xm21.m0[gm]
descr="gm21"}
C {devices/ngspice_get_value.sym} 1390 -140 0 0 {name=r2 node=@m.xm21.m0[gds]
descr="gds21"}
C {devices/ngspice_get_value.sym} 1390 -110 0 0 {name=r5 node=@m.xm21.m0[cgg]
descr="cgg21"}
C {devices/ngspice_get_value.sym} 1390 -80 0 0 {name=r6 node=v(@m.xm21.m0[vth])
descr="vth21"}
C {devices/ngspice_get_value.sym} 1860 -40 0 0 {name=r9 node=@m.xm22.m0[gm]
descr="gm22"}
C {devices/ngspice_get_value.sym} 1860 -10 0 0 {name=r10 node=@m.xm22.m0[gds]
descr="gds22"}
C {devices/ngspice_get_value.sym} 1860 20 0 0 {name=r13 node=@m.xm22.m0[cgg]
descr="cgg22"}
C {devices/ngspice_get_value.sym} 1860 50 0 0 {name=r16 node=v(@m.xm22.m0[vth])
descr="vth22"}
C {devices/ngspice_get_value.sym} 1550 -500 0 0 {name=r17 node=@m.xm19.m0[gm]
descr="gm19"}
C {devices/ngspice_get_value.sym} 1550 -470 0 0 {name=r18 node=@m.xm19.m0[gds]
descr="gds19"}
C {devices/ngspice_get_value.sym} 1550 -440 0 0 {name=r19 node=@m.xm19.m0[cgg]
descr="cgg19"}
C {devices/ngspice_get_value.sym} 1550 -410 0 0 {name=r24 node=v(@m.xm19.m0[vth])
descr="vth19"}
C {devices/ngspice_get_value.sym} 1610 -120 0 0 {name=r25 node=@m.xm17.m0[gm]
descr="gm17"}
C {devices/ngspice_get_value.sym} 1610 -90 0 0 {name=r26 node=@m.xm17.m0[gds]
descr="gds17"}
C {devices/ngspice_get_value.sym} 1610 -60 0 0 {name=r36 node=@m.xm17.m0[cgg]
descr="cgg17"}
C {devices/ngspice_get_value.sym} 1610 -30 0 0 {name=r37 node=v(@m.xm17.m0[vth])
descr="vth17"}
C {symbols/nfet_03v3.sym} 1650 -250 0 0 {name=M17
L=0.5u
W=0.75u
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
C {devices/ammeter.sym} 1480 -190 0 0 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 1670 -190 0 0 {name=Vmeas5 savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 1890 -190 0 0 {name=Vmeas6 savecurrent=true spice_ignore=0}
