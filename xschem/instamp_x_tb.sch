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
N 730 -330 730 -310 {lab=Vref}
N 730 -250 730 -220 {lab=0}
N 110 -430 110 -400 {lab=Vp}
N 300 -350 380 -350 {lab=Vn}
N 340 -420 370 -420 {lab=#net1}
N 370 -420 370 -410 {lab=#net1}
N 370 -410 380 -410 {lab=#net1}
N 340 -360 360 -360 {lab=#net2}
N 360 -370 360 -360 {lab=#net2}
N 360 -370 380 -370 {lab=#net2}
N 360 -330 380 -330 {lab=Vmid}
N 680 -330 730 -330 {lab=Vref}
N 680 -430 750 -430 {lab=Vout}
N 110 -430 380 -430 {lab=Vp}
N 110 -320 110 -310 {lab=Vn}
N 110 -340 110 -320 {lab=Vn}
N 110 -320 300 -320 {lab=Vn}
N 300 -350 300 -320 {lab=Vn}
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
C {gnd.sym} 730 -220 0 0 {name=l2 lab=0}
C {capa.sym} 730 -280 0 0 {name=C1
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 730 -330 0 0 {name=p2 sig_type=std_logic lab=Vref}
C {vsource.sym} 110 -370 0 0 {name=Vdiff value="sin(0 5m 1k) AC=1"}
C {lab_wire.sym} 750 -430 0 0 {name=p1 sig_type=std_logic lab=Vout}
C {vsource.sym} -60 -510 0 0 {name=Vmid value=1.65 savecurrent=false}
C {gnd.sym} -60 -480 0 0 {name=Vmid1 lab=0
value=1.65}
C {vdd.sym} -60 -540 0 0 {name=l6 lab=Vmid}
C {vdd.sym} 360 -330 2 0 {name=l7 lab=Vmid}
C {launcher.sym} 320 -230 0 0 {name=h1
descr=Backannotate 
tclcommand="xschem annotate_op"}
C {instamp_x.sym} 530 -390 0 0 {name=x1}
C {res.sym} 340 -390 2 0 {name=Rg
value=1k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 260 -430 0 0 {name=p3 sig_type=std_logic lab=Vp}
C {lab_wire.sym} 240 -320 0 0 {name=p4 sig_type=std_logic lab=Vn}
C {vsource.sym} 110 -280 0 0 {name=Vcm value="0 ac=0" savecurrent=false}
C {code.sym} -220 -580 0 0 {name=NGSPICE
only_toplevel=true
value="
.option wnflag=1 
.option savecurrents
.save all
.control
op
write instamp_x_tb.raw
set appendwrite
set gnuplot_terminal=png/quit

* write instamp_x_tb.raw
if 0
* differential gain tran
  destroy all
  foreach val 90k 5k 1k
    alter Rg = $val
    tran 10u 3m 1m
  end
  let Rg90k = tran1.v(vout)
  let Rg5k = tran2.v(vout)
  let Rg1k = tran3.v(vout)
  gnuplot tran Rg90k Rg5k Rg1k
*+ title 'Differential gain'
+ xlabel 'Time' ylabel 'Volts'
endif

* run ac on schematic as drawn
if 0
  destroy all
* differential gain ac
  ac dec 100 1 1Meg
  plot db(v(vout))
endif

* run ac cmrr and psrr sweeps
if 1
  destroy all
* differential gain ac
  alter vdiff ac=1
  alter vcm ac=0
  alter vdd ac=0
  foreach val 90k 5k 1k
    alter Rg = $val
    ac dec 100 1 1Meg
  end
  alter vdiff ac=0
  alter vcm ac=1
  alter vdd ac=0
  foreach val 90k 5k 1k
    alter Rg = $val
    ac dec 100 1 1Meg
  end
  alter vdiff ac=0
  alter vcm ac=0
  alter vdd ac=1
  foreach val 90k 5k 1k
    alter Rg = $val
    ac dec 100 1 1Meg
  end
  alter vdiff ac=0
  alter vcm ac=0
  alter vdd ac=0
  alter vmid ac=1
  foreach val 90k 5k 1k
    alter Rg = $val
    ac dec 100 1 1Meg
  end
  let Rg90k = db(ac1.v(vout))
  let Rg5k = db(ac2.v(vout))
  let Rg1k = db(ac3.v(vout))
  let Rg90k_cm = Rg90k-db(ac4.v(vout))
  let Rg5k_cm = Rg5k-db(ac5.v(vout))
  let Rg1k_cm = Rg1k-db(ac6.v(vout))
  let Rg90k_psh = Rg90k-db(ac7.v(vout))
  let Rg5k_psh = Rg5k-db(ac8.v(vout))
  let Rg1k_psh = Rg1k-db(ac9.v(vout))
  let Rg90k_vmid = Rg90k-db(ac10.v(vout))
  let Rg5k_vmid = Rg5k-db(ac11.v(vout))
  let Rg1k_vmid = Rg1k-db(ac12.v(vout))

  gnuplot ac Rg90k Rg5k Rg1k
+ title 'Differential gain'
+ xlabel 'Freq' ylabel 'Gain dB'
  gnuplot cmrr Rg90k_cm Rg5k_cm Rg1k_cm
+ title 'CMRR'
+ xlabel 'Freq' ylabel 'Gain dB'
  gnuplot psrr Rg90k_psh Rg5k_psh Rg1k_psh
+ title 'PSRR'
+ xlabel 'Freq' ylabel 'Gain dB'
  gnuplot vmid_rej Rg90k_vmid Rg5k_vmid Rg1k_vmid
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
C {vdd.sym} 110 -250 2 0 {name=l4 lab=Vmid}
C {gnd.sym} 50 -480 0 0 {name=Vmid2 lab=0
value=1.65}
