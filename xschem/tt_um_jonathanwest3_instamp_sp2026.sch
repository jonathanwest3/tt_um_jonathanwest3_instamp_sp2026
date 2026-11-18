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
T {Can't use ua6 or 7} -380 -320 0 0 0.4 0.4 {}
T {Datasheet says to GND unused outputs
but if you tie them directly, the netlist fails} 450 240 0 0 0.4 0.4 {}
T {Everything but the outputs are io pins
so netlist won't complain about undriven nets} -80 260 0 0 0.4 0.4 {}
T {Tinytapeout only has 6 analog pins but we need 7 
So we have to generate our own Vmid} 530 -400 0 0 0.4 0.4 {}
N -60 -340 -60 -320 {lab=Vmid}
N -60 -330 170 -330 {lab=Vmid}
N 710 20 710 210 {lab=VGND}
N 370 20 370 210 {lab=VGND}
N -220 20 -220 210 {lab=VGND}
N 150 20 150 210 {lab=VGND}
N -360 -260 -360 -70 {lab=VGND}
N 1040 20 1040 210 {lab=VGND}
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
C {iopin.sym} -160 20 0 0 {name=p37 lab=ui_in[7]}
C {lab_pin.sym} 370 200 0 0 {name=p12 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 710 200 0 0 {name=p13 sig_type=std_logic lab=VGND}
C {iopin.sym} -430 20 0 0 {name=p19 lab=clk}
C {iopin.sym} -430 40 0 0 {name=p20 lab=ena}
C {iopin.sym} -430 60 0 0 {name=p45 lab=rst_n}
C {iopin.sym} -430 80 0 0 {name=p11 lab=VDPWR}
C {iopin.sym} 1100 20 0 0 {name=p14 lab=uio_oe[0]}
C {iopin.sym} 210 20 0 0 {name=p15 lab=uio_in[0]}
C {iopin.sym} -160 40 0 0 {name=p16 lab=ui_in[6]}
C {iopin.sym} -160 60 0 0 {name=p38 lab=ui_in[5]}
C {iopin.sym} -160 80 0 0 {name=p40 lab=ui_in[4]}
C {iopin.sym} -160 100 0 0 {name=p41 lab=ui_in[3]}
C {iopin.sym} -160 120 0 0 {name=p42 lab=ui_in[2]}
C {iopin.sym} -160 140 0 0 {name=p43 lab=ui_in[1]}
C {iopin.sym} -160 160 0 0 {name=p44 lab=ui_in[0]}
C {iopin.sym} -300 -260 0 0 {name=p46 lab=ua[0]}
C {iopin.sym} -300 -240 0 0 {name=p47 lab=ua[1]}
C {iopin.sym} -300 -220 0 0 {name=p48 lab=ua[2]}
C {iopin.sym} -300 -200 0 0 {name=p49 lab=ua[3]}
C {iopin.sym} -300 -180 0 0 {name=p50 lab=ua[4]}
C {iopin.sym} -300 -160 0 0 {name=p51 lab=ua[5]}
C {iopin.sym} -300 -140 0 0 {name=p52 lab=ua[6]}
C {iopin.sym} -300 -120 0 0 {name=p1 lab=ua[7]}
C {lab_pin.sym} 470 -430 0 1 {name=p2 sig_type=std_logic lab=ua[0]}
C {lab_pin.sym} 470 -330 0 1 {name=p3 sig_type=std_logic lab=ua[1]}
C {lab_pin.sym} 170 -430 0 0 {name=p9 sig_type=std_logic lab=ua[2]}
C {lab_pin.sym} 170 -410 0 0 {name=p10 sig_type=std_logic lab=ua[3]}
C {lab_pin.sym} 170 -370 0 0 {name=p53 sig_type=std_logic lab=ua[4]}
C {lab_pin.sym} 170 -350 0 0 {name=p4 sig_type=std_logic lab=ua[5]}
C {iopin.sym} 1100 40 0 0 {name=p54 lab=uio_oe[1]}
C {iopin.sym} 1100 60 0 0 {name=p55 lab=uio_oe[2]}
C {iopin.sym} 1100 80 0 0 {name=p56 lab=uio_oe[3]}
C {iopin.sym} 1100 100 0 0 {name=p57 lab=uio_oe[4]}
C {iopin.sym} 1100 120 0 0 {name=p58 lab=uio_oe[5]}
C {iopin.sym} 1100 140 0 0 {name=p59 lab=uio_oe[6]}
C {iopin.sym} 1100 160 0 0 {name=p60 lab=uio_oe[7]}
C {iopin.sym} 210 40 0 0 {name=p39 lab=uio_in[1]}
C {iopin.sym} 210 60 0 0 {name=p61 lab=uio_in[2]}
C {iopin.sym} 210 80 0 0 {name=p62 lab=uio_in[3]}
C {iopin.sym} 210 100 0 0 {name=p63 lab=uio_in[4]}
C {iopin.sym} 210 120 0 0 {name=p64 lab=uio_in[5]}
C {iopin.sym} 210 140 0 0 {name=p65 lab=uio_in[6]}
C {iopin.sym} 210 160 0 0 {name=p66 lab=uio_in[7]}
C {sky130_fd_pr/res_generic_m3.sym} 400 20 1 0 {name=R3
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 400 40 1 0 {name=R4
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 400 60 1 0 {name=R5
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 400 80 1 0 {name=R6
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 400 100 1 0 {name=R7
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 400 120 1 0 {name=R8
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 400 140 1 0 {name=R9
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 400 160 1 0 {name=R10
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 740 20 1 0 {name=R11
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 740 40 1 0 {name=R12
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 740 60 1 0 {name=R13
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 740 80 1 0 {name=R14
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 740 100 1 0 {name=R15
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 740 120 1 0 {name=R16
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 740 140 1 0 {name=R17
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 740 160 1 0 {name=R18
W=1
L=1
model=res_generic_m3
mult=1}
C {lab_pin.sym} -220 200 0 0 {name=p67 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_generic_m3.sym} -190 20 1 0 {name=R19
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} -190 40 1 0 {name=R20
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} -190 60 1 0 {name=R21
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} -190 80 1 0 {name=R22
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} -190 100 1 0 {name=R23
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} -190 120 1 0 {name=R24
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} -190 140 1 0 {name=R25
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} -190 160 1 0 {name=R26
W=1
L=1
model=res_generic_m3
mult=1}
C {lab_pin.sym} 150 200 0 0 {name=p68 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_generic_m3.sym} 180 20 1 0 {name=R27
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 180 40 1 0 {name=R28
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 180 60 1 0 {name=R29
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 180 80 1 0 {name=R30
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 180 100 1 0 {name=R31
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 180 120 1 0 {name=R32
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 180 140 1 0 {name=R33
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 180 160 1 0 {name=R34
W=1
L=1
model=res_generic_m3
mult=1}
C {lab_pin.sym} -360 -80 0 0 {name=p69 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_generic_m3.sym} -330 -140 1 0 {name=R41
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} -330 -120 1 0 {name=R42
W=1
L=1
model=res_generic_m3
mult=1}
C {lab_pin.sym} 1040 200 0 0 {name=p70 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_generic_m3.sym} 1070 20 1 0 {name=R35
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 1070 40 1 0 {name=R36
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 1070 60 1 0 {name=R37
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 1070 80 1 0 {name=R38
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 1070 100 1 0 {name=R39
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 1070 120 1 0 {name=R40
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 1070 140 1 0 {name=R43
W=1
L=1
model=res_generic_m3
mult=1}
C {sky130_fd_pr/res_generic_m3.sym} 1070 160 1 0 {name=R44
W=1
L=1
model=res_generic_m3
mult=1}
C {lab_wire.sym} 80 -330 0 0 {name=p71 sig_type=std_logic lab=Vmid}
