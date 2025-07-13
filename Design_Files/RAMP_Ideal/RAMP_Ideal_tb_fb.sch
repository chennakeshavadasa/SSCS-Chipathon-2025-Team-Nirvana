v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 390 -530 390 -510 {lab=VDD}
N 390 -450 390 -430 {lab=GND}
N 660 -530 660 -510 {lab=VDD}
N 660 -390 660 -370 {lab=GND}
N 460 -470 460 -450 {lab=VICM}
N 460 -390 460 -370 {lab=GND}
N 550 -430 600 -430 {lab=#net1}
N 720 -470 790 -470 {lab=#net2}
N 490 -470 600 -470 {lab=VICM}
N 830 -260 890 -260 {lab=#net2}
N 890 -200 890 -180 {lab=GND}
N 790 -470 850 -470 {lab=#net2}
N 550 -260 570 -260 {lab=#net1}
N 630 -260 770 -260 {lab=probe}
N 700 -150 700 -130 {lab=GND}
N 700 -260 700 -210 {lab=probe}
N 890 -470 890 -400 {lab=#net2}
N 850 -470 890 -470 {lab=#net2}
N 520 -430 520 -340 {lab=#net1}
N 890 -400 890 -310 {lab=#net2}
N 890 -310 890 -260 {lab=#net2}
N 520 -340 520 -260 {lab=#net1}
N 520 -260 550 -260 {lab=#net1}
N 520 -430 550 -430 {lab=#net1}
N 460 -470 490 -470 {lab=VICM}
C {chipathon/RAMP_Ideal/RAMP_Ideal_tb.sym} 380 -450 0 0 {name=x1}
C {devices/vsource.sym} 390 -480 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/gnd.sym} 390 -430 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 390 -530 0 0 {name=l2 lab=VDD}
C {devices/vdd.sym} 660 -530 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 660 -370 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 460 -420 0 0 {name=V2 value=1.65 savecurrent=false}
C {devices/gnd.sym} 460 -370 0 0 {name=l5 lab=GND}
C {devices/capa.sym} 890 -230 0 0 {name=C1
m=1
value=250p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 890 -180 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} 1190 -570 0 0 {name=NGSPICE only_toplevel=true 
value="
.options savecurrents
.control
 let runs=2
 let run=0

 alter @Vprobe1[acmag]=1
 alter @iprobe1[acmag]=0

 dowhile run < runs

 set run =$&run
 ac dec 20 0.01 10G
 write RAMP_Ideal_tb_fb_\{$run\}.raw

 all
 alter @Vprobe1[acmag]=0
 alter @iprobe1[acmag]=1
 let run = run + 1
 end

 let ip22 = ac2.i(Vprobe2)
 let vprb1 = ac1.probe
 let mb = 1/(vprb1+ip22)-1
 let phase_mb = 180/PI*vp(mb)

 plot phase_mb
 plot vdb(mb) phase_mb

 meas ac peak MAX vmag(mb) FROM=1 TO=1.5G
 let f3db = peak/sqrt(2)
 meas ac f1 WHEN vmag(mb)=f3db RISE=1
 meas ac BW WHEN vmag(mb)=f3db FALL=1
 let GBW = peak*BW
 meas ac pm_deg find phase_mb when vdb(mb)=0
 meas ac dominant_pole_f when vdb(mb)=0
 meas ac loop_gain find vdb(mb) at=0.01
 let Phase_margin=180-abs(pm_deg)
 print GBW
 print Phase_margin

 op
 show m : gm : gmbs : gds : vds : vdsat : vgs : vth : id
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
C {devices/ngspice_probe.sym} 890 -470 0 0 {name=r1}
C {devices/ngspice_probe.sym} 460 -470 0 0 {name=r2}
C {devices/vsource.sym} 600 -260 1 0 {name=Vprobe2 value="0" savecurrent=false}
C {devices/vsource.sym} 800 -260 3 1 {name=Vprobe1 value="dc 0 ac 1" savecurrent=false}
C {devices/isource.sym} 700 -180 2 0 {name=Iprobe1 value="dc 0 ac 1"}
C {devices/gnd.sym} 700 -130 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 700 -260 1 0 {name=p1 sig_type=std_logic lab=probe}
C {devices/lab_pin.sym} 510 -470 1 0 {name=p2 sig_type=std_logic lab=VICM}
