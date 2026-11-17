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
The pin names must match the tt definitions} -140 -570 0 0 0.4 0.4 {}
T {Apparently we cannot delete unused pins from the layout so they need to exist
in the symbol for the subcircuit to match.
The documentation says unused outputs should be grounded.} -140 -160 0 0 0.4 0.4 {}
T {Can't use ua6 or 7} -150 190 0 0 0.4 0.4 {}
T {Datasheet says to GND unused outputs
but if you tie them directly, the netlist fails} 450 240 0 0 0.4 0.4 {}
T {Everything but the outputs are io pins
so netlist won't complain about undriven nets} -80 260 0 0 0.4 0.4 {}
T {Tinytapeout only has 6 analog pins but we need 7 
So we have to generate our own Vmid} 530 -400 0 0 0.4 0.4 {}
N -60 -340 -60 -320 {lab=#net1}
N -60 -330 170 -330 {lab=#net1}
N 710 20 710 210 {lab=VGND}
N 370 20 370 210 {lab=VGND}
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
C {opin.sym} 430 20 0 0 {name=p29 lab=uo_out[0]}
C {opin.sym} 430 40 0 0 {name=p21 lab=uo_out[1]}
C {opin.sym} 430 60 0 0 {name=p22 lab=uo_out[2]}
C {opin.sym} 430 80 0 0 {name=p23 lab=uo_out[3]}
C {opin.sym} 430 100 0 0 {name=p24 lab=uo_out[4]}
C {opin.sym} 430 120 0 0 {name=p25 lab=uo_out[5]}
C {opin.sym} 430 140 0 0 {name=p26 lab=uo_out[6]}
C {opin.sym} 430 160 0 0 {name=p27 lab=uo_out[7]}
C {opin.sym} 770 20 0 0 {name=p28 lab=uio_out[0]}
C {opin.sym} 770 40 0 0 {name=p30 lab=uio_out[1]}
C {opin.sym} 770 60 0 0 {name=p31 lab=uio_out[2]}
C {opin.sym} 770 80 0 0 {name=p32 lab=uio_out[3]}
C {opin.sym} 770 100 0 0 {name=p33 lab=uio_out[4]}
C {opin.sym} 770 120 0 0 {name=p34 lab=uio_out[5]}
C {opin.sym} 770 140 0 0 {name=p35 lab=uio_out[6]}
C {opin.sym} 770 160 0 0 {name=p36 lab=uio_out[7]}
C {iopin.sym} 60 20 0 0 {name=p37 lab=ui_in[7]}
C {ammeter.sym} 740 20 3 1 {name=Vmeas savecurrent=true spice_ignore=0}
C {ammeter.sym} 740 40 3 1 {name=Vmeas1 savecurrent=true spice_ignore=0}
C {ammeter.sym} 740 60 3 1 {name=Vmeas2 savecurrent=true spice_ignore=0}
C {ammeter.sym} 740 80 3 1 {name=Vmeas3 savecurrent=true spice_ignore=0}
C {ammeter.sym} 740 100 3 1 {name=Vmeas4 savecurrent=true spice_ignore=0}
C {ammeter.sym} 740 120 3 1 {name=Vmeas5 savecurrent=true spice_ignore=0}
C {ammeter.sym} 740 140 3 1 {name=Vmeas6 savecurrent=true spice_ignore=0}
C {ammeter.sym} 740 160 3 1 {name=Vmeas7 savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 20 3 1 {name=Vmeas16 savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 40 3 1 {name=Vmeas17 savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 60 3 1 {name=Vmeas18 savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 80 3 1 {name=Vmeas19 savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 100 3 1 {name=Vmeas20 savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 120 3 1 {name=Vmeas21 savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 140 3 1 {name=Vmeas22 savecurrent=true spice_ignore=0}
C {ammeter.sym} 400 160 3 1 {name=Vmeas23 savecurrent=true spice_ignore=0}
C {lab_pin.sym} 370 200 0 0 {name=p12 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 710 200 0 0 {name=p13 sig_type=std_logic lab=VGND}
C {iopin.sym} -210 20 0 0 {name=p19 lab=clk}
C {iopin.sym} -210 40 0 0 {name=p20 lab=ena}
C {iopin.sym} -210 60 0 0 {name=p45 lab=rst_n}
C {iopin.sym} -210 80 0 0 {name=p11 lab=VDPWR}
C {iopin.sym} 970 20 0 0 {name=p14 lab=uio_oe[0]}
C {iopin.sym} 210 20 0 0 {name=p15 lab=uio_in[0]}
C {iopin.sym} 60 40 0 0 {name=p16 lab=ui_in[6]}
C {iopin.sym} 60 60 0 0 {name=p38 lab=ui_in[5]}
C {iopin.sym} 60 80 0 0 {name=p40 lab=ui_in[4]}
C {iopin.sym} 60 100 0 0 {name=p41 lab=ui_in[3]}
C {iopin.sym} 60 120 0 0 {name=p42 lab=ui_in[2]}
C {iopin.sym} 60 140 0 0 {name=p43 lab=ui_in[1]}
C {iopin.sym} 60 160 0 0 {name=p44 lab=ui_in[0]}
C {iopin.sym} -90 20 0 0 {name=p46 lab=ua[0]}
C {iopin.sym} -90 40 0 0 {name=p47 lab=ua[1]}
C {iopin.sym} -90 60 0 0 {name=p48 lab=ua[2]}
C {iopin.sym} -90 80 0 0 {name=p49 lab=ua[3]}
C {iopin.sym} -90 100 0 0 {name=p50 lab=ua[4]}
C {iopin.sym} -90 120 0 0 {name=p51 lab=ua[5]}
C {iopin.sym} -90 140 0 0 {name=p52 lab=ua[6]}
C {iopin.sym} -90 160 0 0 {name=p1 lab=ua[7]}
C {lab_pin.sym} 170 -430 0 0 {name=p2 sig_type=std_logic lab=ua[0]}
C {lab_pin.sym} 170 -410 0 0 {name=p3 sig_type=std_logic lab=ua[1]}
C {lab_pin.sym} 170 -370 0 0 {name=p9 sig_type=std_logic lab=ua[2]}
C {lab_pin.sym} 170 -350 0 0 {name=p10 sig_type=std_logic lab=ua[3]}
C {lab_pin.sym} 470 -430 0 1 {name=p53 sig_type=std_logic lab=ua[4]}
C {lab_pin.sym} 470 -330 0 1 {name=p4 sig_type=std_logic lab=ua[5]}
C {iopin.sym} 970 40 0 0 {name=p54 lab=uio_oe[1]}
C {iopin.sym} 970 60 0 0 {name=p55 lab=uio_oe[2]}
C {iopin.sym} 970 80 0 0 {name=p56 lab=uio_oe[3]}
C {iopin.sym} 970 100 0 0 {name=p57 lab=uio_oe[4]}
C {iopin.sym} 970 120 0 0 {name=p58 lab=uio_oe[5]}
C {iopin.sym} 970 140 0 0 {name=p59 lab=uio_oe[6]}
C {iopin.sym} 970 160 0 0 {name=p60 lab=uio_oe[7]}
C {iopin.sym} 210 40 0 0 {name=p39 lab=uio_in[1]}
C {iopin.sym} 210 60 0 0 {name=p61 lab=uio_in[2]}
C {iopin.sym} 210 80 0 0 {name=p62 lab=uio_in[3]}
C {iopin.sym} 210 100 0 0 {name=p63 lab=uio_in[4]}
C {iopin.sym} 210 120 0 0 {name=p64 lab=uio_in[5]}
C {iopin.sym} 210 140 0 0 {name=p65 lab=uio_in[6]}
C {iopin.sym} 210 160 0 0 {name=p66 lab=uio_in[7]}
