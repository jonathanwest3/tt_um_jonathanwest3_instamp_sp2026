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
T {This a complete instrumentation amp
in  the tiny tapeout shuttle
The pin names must match the tt definitions} 120 -230 0 0 0.4 0.4 {}
T {Tinytapeout only has 6 analog pins but we need 7 
So we have to generate our own Vmid} 120 -100 0 0 0.4 0.4 {}
N -60 -340 -60 -320 {lab=#net1}
N -60 -330 170 -330 {lab=#net1}
C {ipin.sym} 170 -430 0 0 {name=p1 lab=ua[0]}
C {ipin.sym} 170 -350 0 0 {name=p2 lab=ua[1]}
C {opin.sym} 470 -430 0 0 {name=p3 lab=ua[4]}
C {opin.sym} 470 -330 0 0 {name=p4 lab=ua[5]}
C {ipin.sym} 170 -410 0 0 {name=p9 lab=ua[2]}
C {ipin.sym} 170 -370 0 0 {name=p10 lab=ua[3]
}
C {ipin.sym} 170 -290 0 0 {name=p17 lab=VGND}
C {ipin.sym} 170 -310 0 0 {name=p18 lab=VAPWR}
C {instamp.sym} 320 -390 0 0 {name=x5}
C {sky130_fd_pr/res_high_po_0p35.sym} -60 -370 0 0 {name=R1
L=4
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} -80 -370 0 0 {name=p5 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_high_po_0p35.sym} -60 -290 0 0 {name=R2
L=4
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} -80 -290 0 0 {name=p6 sig_type=std_logic lab=VGND}
C {lab_pin.sym} -60 -260 0 0 {name=p7 sig_type=std_logic lab=VGND}
C {lab_pin.sym} -60 -400 0 0 {name=p8 sig_type=std_logic lab=VAPWR}
