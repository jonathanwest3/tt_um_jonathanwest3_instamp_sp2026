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
The symbol is a primitive linking 
to a subcircuit of the same name in 
../gds/bandgap.spice
Make sure that bandgap.spice has a subcircuit defined
in it by running "ext2spice hierarchy on"} 270 -170 0 0 0.4 0.4 {}
N 360 -240 360 -210 {lab=0}
N 360 -330 360 -300 {lab=VDD}
N 570 -350 630 -350 {lab=Vref}
N 630 -350 630 -330 {lab=Vref}
N 630 -270 630 -240 {lab=0}
N 570 -310 580 -310 {lab=0}
N 570 -330 580 -330 {lab=VDD}
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
C {vdd.sym} 360 -330 0 0 {name=l3 lab=VDD}
C {gnd.sym} 630 -240 0 0 {name=l2 lab=0}
C {capa.sym} 630 -300 0 0 {name=C1
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 620 -350 0 0 {name=p1 sig_type=std_logic lab=Vref}
C {bandgap.sym} 480 -350 0 0 {name=x1}
C {vdd.sym} 580 -330 1 0 {name=l4 lab=VDD}
C {gnd.sym} 580 -310 0 0 {name=l5 lab=0}
C {code.sym} 20 -350 0 0 {name=NGSPICE1
only_toplevel=true
value="
.option wnflag=1 
.include ../gds/bandgap.spice
.save all
.control
set gnuplot_terminal=png/quit

op
#print x1.Vg1 x1.ve1 x1.vg10 x1.vg12 x1.vg2 x1.vg3 x1.vg5 x1.vs5
#tran 10n 10u
#plot V(Vref) title 'Vref vs time'

dc VDD 3.0 3.5 0.1
gnuplot bandgap_vref_vs_vdd V(Vref)
+ title 'Vref vs Vdd'
+ xlabel 'VDD' ylabel 'Vref'
#plot V(Vref) vs V(Vdd) title 'Vref vs Vdd'

dc VDD 3.0 3.5 0.02 TEMP -40 40 20
gnuplot bandgap_vref_vs_vdd_vs_temp V(Vref)
+ title 'Vref vs Vdd vs Temp (-40 to 40C)'
+ xlabel 'VDD' ylabel 'Vref'
#plot V(Vref) Vs V(Vdd) title 'Vref vs Vdd vs Temp'

#dc TEMP -40 40 10
#plot V(Vref) title 'Vref vs Temp at VDD=3.3'
quit
.endc
" }
