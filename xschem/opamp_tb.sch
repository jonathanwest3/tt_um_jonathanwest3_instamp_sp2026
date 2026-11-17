v {xschem version=3.4.8RC file_version=1.3
* Copyright 2021 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -250 100 -220 {lab=0}
N 100 -340 100 -310 {lab=VDD}
N 690 -160 750 -160 {lab=#net1}
N 750 -160 750 -140 {lab=#net1}
N 750 -80 750 -50 {lab=0}
N -140 -280 -140 -250 {lab=Vmid}
N 670 -350 700 -350 {lab=Vout}
N 360 -180 500 -180 {lab=#net2}
N 360 -330 370 -330 {lab=VDD}
N 360 -100 360 -90 {lab=Vmid}
N 360 -180 360 -160 {lab=#net2}
N -140 -370 -140 -340 {lab=Vin}
N 700 -350 750 -350 {lab=Vout}
N 170 -250 170 -220 {lab=0}
N 170 -340 170 -310 {lab=Vmid}
N 560 -180 590 -180 {lab=#net3}
N 20 -250 20 -220 {lab=0}
N 20 -340 20 -310 {lab=Vref}
N 650 -180 700 -180 {lab=Vout}
N 700 -350 700 -180 {lab=Vout}
N 330 -290 370 -290 {lab=#net2}
N 330 -290 330 -180 {lab=#net2}
N 330 -180 360 -180 {lab=#net2}
N 290 -350 370 -350 {lab=0}
C {vsource.sym} 100 -280 0 0 {name=Vdd value=3.3 savecurrent=false}
C {gnd.sym} 100 -220 0 0 {name=l1 lab=0}
C {code.sym} 0 50 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {vdd.sym} 100 -340 0 0 {name=l3 lab=VDD}
C {gnd.sym} 750 -50 0 0 {name=l2 lab=0}
C {capa.sym} 750 -110 0 0 {name=C1
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 370 -270 0 0 {name=p2 sig_type=std_logic lab=Vref}
C {vsource.sym} -140 -310 0 0 {name=Vin value="0 sin(0 0.7 1k) AC=1"}
C {res.sym} 530 -180 1 0 {name=Rfb
value=1Meg
footprint=1206
device=resistor
m=1}
C {res.sym} 360 -130 2 0 {name=Rgnd
value=1Meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 750 -350 0 0 {name=p1 sig_type=std_logic lab=Vout}
C {vsource.sym} 170 -280 0 0 {name=Vmid value=1.65 savecurrent=false}
C {gnd.sym} 170 -220 0 0 {name=Vmid1 lab=0
value=1.65}
C {vdd.sym} 170 -340 0 0 {name=l6 lab=Vmid}
C {vdd.sym} 360 -90 2 0 {name=l7 lab=Vmid}
C {vdd.sym} -140 -250 2 0 {name=l4 lab=Vmid}
C {launcher.sym} 290 -460 0 0 {name=h1
descr=Backannotate 
tclcommand="xschem annotate_op"}
C {ngspice_probe.sym} 430 -180 0 0 {name=r3}
C {ind.sym} 620 -180 1 0 {name=Lfb
m=1
value=1n
footprint=1206
device=inductor}
C {code.sym} 0 -130 0 0 {name=NGSPICE
only_toplevel=true
value="
.option wnflag=1 
.option savecurrents
.option rshunt=1e12
.include ../netlist/rcx/opamp.spice
.save all
.control
set gnuplot_terminal=png/quit
set units = d
op
write opamp_tb.raw
print Vref I(v.x1.x2.vmeas_iref) V(x1.x2.Vg1)
if 0
alter L5 1n
tran 1u 2m
plot V(Vin) V(Vout) title 'Vin and Vout vs time'
endif

alter Lfb 10G
ac dec 100 1 100Meg
plot db(V(Vout)) title 'Vout Open loop'
*plot cph(V(vout))*180/pi title 'Phase Vout open loop'
gnuplot opamp_ac_mag db(V(Vout))
+ title 'Open loop gain'
+ xlabel 'Freq' ylabel 'Gain dB'
gnuplot opamp_ac_phase ph(V(Vout))
+ title 'Open loop phase'
+ xlabel 'Freq' ylabel 'Phase (deg)'


if 0
alter Lfb 1n
alter Rfb 1m
ac dec 100 1 100Meg
gnuplot opamp_unity_gain db(V(Vout))
+ title 'Unity gain bandwidth'
+ xlabel 'Freq' ylabel 'Gain dB'
gnuplot opamp_unity_gain_phase cph(V(Vout))
+ title 'Unity gain phase'
+ xlabel 'Freq' ylabel 'Phase (deg)'

plot db(V(Vout)) title 'Mag Unity gain'
*plot cph(V(vout))*180/pi title 'Phase Vout Unity gain'
endif

.endc
" }
C {opamp.sym} 520 -310 0 0 {name=x1}
C {vsource.sym} 20 -280 0 0 {name=Vref value=1.2 savecurrent=false}
C {gnd.sym} 20 -220 0 0 {name=l8 lab=0}
C {lab_wire.sym} 20 -340 0 0 {name=p4 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 360 -330 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -140 -370 0 0 {name=p6 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 370 -310 0 0 {name=p7 sig_type=std_logic lab=Vin}
C {gnd.sym} 290 -350 0 0 {name=Vmid2 lab=0
value=1.65}
