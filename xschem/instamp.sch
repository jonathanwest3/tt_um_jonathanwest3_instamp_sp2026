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
T {This a complete instrumentation amp with the bandgap
and external gain resistor
Vref must be a pin for external capacitor} 530 -170 0 0 0.4 0.4 {}
N 460 -470 480 -470 {lab=Vref}
N 470 -270 530 -270 {lab=Rgn}
N 470 -640 540 -640 {lab=Rgp}
N 470 -640 470 -550 {lab=Rgp}
N 470 -550 620 -550 {lab=Rgp}
N 680 -550 860 -550 {lab=Vout3}
N 860 -660 860 -550 {lab=Vout3}
N 670 -410 860 -410 {lab=Vout2}
N 860 -410 860 -290 {lab=Vout2}
N 360 -290 530 -290 {lab=Vn}
N 470 -410 470 -270 {lab=Rgn}
N 470 -410 610 -410 {lab=Rgn}
N 860 -660 890 -660 {lab=Vout3}
N 980 -660 1060 -660 {lab=Vp4}
N 980 -470 1000 -470 {lab=Vp4}
N 980 -660 980 -470 {lab=Vp4}
N 1160 -660 1160 -580 {lab=Vout5}
N 1540 -640 1540 -580 {lab=Vout5}
N 370 -640 470 -640 {lab=Rgp}
N 360 -270 470 -270 {lab=Rgn}
N 950 -660 980 -660 {lab=Vp4}
N 1120 -660 1160 -660 {lab=Vout5}
N 1480 -640 1540 -640 {lab=Vout5}
N 1480 -660 1580 -660 {lab=Vmid}
N 860 -290 890 -290 {lab=Vout2}
N 950 -290 960 -290 {lab=Vn4}
N 960 -290 970 -290 {lab=Vn4}
N 970 -290 1060 -290 {lab=Vn4}
N 1000 -470 1040 -470 {lab=Vp4}
N 980 -450 1040 -450 {lab=Vn4}
N 980 -450 980 -290 {lab=Vn4}
N 1120 -290 1360 -290 {lab=Vout}
N 1360 -470 1360 -290 {lab=Vout}
N 1360 -470 1410 -470 {lab=Vout}
N 370 -660 540 -660 {lab=Vp}
N 1160 -580 1280 -580 {lab=Vout5}
N 1340 -580 1540 -580 {lab=Vout5}
N 1280 -580 1340 -580 {lab=Vout5}
N 840 -700 860 -700 {lab=Vout3}
N 860 -700 860 -660 {lab=Vout3}
N 1340 -510 1360 -510 {lab=Vout}
N 1360 -510 1360 -470 {lab=Vout}
N 1160 -700 1180 -700 {lab=Vout5}
N 1160 -700 1160 -660 {lab=Vout5}
N 830 -330 860 -330 {lab=Vout2}
C {ipin.sym} 370 -660 0 0 {name=p1 lab=Vp}
C {ipin.sym} 360 -290 0 0 {name=p2 lab=Vn}
C {opin.sym} 1410 -470 0 0 {name=p3 lab=Vout}
C {opin.sym} 480 -470 0 0 {name=p4 lab=Vref}
C {lab_pin.sym} 530 -250 0 0 {name=p5 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 540 -620 0 0 {name=p6 sig_type=std_logic lab=Vref}
C {lab_pin.sym} 1040 -430 0 0 {name=p7 sig_type=std_logic lab=Vref}
C {ipin.sym} 370 -640 0 0 {name=p9 lab=Rgp}
C {ipin.sym} 360 -270 0 0 {name=p10 lab=Rgn
}
C {sky130_fd_pr/res_high_po_0p35.sym} 650 -550 1 0 {name=R1
L=76.36
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 640 -410 1 0 {name=R2
L=76.36
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 920 -290 1 0 {name=R3
L=51.36
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 920 -660 1 0 {name=R4
L=51.36
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 1090 -660 1 0 {name=R5
L=51.36
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 1090 -290 1 0 {name=R6
L=51.36
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 1480 -620 0 1 {name=p11 sig_type=std_logic lab=Vref}
C {ipin.sym} 1580 -660 0 1 {name=p12 lab=Vmid}
C {lab_wire.sym} 1030 -660 0 0 {name=p8 sig_type=std_logic lab=Vp4}
C {lab_wire.sym} 1020 -290 0 0 {name=p13 sig_type=std_logic lab=Vn4}
C {lab_wire.sym} 820 -410 0 0 {name=p14 sig_type=std_logic lab=Vout2}
C {lab_wire.sym} 820 -550 0 0 {name=p15 sig_type=std_logic lab=Vout3}
C {lab_wire.sym} 1240 -580 0 0 {name=p16 sig_type=std_logic lab=Vout5}
C {ipin.sym} 370 -740 0 0 {name=p17 lab=GND}
C {ipin.sym} 370 -710 0 0 {name=p18 lab=VDD}
C {lab_pin.sym} 540 -700 0 0 {name=p19 sig_type=std_logic lab=GND}
C {lab_pin.sym} 540 -680 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 530 -330 0 0 {name=p21 sig_type=std_logic lab=GND}
C {lab_pin.sym} 530 -310 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1040 -510 0 0 {name=p23 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1040 -490 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1480 -700 0 1 {name=p25 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1480 -680 0 1 {name=p26 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 160 -470 0 0 {name=p33 sig_type=std_logic lab=GND}
C {lab_pin.sym} 160 -450 0 0 {name=p34 sig_type=std_logic lab=VDD}
C {opamp.sym} 690 -660 0 0 {name=x6}
C {opamp.sym} 680 -290 0 0 {name=x2}
C {opamp.sym} 1190 -470 0 0 {name=x3}
C {opamp.sym} 1330 -660 0 1 {name=x4}
C {bandgap.sym} 310 -460 0 0 {name=x1}
C {gnd.sym} 650 -570 2 0 {name=l3 lab=GND}
C {gnd.sym} 640 -430 2 0 {name=l4 lab=GND}
C {gnd.sym} 920 -680 2 0 {name=l5 lab=GND}
C {gnd.sym} 1090 -680 2 0 {name=l6 lab=GND}
C {gnd.sym} 920 -310 2 0 {name=l7 lab=GND}
C {gnd.sym} 1090 -310 2 0 {name=l8 lab=GND}
