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
N 120 -700 120 -670 {lab=Vp}
N 310 -620 390 -620 {lab=Vn}
N 350 -690 380 -690 {lab=#net1}
N 380 -690 380 -680 {lab=#net1}
N 380 -680 390 -680 {lab=#net1}
N 350 -630 370 -630 {lab=#net2}
N 370 -640 370 -630 {lab=#net2}
N 370 -640 390 -640 {lab=#net2}
N 120 -700 390 -700 {lab=Vp}
N 120 -590 120 -580 {lab=Vn}
N 120 -610 120 -590 {lab=Vn}
N 120 -590 310 -590 {lab=Vn}
N 310 -620 310 -590 {lab=Vn}
N 730 -600 730 -580 {lab=Vref}
N 730 -520 730 -490 {lab=0}
N 680 -600 730 -600 {lab=Vref}
N 680 -700 750 -700 {lab=Vout}
N 350 -600 380 -600 {lab=Vmid}
N 300 -580 380 -580 {lab=VDD}
N 360 -560 380 -560 {lab=0}
N 360 -560 360 -550 {lab=0}
C {vsource.sym} 50 -510 0 0 {name=Vdd value=3.3 savecurrent=false}
C {code.sym} -220 -400 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {vdd.sym} 50 -540 0 0 {name=l3 lab=VDD}
C {vsource.sym} 120 -640 0 0 {name=Vdiff value="sin(0 5m 1k) AC=1"}
C {vsource.sym} -60 -510 0 0 {name=Vmid value=1.65 savecurrent=false}
C {gnd.sym} -60 -480 0 0 {name=Vmid1 lab=0
value=1.65}
C {vdd.sym} -60 -540 0 0 {name=l6 lab=Vmid}
C {lab_wire.sym} 270 -700 0 0 {name=p3 sig_type=std_logic lab=Vp}
C {lab_wire.sym} 250 -590 0 0 {name=p4 sig_type=std_logic lab=Vn}
C {vsource.sym} 120 -550 0 0 {name=Vcm value="0 ac=0" savecurrent=false}
C {code.sym} -220 -580 0 0 {name=NGSPICE
only_toplevel=true
value="
.option wnflag=1 
.option savecurrents
.option rshunt=1e12
.include ../netlist/rcx/instamp.spice
.save all
.control
op
write instamp_tb.raw
set appendwrite
set gnuplot_terminal=png/quit

* write instamp_tb.raw
if 0
* differential gain tran
  destroy all
  foreach val 10k 5k 1k
    alter Rg = $val
    tran 10u 3m 1m
  end
  let Rg10k = tran1.v(vout)
  let Rg5k = tran2.v(vout)
  let Rg1k = tran3.v(vout)
  gnuplot tran Rg10k Rg5k Rg1k
*+ title 'Differential gain'
+ xlabel 'Time' ylabel 'Volts'
endif

* run ac on schematic as drawn
if 1
  destroy all
* differential gain ac
  ac dec 100 1 1Meg
  plot db(v(vout))
endif

* run ac cmrr and psrr sweeps
if 0
  destroy all
* differential gain ac
  alter vdiff ac=1
  alter vcm ac=0
  alter vdd ac=0
  foreach val 10k 5k 1k
    alter Rg = $val
    ac dec 100 1 1Meg
  end
  alter vdiff ac=0
  alter vcm ac=1
  alter vdd ac=0
  foreach val 10k 5k 1k
    alter Rg = $val
    ac dec 100 1 1Meg
  end
  alter vdiff ac=0
  alter vcm ac=0
  alter vdd ac=1
  foreach val 10k 5k 1k
    alter Rg = $val
    ac dec 100 1 1Meg
  end
  alter vdiff ac=0
  alter vcm ac=0
  alter vdd ac=0
  alter vmid ac=1
  foreach val 10k 5k 1k
    alter Rg = $val
    ac dec 100 1 1Meg
  end
  let Rg10k = db(ac1.v(vout))
  let Rg5k = db(ac2.v(vout))
  let Rg1k = db(ac3.v(vout))
  let Rg10k_cm = Rg10k-db(ac4.v(vout))
  let Rg5k_cm = Rg5k-db(ac5.v(vout))
  let Rg1k_cm = Rg1k-db(ac6.v(vout))
  let Rg10k_psh = Rg10k-db(ac7.v(vout))
  let Rg5k_psh = Rg5k-db(ac8.v(vout))
  let Rg1k_psh = Rg1k-db(ac9.v(vout))
  let Rg10k_vmid = Rg10k-db(ac10.v(vout))
  let Rg5k_vmid = Rg5k-db(ac11.v(vout))
  let Rg1k_vmid = Rg1k-db(ac12.v(vout))

  gnuplot ac Rg10k Rg5k Rg1k
+ title 'Differential gain'
+ xlabel 'Freq' ylabel 'Gain dB'
  gnuplot cmrr Rg10k_cm Rg5k_cm Rg1k_cm
+ title 'CMRR'
+ xlabel 'Freq' ylabel 'Gain dB'
  gnuplot psrr Rg10k_psh Rg5k_psh Rg1k_psh
+ title 'PSRR'
+ xlabel 'Freq' ylabel 'Gain dB'
  gnuplot vmid_rej Rg10k_vmid Rg5k_vmid Rg1k_vmid
+ title 'Vmid Rejection'
+ xlabel 'Freq' ylabel 'Gain dB'

endif

if 0
* common mode gain
  alter vdiff ac=0
  alter vcm ac=1
  foreach val 90k 5k 1k
    alter Rg = $val
    ac dec 100 1 10Meg
  end

  plot db(ac1.V(Vout)) db(ac2.V(Vout)) 
+ db(ac3.V(Vout)) title 'Mag Vout'

* power supply gain
  alter vcm ac=0
  alter vdd ac=1
  foreach val 90k 5k 1k
    alter Rg = $val
    ac dec 100 1 10Meg
  end

  plot db(ac4.V(Vout)) db(ac5.V(Vout)) 
+ db(ac6.V(Vout)) title 'Mag Vout'

endif

.endc
" }
C {vdd.sym} 120 -520 2 0 {name=l4 lab=Vmid}
C {gnd.sym} 50 -480 0 0 {name=Vmid2 lab=0
value=1.65}
C {instamp.sym} 530 -660 0 0 {name=x2}
C {gnd.sym} 730 -490 0 0 {name=l1 lab=0}
C {capa.sym} 730 -550 0 0 {name=C2
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 730 -600 0 0 {name=p5 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 750 -700 0 0 {name=p6 sig_type=std_logic lab=Vout
}
C {vdd.sym} 350 -600 3 0 {name=l5 lab=Vmid}
C {res.sym} 350 -660 2 0 {name=Rg
value=10k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 300 -580 3 0 {name=l8 lab=VDD}
C {gnd.sym} 360 -550 0 0 {name=Vmid3 lab=0
value=1.65}
