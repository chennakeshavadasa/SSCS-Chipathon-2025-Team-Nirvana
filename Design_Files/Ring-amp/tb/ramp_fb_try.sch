v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -130 30 -90 {lab=GND}
N 30 -240 30 -190 {lab=VDD}
N 410 -240 410 -200 {lab=VDD}
N 160 -110 260 -110 {lab=#net1}
N 160 -110 160 -80 {lab=#net1}
N 160 -150 260 -150 {lab=#net2}
N 160 -320 160 -150 {lab=#net2}
N 560 -150 640 -150 {lab=#net2}
N 760 -20 760 40 {lab=GND}
N 760 -150 760 -80 {lab=#net2}
N 640 -150 760 -150 {lab=#net2}
N 640 20 640 80 {lab=GND}
N 640 -110 640 -40 {lab=#net3}
N 560 -110 640 -110 {lab=#net3}
N 160 -320 240 -320 {lab=#net2}
N 640 -320 640 -150 {lab=#net2}
N 240 -320 640 -320 {lab=#net2}
C {chipathon/Ring-amp/Ramp_tb_try1-fb.sym} 410 -130 0 0 {name=x1}
C {devices/vsource.sym} 30 -160 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/gnd.sym} 30 -90 0 0 {name=l26 lab=GND}
C {devices/vdd.sym} 30 -240 0 0 {name=l27 lab=VDD}
C {devices/code.sym} -450 -190 0 0 {name=SAVE_COMMANDS only_toplevel=false value="
.save @m.xm1.m0[gm]
.save @m.xm1.m0[id]
.save @m.xm1.m0[vth]
.save @m.xm1.m0[vds]
.save @m.xm1.m0[gds]
.save @m.xm1.m0[cgg]
.save @m.xm1.m0[cgs]
.save @m.xm1.m0[cgd]
.save @m.xm2.m0[gm]
.save @m.xm2.m0[id]
.save @m.xm2.m0[vth]
.save @m.xm2.m0[vds]
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
.save @m.xm5.m0[gm]
.save @m.xm5.m0[id]
.save @m.xm5.m0[vth]
.save @m.xm5.m0[vds]
.save @m.xm5.m0[gds]
.save @m.xm5.m0[cgg]
.save @m.xm5.m0[cgs]
.save @m.xm5.m0[cgd]
.save @m.xm6.m0[gm]
.save @m.xm6.m0[id]
.save @m.xm6.m0[vth]
.save @m.xm6.m0[vds]
.save @m.xm6.m0[gds]
.save @m.xm6.m0[cgg]
.save @m.xm6.m0[cgs]
.save @m.xm6.m0[cgd]
.save @m.xm7.m0[gm]
.save @m.xm7.m0[id]
.save @m.xm7.m0[vth]
.save @m.xm7.m0[vds]
.save @m.xm7.m0[gds]
.save @m.xm7.m0[cgg]
.save @m.xm7.m0[cgs]
.save @m.xm7.m0[cgd]
.save @m.xm8.m0[gm]
.save @m.xm8.m0[id]
.save @m.xm8.m0[vth]
.save @m.xm8.m0[vds]
.save @m.xm8.m0[gds]
.save @m.xm8.m0[cgg]
.save @m.xm8.m0[cgs]
.save @m.xm8.m0[cgd]
.save @m.xm9.m0[gm]
.save @m.xm9.m0[id]
.save @m.xm9.m0[vth]
.save @m.xm9.m0[vds]
.save @m.xm9.m0[gds]
.save @m.xm9.m0[cgg]
.save @m.xm9.m0[cgs]
.save @m.xm9.m0[cgd]
.save @m.xm10.m0[gm]
.save @m.xm10.m0[id]
.save @m.xm10.m0[vth]
.save @m.xm10.m0[vds]
.save @m.xm10.m0[gds]
.save @m.xm10.m0[cgg]
.save @m.xm10.m0[cgs]
.save @m.xm10.m0[cgd]
.save @m.xm11.m0[gm]
.save @m.xm11.m0[id]
.save @m.xm11.m0[vth]
.save @m.xm11.m0[vds]
.save @m.xm11.m0[gds]
.save @m.xm11.m0[cgg]
.save @m.xm11.m0[cgs]
.save @m.xm11.m0[cgd]
.save @m.xm12.m0[gm]
.save @m.xm12.m0[id]
.save @m.xm12.m0[vth]
.save @m.xm12.m0[vds]
.save @m.xm12.m0[gds]
.save @m.xm12.m0[cgg]
.save @m.xm12.m0[cgs]
.save @m.xm12.m0[cgd]
.save @m.xm13.m0[gm]
.save @m.xm13.m0[id]
.save @m.xm13.m0[vth]
.save @m.xm13.m0[vds]
.save @m.xm13.m0[gds]
.save @m.xm13.m0[cgg]
.save @m.xm13.m0[cgs]
.save @m.xm13.m0[cgd]
.save @m.xm14.m0[gm]
.save @m.xm14.m0[id]
.save @m.xm14.m0[vth]
.save @m.xm14.m0[vds]
.save @m.xm14.m0[gds]
.save @m.xm14.m0[cgg]
.save @m.xm14.m0[cgs]
.save @m.xm14.m0[cgd]
.save @m.xm15.m0[gm]
.save @m.xm15.m0[id]
.save @m.xm15.m0[vth]
.save @m.xm15.m0[vds]
.save @m.xm15.m0[gds]
.save @m.xm15.m0[cgg]
.save @m.xm15.m0[cgs]
.save @m.xm15.m0[cgd]
.save @m.xm16.m0[gm]
.save @m.xm16.m0[id]
.save @m.xm16.m0[vth]
.save @m.xm16.m0[vds]
.save @m.xm16.m0[gds]
.save @m.xm16.m0[cgg]
.save @m.xm16.m0[cgs]
.save @m.xm16.m0[cgd]
.save @m.xm17.m0[gm]
.save @m.xm17.m0[id]
.save @m.xm17.m0[vth]
.save @m.xm17.m0[vds]
.save @m.xm17.m0[gds]
.save @m.xm17.m0[cgg]
.save @m.xm17.m0[cgs]
.save @m.xm17.m0[cgd]
.save @m.xm18.m0[gm]
.save @m.xm18.m0[id]
.save @m.xm18.m0[vth]
.save @m.xm18.m0[vds]
.save @m.xm18.m0[gds]
.save @m.xm18.m0[cgg]
.save @m.xm18.m0[cgs]
.save @m.xm18.m0[cgd]
.save @m.xm19.m0[gm]
.save @m.xm19.m0[id]
.save @m.xm19.m0[vth]
.save @m.xm19.m0[vds]
.save @m.xm19.m0[gds]
.save @m.xm19.m0[cgg]
.save @m.xm19.m0[cgs]
.save @m.xm19.m0[cgd]
.save @m.xm20.m0[gm]
.save @m.xm20.m0[id]
.save @m.xm20.m0[vth]
.save @m.xm20.m0[vds]
.save @m.xm20.m0[gds]
.save @m.xm20.m0[cgg]
.save @m.xm20.m0[cgs]
.save @m.xm20.m0[cgd]
.save @m.xm21.m0[gm]
.save @m.xm21.m0[id]
.save @m.xm21.m0[vth]
.save @m.xm21.m0[vds]
.save @m.xm21.m0[gds]
.save @m.xm21.m0[cgg]
.save @m.xm21.m0[cgs]
.save @m.xm21.m0[cgd]
.save @m.xm22.m0[gm]
.save @m.xm22.m0[id]
.save @m.xm22.m0[vth]
.save @m.xm22.m0[vds]
.save @m.xm22.m0[gds]
.save @m.xm22.m0[cgg]
.save @m.xm22.m0[cgs]
.save @m.xm22.m0[cgd]
.save @m.xm23.m0[gm]
.save @m.xm23.m0[id]
.save @m.xm23.m0[vth]
.save @m.xm23.m0[vds]
.save @m.xm23.m0[gds]
.save @m.xm23.m0[cgg]
.save @m.xm23.m0[cgs]
.save @m.xm23.m0[cgd]
.save @m.xm24.m0[gm]
.save @m.xm24.m0[id]
.save @m.xm24.m0[vth]
.save @m.xm24.m0[vds]
.save @m.xm24.m0[gds]
.save @m.xm24.m0[cgg]
.save @m.xm24.m0[cgs]
.save @m.xm24.m0[cgd]
.save @m.xm25.m0[gm]
.save @m.xm25.m0[id]
.save @m.xm25.m0[vth]
.save @m.xm25.m0[vds]
.save @m.xm25.m0[gds]
.save @m.xm25.m0[cgg]
.save @m.xm25.m0[cgs]
.save @m.xm25.m0[cgd]
.save @m.xm26.m0[gm]
.save @m.xm26.m0[id]
.save @m.xm26.m0[vth]
.save @m.xm26.m0[vds]
.save @m.xm26.m0[gds]
.save @m.xm26.m0[cgg]
.save @m.xm26.m0[cgs]
.save @m.xm26.m0[cgd]
.save @m.xm27.m0[gm]
.save @m.xm27.m0[id]
.save @m.xm27.m0[vth]
.save @m.xm27.m0[vds]
.save @m.xm27.m0[gds]
.save @m.xm27.m0[cgg]
.save @m.xm27.m0[cgs]
.save @m.xm27.m0[cgd]
.save @m.xm28.m0[gm]
.save @m.xm28.m0[id]
.save @m.xm28.m0[vth]
.save @m.xm28.m0[vds]
.save @m.xm28.m0[gds]
.save @m.xm28.m0[cgg]
.save @m.xm28.m0[cgs]
.save @m.xm28.m0[cgd]
.save @m.xm29.m0[gm]
.save @m.xm29.m0[id]
.save @m.xm29.m0[vth]
.save @m.xm29.m0[vds]
.save @m.xm29.m0[gds]
.save @m.xm29.m0[cgg]
.save @m.xm29.m0[cgs]
.save @m.xm29.m0[cgd]
.save @m.xm30.m0[gm]
.save @m.xm30.m0[id]
.save @m.xm30.m0[vth]
.save @m.xm30.m0[vds]
.save @m.xm30.m0[gds]
.save @m.xm30.m0[cgg]
.save @m.xm30.m0[cgs]
.save @m.xm30.m0[cgd]
.save @m.xm31.m0[gm]
.save @m.xm31.m0[id]
.save @m.xm31.m0[vth]
.save @m.xm31.m0[vds]
.save @m.xm31.m0[gds]
.save @m.xm31.m0[cgg]
.save @m.xm31.m0[cgs]
.save @m.xm31.m0[cgd]
.save @m.xm32.m0[gm]
.save @m.xm32.m0[id]
.save @m.xm32.m0[vth]
.save @m.xm32.m0[vds]
.save @m.xm32.m0[gds]
.save @m.xm32.m0[cgg]
.save @m.xm32.m0[cgs]
.save @m.xm32.m0[cgd]
.save @m.xm33.m0[gm]
.save @m.xm33.m0[id]
.save @m.xm33.m0[vth]
.save @m.xm33.m0[vds]
.save @m.xm33.m0[gds]
.save @m.xm33.m0[cgg]
.save @m.xm33.m0[cgs]
.save @m.xm33.m0[cgd]
.save @m.xm34.m0[gm]
.save @m.xm34.m0[id]
.save @m.xm34.m0[vth]
.save @m.xm34.m0[vds]
.save @m.xm34.m0[gds]
.save @m.xm34.m0[cgg]
.save @m.xm34.m0[cgs]
.save @m.xm34.m0[cgd]
.save @m.xm35.m0[gm]
.save @m.xm35.m0[id]
.save @m.xm35.m0[vth]
.save @m.xm35.m0[vds]
.save @m.xm35.m0[gds]
.save @m.xm35.m0[cgg]
.save @m.xm35.m0[cgs]
.save @m.xm35.m0[cgd]
.save @m.xm36.m0[gm]
.save @m.xm36.m0[id]
.save @m.xm36.m0[vth]
.save @m.xm36.m0[vds]
.save @m.xm36.m0[gds]
.save @m.xm36.m0[cgg]
.save @m.xm36.m0[cgs]
.save @m.xm36.m0[cgd]
.save @m.xm37.m0[gm]
.save @m.xm37.m0[id]
.save @m.xm37.m0[vth]
.save @m.xm37.m0[vds]
.save @m.xm37.m0[gds]
.save @m.xm37.m0[cgg]
.save @m.xm37.m0[cgs]
.save @m.xm37.m0[cgd]
.save @m.xm38.m0[gm]
.save @m.xm38.m0[id]
.save @m.xm38.m0[vth]
.save @m.xm38.m0[vds]
.save @m.xm38.m0[gds]
.save @m.xm38.m0[cgg]
.save @m.xm38.m0[cgs]
.save @m.xm38.m0[cgd]
"}
C {devices/launcher.sym} -190 -10 0 0 {name=h1
descr="load op & annotate" 
tclcommand="xschem raw_read $netlist_dir/Inv-Damp.raw; set show_hidden_texts 1; xschem annotate_op"}
C {devices/code.sym} -140 -190 0 0 {name=MODELS only_toplevel=true
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
C {devices/vdd.sym} 410 -240 0 0 {name=l1 lab=VDD}
C {devices/vsource.sym} 160 -50 0 0 {name=V2 value=1.65 savecurrent=false}
C {devices/gnd.sym} 160 -20 0 0 {name=l8 lab=GND}
C {devices/capa.sym} 760 -50 0 0 {name=C1
m=1
value=250p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 760 40 0 1 {name=l24 lab=GND}
C {devices/capa.sym} 640 -10 0 0 {name=C2
m=1
value=250p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 640 80 0 1 {name=l2 lab=GND}
C {devices/code_shown.sym} -820 -460 0 0 {name=NGSPICE1 only_toplevel=true 
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
 write ramp_fb_try_\{$run\}.raw

 all
 alter @Vprobe1[acmag]=0
 alter @iprobe1[acmag]=1
 let run = run + 1
 end

 let ip22 = ac2.i(Vprobe2)
 let vprb1 = ac1.probe
 let mb = 1/(vprb1+ip22)-1
 let phase_mb = 180/PI*vp(mb)
 **plot vdb(mb)
 **plot vdb(x1.Vo_STG1) vdb(x1.mp_dz) vdb(x1.mn_dz)

 plot phase_mb
 plot vdb(mb) phase_mb

 meas ac peak MAX vmag(mb) FROM=2 TO=1.5G
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
"
spice_ignore=true}
C {devices/ngspice_probe.sym} 640 -150 0 0 {name=r1}
C {devices/ngspice_probe.sym} 160 -150 0 0 {name=r2}
C {devices/ngspice_probe.sym} 160 -110 0 0 {name=r3}
C {devices/ngspice_probe.sym} 640 -100 0 0 {name=r4}
C {devices/code_shown.sym} -280 40 0 0 {name=NGSPICE only_toplevel=true 
value="
.option wnflag=1
.option savecurrents
.temp 27
.control
save all
write ramp_fb_try.raw
set appendwrite 
op
write ramp_fb_try.raw
**dc V1 0 1.65 1m
**tran 1m 10m 1m
**tran 100n 5u 100n
**ac dec 20 1 1e12
**plot vdb(Vout_p)
**plot vdb(Vout_m)
**let vout=v(vout_plus)-v(vout_minus)
**plot vdb(vout)
.endc
"}
