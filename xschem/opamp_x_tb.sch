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
N 670 -330 730 -330 {lab=Vref}
N 730 -330 730 -310 {lab=Vref}
N 730 -250 730 -220 {lab=0}
N 260 -260 260 -230 {lab=Vmid}
N 670 -350 690 -350 {lab=Vout}
N 690 -350 690 -250 {lab=Vout}
N 360 -250 500 -250 {lab=#net1}
N 360 -330 360 -250 {lab=#net1}
N 360 -330 370 -330 {lab=#net1}
N 360 -170 360 -160 {lab=Vmid}
N 360 -250 360 -230 {lab=#net1}
N 260 -350 260 -320 {lab=Vin}
N 260 -350 370 -350 {lab=Vin}
N 690 -350 750 -350 {lab=Vout}
N 170 -250 170 -220 {lab=0}
N 170 -340 170 -310 {lab=Vmid}
N 560 -250 590 -250 {lab=#net2}
N 650 -250 690 -250 {lab=Vout}
N 690 -10 750 -10 {lab=Vref_mag}
N 750 -10 750 10 {lab=Vref_mag}
N 750 70 750 100 {lab=0}
N 690 -30 710 -30 {lab=Vout_mag}
N 710 -30 710 70 {lab=Vout_mag}
N 710 -30 770 -30 {lab=Vout_mag}
N 370 70 510 70 {lab=#net3}
N 370 150 370 160 {lab=Vmid}
N 370 70 370 90 {lab=#net3}
N 570 70 600 70 {lab=#net4}
N 370 -10 390 -10 {lab=#net3}
N 370 -10 370 70 {lab=#net3}
N 660 70 710 70 {lab=Vout_mag}
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
C {gnd.sym} 730 -220 0 0 {name=l2 lab=0}
C {capa.sym} 730 -280 0 0 {name=C1
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 730 -330 0 0 {name=p2 sig_type=std_logic lab=Vref}
C {vsource.sym} 260 -290 0 0 {name=Vin value="0 sin(0 0.7 1k) AC=1"}
C {res.sym} 530 -250 1 0 {name=R1
value=1Meg
footprint=1206
device=resistor
m=1}
C {res.sym} 360 -200 2 0 {name=R2
value=1Meg
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 750 -350 0 0 {name=p1 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 310 -350 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {vsource.sym} 170 -280 0 0 {name=Vmid value=1.65 savecurrent=false}
C {gnd.sym} 170 -220 0 0 {name=Vmid1 lab=0
value=1.65}
C {vdd.sym} 170 -340 0 0 {name=l6 lab=Vmid}
C {vdd.sym} 360 -160 2 0 {name=l7 lab=Vmid}
C {vdd.sym} 260 -230 2 0 {name=l4 lab=Vmid}
C {launcher.sym} 290 -460 0 0 {name=h1
descr=Backannotate 
tclcommand="xschem annotate_op"}
C {ngspice_probe.sym} 430 -250 0 0 {name=r3}
C {ind.sym} 620 -250 1 0 {name=L5
m=1
value=1G
footprint=1206
device=inductor}
C {opamp_bg.sym} 540 -20 0 0 {name=x2}
C {opamp_bg_x.sym} 520 -340 0 0 {name=x1}
C {lab_wire.sym} 390 -30 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {gnd.sym} 750 100 0 0 {name=l8 lab=0}
C {capa.sym} 750 40 0 0 {name=C2
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 750 -10 0 0 {name=p5 sig_type=std_logic lab=Vref_mag
}
C {lab_wire.sym} 770 -30 0 0 {name=p6 sig_type=std_logic lab=Vout_mag}
C {res.sym} 540 70 1 0 {name=R4
value=1Meg
footprint=1206
device=resistor
m=1}
C {res.sym} 370 120 2 0 {name=R5
value=1Meg
footprint=1206
device=resistor
m=1}
C {vdd.sym} 370 160 2 0 {name=l9 lab=Vmid}
C {ngspice_probe.sym} 440 70 0 0 {name=r6}
C {ind.sym} 630 70 1 0 {name=L10
m=1
value=1
footprint=1206
device=inductor}
C {code.sym} 0 -130 0 0 {name=NGSPICE1
only_toplevel=true
value="
.option wnflag=1 
.option savecurrents
.option rshunt=1e12
.include ../gds/opamp.spice
.save all
.control
op
write opamp_x_tb.raw
print Vref I(v.x1.x2.vmeas_iref) V(x1.x2.Vg1)
if 0
alter L5 1n
tran 1u 2m
plot V(Vin) V(Vout) title 'Vin and Vout vs time'
endif

alter L5 10G
alter L10 10G
ac dec 100 1 100Meg
plot db(V(Vout)) db(V(Vout_mag)) title 'Vout vs Vout_mag Open loop'
*plot cph(V(vout))*180/pi title 'Phase Vout open loop'

if 1
alter L5 1n
alter L10 1n
alter R1 1m
alter R4 1m
ac dec 100 1 100Meg
plot db(V(Vout)) db(V(Vout_mag)) title 'Mag Unity gain'
*plot cph(V(vout))*180/pi title 'Phase Vout Unity gain'
endif

.endc
" }
