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
T {This is the design file.  
It should only have the parts that you
layout in magic and maybe some probes
for simulations.  
It does not simulate on its own.  
If you put simualation elements in it make sure
they are labeled "only_toplevel"
The input ports are the connections on the symbol
and the ports on the netlist subcircuit.} 1460 -700 0 0 0.4 0.4 {}
T {For Vref approx 1V  I(R1) = 0.3/25k ~15uA
high_poly is 100uA/um so need 0.15um
for R4 0.5V/50k = 10uA so both can use 0p35
which is about 400ohms/square so 
R5=25k/400*0.35=22
R3=3.4 R4=43.75} 1440 -320 0 0 0.4 0.4 {}
N 1170 -390 1180 -390 {lab=GND}
N 1180 -390 1180 -340 {lab=GND}
N 1130 -340 1180 -340 {lab=GND}
N 1130 -360 1130 -340 {lab=GND}
N 1130 -340 1130 -320 {lab=GND}
N 1360 -380 1370 -380 {lab=GND}
N 1370 -380 1370 -330 {lab=GND}
N 1320 -330 1370 -330 {lab=GND}
N 1320 -350 1320 -330 {lab=GND}
N 1320 -580 1320 -410 {lab=Vg2}
N 1290 -610 1300 -610 {lab=GND}
N 1100 -610 1110 -610 {lab=GND}
N 1100 -480 1110 -480 {lab=GND}
N 1130 -450 1130 -420 {lab=Ve1}
N 1130 -580 1130 -510 {lab=Vg1}
N 1130 -660 1130 -640 {lab=Vref}
N 1130 -660 1360 -660 {lab=Vref}
N 1320 -660 1320 -640 {lab=Vref}
N 1040 -550 1320 -550 {lab=Vg2}
N 770 -550 780 -550 {lab=Vg1}
N 770 -550 770 -500 {lab=Vg1}
N 770 -500 1090 -500 {lab=Vg1}
N 1090 -530 1090 -500 {lab=Vg1}
N 1090 -530 1130 -530 {lab=Vg1}
N 820 -600 820 -580 {lab=#net1}
N 820 -600 1000 -600 {lab=#net1}
N 1000 -600 1000 -580 {lab=#net1}
N 910 -620 910 -600 {lab=#net1}
N 910 -890 910 -880 {lab=VDD}
N 1000 -520 1000 -470 {lab=Vg3}
N 820 -520 820 -470 {lab=Vg10}
N 820 -410 820 -390 {lab=GND}
N 1000 -410 1000 -390 {lab=GND}
N 860 -440 960 -440 {lab=Vg3}
N 940 -480 1000 -480 {lab=Vg3}
N 940 -480 940 -440 {lab=Vg3}
N 690 -480 820 -480 {lab=Vg10}
N 650 -450 650 -430 {lab=GND}
N 480 -520 520 -520 {lab=Vg12}
N 480 -520 480 -510 {lab=Vg12}
N 910 -820 910 -620 {lab=#net1}
N 420 -850 420 -800 {lab=Vg5}
N 360 -800 420 -800 {lab=Vg5}
N 360 -820 360 -800 {lab=Vg5}
N 400 -850 420 -850 {lab=Vg5}
N 460 -850 610 -850 {lab=Vg5}
N 360 -800 360 -690 {lab=Vg5}
N 360 -630 360 -590 {lab=Vs5}
N 440 -660 1130 -660 {lab=Vref}
N 460 -800 810 -800 {lab=Vg5}
N 810 -850 810 -800 {lab=Vg5}
N 810 -850 870 -850 {lab=Vg5}
N 1220 -730 1220 -660 {lab=Vref}
N 650 -820 650 -740 {lab=Vg12}
N 650 -680 650 -510 {lab=#net2}
N 690 -710 720 -710 {lab=Vref}
N 720 -710 720 -660 {lab=Vref}
N 580 -710 650 -710 {lab=GND}
N 400 -480 480 -480 {lab=GND}
N 1000 -440 1060 -440 {lab=GND}
N 750 -440 820 -440 {lab=GND}
N 820 -550 860 -550 {lab=#net1}
N 960 -550 1000 -550 {lab=#net1}
N 1220 -760 1260 -760 {lab=VDD}
N 1260 -810 1260 -760 {lab=VDD}
N 1220 -810 1260 -810 {lab=VDD}
N 1220 -810 1220 -790 {lab=VDD}
N 1220 -820 1220 -810 {lab=VDD}
N 650 -890 650 -880 {lab=VDD}
N 360 -890 360 -880 {lab=VDD}
N 320 -560 340 -560 {lab=GND}
N 360 -530 360 -490 {lab=GND}
N 520 -770 650 -770 {lab=Vg12}
N 520 -770 520 -520 {lab=Vg12}
N 650 -760 1180 -760 {lab=Vg12}
N 910 -900 910 -890 {lab=VDD}
N 910 -890 950 -890 {lab=VDD}
N 950 -890 950 -850 {lab=VDD}
N 910 -850 950 -850 {lab=VDD}
N 650 -900 650 -890 {lab=VDD}
N 650 -890 690 -890 {lab=VDD}
N 690 -890 690 -850 {lab=VDD}
N 650 -850 690 -850 {lab=VDD}
N 360 -900 360 -890 {lab=VDD}
N 310 -890 360 -890 {lab=VDD}
N 310 -890 310 -850 {lab=VDD}
N 310 -850 360 -850 {lab=VDD}
N 590 -480 650 -480 {lab=GND}
N 590 -480 590 -440 {lab=GND}
N 590 -440 650 -440 {lab=GND}
N 520 -520 530 -520 {lab=Vg12}
N 530 -520 530 -400 {lab=Vg12}
N 520 -400 530 -400 {lab=Vg12}
N 520 -480 530 -480 {lab=Vg12}
N 400 -400 480 -400 {lab=GND}
N 400 -320 480 -320 {lab=GND}
N 400 -240 480 -240 {lab=GND}
N 400 -160 480 -160 {lab=GND}
N 480 280 480 300 {lab=GND}
N 480 -210 480 -190 {lab=#net3}
N 480 -290 480 -270 {lab=#net4}
N 480 -370 480 -350 {lab=#net5}
N 480 -450 480 -430 {lab=#net6}
N 530 -400 530 -160 {lab=Vg12}
N 520 -160 530 -160 {lab=Vg12}
N 520 -240 530 -240 {lab=Vg12}
N 520 -320 530 -320 {lab=Vg12}
N 300 -660 360 -660 {lab=GND}
N 400 -660 440 -660 {lab=Vref}
N 420 -800 460 -800 {lab=Vg5}
N 420 -850 460 -850 {lab=Vg5}
N 860 -600 860 -550 {lab=#net1}
N 960 -600 960 -550 {lab=#net1}
N 400 -70 480 -70 {lab=GND}
N 530 -110 530 10 {lab=Vg12}
N 520 10 530 10 {lab=Vg12}
N 520 -70 530 -70 {lab=Vg12}
N 400 10 480 10 {lab=GND}
N 400 90 480 90 {lab=GND}
N 400 170 480 170 {lab=GND}
N 400 250 480 250 {lab=GND}
N 480 200 480 220 {lab=#net7}
N 480 120 480 140 {lab=#net8}
N 480 40 480 60 {lab=#net9}
N 480 -40 480 -20 {lab=#net10}
N 530 10 530 250 {lab=Vg12}
N 520 250 530 250 {lab=Vg12}
N 520 170 530 170 {lab=Vg12}
N 520 90 530 90 {lab=Vg12}
N 530 -160 530 -110 {lab=Vg12}
N 480 -130 480 -100 {lab=#net11}
N 400 -480 400 10 {lab=GND}
N 400 10 400 290 {lab=GND}
N 400 290 480 290 {lab=GND}
N 650 -430 650 -370 {lab=GND}
N 650 -370 650 -320 {lab=GND}
N 650 -320 1130 -320 {lab=GND}
N 750 -440 750 -390 {lab=GND}
N 750 -390 820 -390 {lab=GND}
N 820 -390 820 -320 {lab=GND}
N 1000 -390 1000 -320 {lab=GND}
N 1130 -320 1320 -320 {lab=GND}
N 1320 -330 1320 -320 {lab=GND}
N 300 -660 300 -510 {lab=GND}
N 300 -510 360 -510 {lab=GND}
N 300 -560 320 -560 {lab=GND}
N 1060 -440 1060 -320 {lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 980 -440 0 0 {name=M4
W=20
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 1150 -390 0 1 {name=Q1
model=pnp_05v5_W3p40L3p40
m=24
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 1340 -380 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {opin.sym} 1360 -660 0 0 {name=p1 lab=Vref
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 800 -550 0 0 {name=M1
W=20
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1020 -550 0 1 {name=M2
W=20
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 890 -850 0 0 {name=M11
W=1
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 840 -440 0 1 {name=M3
W=20
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 670 -480 0 1 {name=M10
W=20
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 630 -850 0 0 {name=M8
W=1
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 380 -850 0 1 {name=M5
W=1
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1200 -760 0 0 {name=M12
W=20
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 670 -710 0 1 {name=M9
W=20
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -480 0 1 {name=M7a
W=0.5
L=10
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -400 0 1 {name=M7b
W=0.5
L=10
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -320 0 1 {name=M7c
W=0.5
L=10
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -240 0 1 {name=M7d
W=0.5
L=10
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -160 0 1 {name=M7e
W=0.5
L=10
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 380 -660 0 1 {name=M6
W=5
L=1
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/res_high_po_0p35.sym} 1320 -610 0 0 {name=R1
L=20.1
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 1130 -610 0 0 {name=R2
L=20.1
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p35.sym} 360 -560 0 0 {name=R4
L=49.12
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {lab_wire.sym} 510 -800 0 0 {name=p2 sig_type=std_logic lab=Vg5}
C {lab_wire.sym} 800 -760 0 0 {name=p3 sig_type=std_logic lab=Vg12}
C {lab_wire.sym} 1250 -550 0 0 {name=p4 sig_type=std_logic lab=Vg2}
C {lab_wire.sym} 1070 -500 0 0 {name=p5 sig_type=std_logic lab=Vg1
}
C {lab_wire.sym} 760 -480 0 0 {name=p6 sig_type=std_logic lab=Vg10}
C {lab_wire.sym} 910 -440 0 0 {name=p7 sig_type=std_logic lab=Vg3}
C {lab_wire.sym} 360 -600 0 0 {name=p8 sig_type=std_logic lab=Vs5}
C {lab_wire.sym} 1130 -430 0 0 {name=p9 sig_type=std_logic lab=Ve1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 -70 0 1 {name=M7f
W=0.5
L=10
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 10 0 1 {name=M7g
W=0.5
L=10
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 90 0 1 {name=M7h
W=0.5
L=10
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 170 0 1 {name=M7I
W=0.5
L=10
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 500 250 0 1 {name=M7J
W=0.5
L=10
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {ipin.sym} 270 -340 0 0 {name=p17 lab=GND}
C {ipin.sym} 270 -310 0 0 {name=p18 lab=VDD}
C {lab_wire.sym} 480 300 3 0 {name=p10 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1100 -610 3 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_wire.sym} 1290 -610 3 0 {name=p13 sig_type=std_logic lab=GND}
C {lab_wire.sym} 360 -490 3 0 {name=p14 sig_type=std_logic lab=GND}
C {lab_wire.sym} 580 -710 3 0 {name=p15 sig_type=std_logic lab=GND}
C {lab_wire.sym} 650 -900 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 910 -900 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1220 -820 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1100 -480 3 0 {name=p22 sig_type=std_logic lab=GND}
C {gnd.sym} 780 -320 0 0 {name=l1 lab=GND}
C {vdd.sym} 360 -900 0 0 {name=l2 lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1130 -480 0 0 {name=R5
L=3
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
