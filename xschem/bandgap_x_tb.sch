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
T {Testbench for bandgap
The symbol is a hierarchy block to 
another schemtic
so you can navigate into it using "e"} 270 -170 0 0 0.4 0.4 {}
N 360 -240 360 -210 {lab=0}
N 360 -330 360 -300 {lab=VDD}
N 570 -350 630 -350 {lab=Vref_x}
N 630 -350 630 -330 {lab=Vref_x}
N 630 -270 630 -240 {lab=0}
N 570 -490 630 -490 {lab=Vref}
N 630 -490 630 -470 {lab=Vref}
N 630 -410 630 -380 {lab=0}
N 590 -450 590 -440 {lab=0}
N 570 -450 590 -450 {lab=0}
C {devices/code_shown.sym} -230 -510 0 0 {name=NGSPICE
only_toplevel=true
value="
.option wnflag=1 
.save all
.include ../gds/bandgap.spice
.control
op
print x1.Vg1 x1.ve1 x1.vg10 x1.vg12 x1.vg2 x1.vg3 x1.vg5 x1.vs5
tran 10n 10u
plot V(Vref) V(Vref_x) title 'Vref vs time'
*dc VDD 3.0 3.5 0.1
*plot V(Vref) vs V(Vdd) title 'Vref vs Vdd'
*dc VDD 3.0 3.5 0.1 TEMP -40 40 10
*plot V(Vref) Vs V(Vdd) title 'Vref vs Vdd vs Temp'
*dc TEMP -40 40 10
*plot V(Vref) title 'Vref vs Temp at VDD=3.3'
.endc
" }
C {vsource.sym} 360 -270 0 0 {name=Vdd value=3.3 savecurrent=false}
C {gnd.sym} 360 -210 0 0 {name=l1 lab=0}
C {code.sym} 30 -160 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {bandgap_x.sym} 480 -350 0 0 {name=x1}
C {vdd.sym} 360 -330 0 0 {name=l3 lab=VDD}
C {gnd.sym} 630 -240 0 0 {name=l2 lab=0}
C {capa.sym} 630 -300 0 0 {name=C1
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 620 -350 0 0 {name=p1 sig_type=std_logic lab=Vref_x}
C {bandgap.sym} 480 -490 0 0 {name=x2}
C {gnd.sym} 630 -380 0 0 {name=l4 lab=0}
C {capa.sym} 630 -440 0 0 {name=C2
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 620 -490 0 0 {name=p2 sig_type=std_logic lab=Vref}
C {vdd.sym} 570 -470 1 0 {name=l5 lab=VDD}
C {gnd.sym} 590 -440 0 0 {name=l6 lab=0}
