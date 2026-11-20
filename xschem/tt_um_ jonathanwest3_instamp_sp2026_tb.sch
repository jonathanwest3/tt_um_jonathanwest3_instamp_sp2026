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
N 120 -590 120 -580 {lab=Vn}
N 120 -610 120 -590 {lab=Vn}
N 880 -680 880 -660 {lab=Vref}
N 880 -600 880 -570 {lab=0}
N 830 -680 880 -680 {lab=Vref}
N 830 -700 930 -700 {lab=Vout}
N 420 -750 440 -750 {lab=0}
N 420 -750 420 -740 {lab=0}
N 1000 -630 1000 -610 {lab=0}
N 930 -630 930 -610 {lab=0}
N 930 -700 1000 -700 {lab=Vout}
N 1000 -700 1000 -690 {lab=Vout}
N 930 -700 930 -690 {lab=Vout}
N 120 -590 250 -590 {lab=Vn}
C {vsource.sym} 210 -360 0 0 {name=Vdd value=3.3 savecurrent=false}
C {code.sym} 250 -220 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {vdd.sym} 210 -390 0 0 {name=l3 lab=VDD}
C {vsource.sym} 120 -640 0 0 {name=Vdiff value="sin(0 5m 1k) AC=1"}
C {lab_wire.sym} 120 -700 0 0 {name=p3 sig_type=std_logic lab=Vp}
C {lab_wire.sym} 160 -590 0 0 {name=p4 sig_type=std_logic lab=Vn}
C {vsource.sym} 120 -550 0 0 {name=Vcm value="0 ac=0" savecurrent=false}
C {code.sym} 80 -230 0 0 {name=NGSPICE
only_toplevel=true
value="
.option wnflag=1 
.option savecurrents
.option rshunt=1e12

# if one of these is uncommented, it will
# override the subcircuit in the symbol
# from the cace extracction
.include ../netlist/rcx/tt_um_jonathanwest3_instamp_sp2026.spice
# from the mag extraction
#.include ../netlist/layout/instamp.spice

.save all
.control
if 1
op
write tt_um_jonathanwest3_instamp_sp2026_tb.raw
endif

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

# rise and fall times
if 0
let per=5u
let tstop=$&per*3
let tstep=per/1000
alter Rg=90k
alter @Vdiff[pulse] [ 0 100m $&per 1n 1n $&per $&tstop ] 
tran $&tstep $&tstop
plot V(Vp,vmid) V(vout,vmid)
meas tran v_min MIN V(Vout)
meas tran v_pp PP V(Vout)
let v_high=(0.9*v_pp)+v_min
let v_low=(0.1*v_pp)+v_min
meas tran rise_time TRIG v(Vout) VAL='v_low' rise=1 targ v(vout) Val='v_high' RISE=1
let sr=(v_high-v_low)/rise_time
print sr

  gnuplot v_rise_fall V(vp,vmid) V(Vout,vmid)
+ title 'Rise and Fall Times'
+ xlabel 'Time (s)' ylabel 'Volts'

endif

if 0
ac dec 100 1 1Meg
let gain = db(V(Vout))
let cutoff_db = vecmax(gain)-3.0
meas ac bw WHEN gain=cutoff_db FALL =1
meas ac max_gain MAX gain
print bw max_gain
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
C {gnd.sym} 210 -330 0 0 {name=Vmid2 lab=0
value=1.65}
C {gnd.sym} 880 -570 0 0 {name=l1 lab=0}
C {capa.sym} 880 -630 0 0 {name=Cref
m=1
value=100n
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 880 -680 0 0 {name=p5 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 900 -700 0 0 {name=p6 sig_type=std_logic lab=Vout
}
C {res.sym} 270 -520 2 0 {name=Rg
value=17k
footprint=1206
device=resistor
m=1}
C {vdd.sym} 440 -770 3 0 {name=l8 lab=VDD}
C {gnd.sym} 420 -740 0 0 {name=Vmid3 lab=0
value=1.65}
C {res.sym} 930 -660 0 0 {name=Rload
value=1Meg
footprint=1206
device=resistor
m=1}
C {capa-2.sym} 1000 -660 0 0 {name=Cload
m=1
value=10p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 930 -610 0 0 {name=l2 lab=0}
C {gnd.sym} 1000 -610 0 0 {name=l7 lab=0}
C {tt_um_jonathanwest3_instamp_sp2026.sym} 580 -270 0 0 {name=x1}
C {lab_wire.sym} 270 -550 0 0 {name=p1 sig_type=std_logic lab=Rgp}
C {lab_wire.sym} 270 -490 3 0 {name=p2 sig_type=std_logic lab=Rgn}
C {lab_pin.sym} 440 -550 0 0 {name=p7 sig_type=std_logic lab=Vp}
C {lab_pin.sym} 440 -570 0 0 {name=p8 sig_type=std_logic lab=Rgp}
C {lab_pin.sym} 440 -530 0 0 {name=p9 sig_type=std_logic lab=Rgn}
C {lab_pin.sym} 440 -510 0 0 {name=p10 sig_type=std_logic lab=Vn}
C {lab_pin.sym} 440 -610 0 0 {name=p11 sig_type=std_logic lab=Vout}
C {lab_pin.sym} 440 -590 0 0 {name=p12 sig_type=std_logic lab=Vref}
