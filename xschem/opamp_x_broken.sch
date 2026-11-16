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
and the ports on the netlist subcircuit.} 180 -230 0 0 0.4 0.4 {}
T {Vref = 1.2V for 5uA} 20 -290 0 0 0.4 0.4 {}
N 360 -470 410 -470 {lab=Vg1}
N 360 -470 360 -460 {lab=Vg1}
N 410 -390 410 -350 {lab=Vg1}
N 400 -430 410 -430 {lab=Vg1}
N 360 -400 360 -380 {lab=#net1}
N 490 -320 490 -300 {lab=0}
N 490 -350 550 -350 {lab=0}
N 400 -350 410 -350 {lab=Vg1}
N 410 -350 450 -350 {lab=Vg1}
N 490 -400 490 -380 {lab=#net2}
N 420 -430 450 -430 {lab=Vg1}
N 420 -440 420 -430 {lab=Vg1}
N 410 -440 420 -440 {lab=Vg1}
N 320 -430 360 -430 {lab=0}
N 490 -430 540 -430 {lab=0}
N 320 -350 360 -350 {lab=0}
N 170 -340 170 -320 {lab=0}
N 170 -370 230 -370 {lab=0}
N 90 -370 130 -370 {lab=Vref}
N 170 -580 170 -570 {lab=VDD}
N 170 -590 170 -580 {lab=VDD}
N 120 -580 170 -580 {lab=VDD}
N 120 -580 120 -540 {lab=VDD}
N 120 -540 170 -540 {lab=VDD}
N 230 -540 320 -540 {lab=VgR2}
N 410 -440 410 -430 {lab=Vg1}
N 410 -470 410 -440 {lab=Vg1}
N 360 -580 360 -570 {lab=VDD}
N 360 -590 360 -580 {lab=VDD}
N 360 -580 410 -580 {lab=VDD}
N 410 -580 410 -540 {lab=VDD}
N 360 -540 410 -540 {lab=VDD}
N 360 -510 360 -470 {lab=Vg1}
N 700 -310 700 -290 {lab=0}
N 700 -340 760 -340 {lab=0}
N 700 -390 700 -370 {lab=#net3}
N 630 -420 660 -420 {lab=Vg1}
N 700 -420 750 -420 {lab=0}
N 630 -380 630 -340 {lab=Vg1}
N 630 -340 660 -340 {lab=Vg1}
N 410 -390 630 -390 {lab=Vg1}
N 940 -350 940 -310 {lab=Vg1}
N 930 -410 940 -410 {lab=Vg1}
N 890 -370 890 -340 {lab=#net4}
N 1020 -280 1020 -260 {lab=0}
N 1020 -310 1080 -310 {lab=0}
N 930 -310 940 -310 {lab=Vg1}
N 940 -310 980 -310 {lab=Vg1}
N 1020 -380 1020 -360 {lab=#net5}
N 850 -410 890 -410 {lab=0}
N 1020 -410 1070 -410 {lab=0}
N 850 -310 890 -310 {lab=0}
N 1180 -300 1180 -280 {lab=0}
N 1180 -330 1240 -330 {lab=0}
N 940 -370 1120 -370 {lab=Vg1}
N 1120 -370 1120 -330 {lab=Vg1}
N 1120 -330 1140 -330 {lab=Vg1}
N 890 -280 890 -260 {lab=0}
N 1420 -320 1430 -320 {lab=Vg26}
N 1340 -320 1380 -320 {lab=0}
N 1380 -290 1380 -270 {lab=0}
N 1380 -370 1380 -350 {lab=Vg26}
N 1380 -370 1430 -370 {lab=Vg26}
N 1430 -370 1430 -320 {lab=Vg26}
N 1340 -420 1380 -420 {lab=0}
N 1380 -390 1380 -370 {lab=Vg26}
N 1380 -470 1380 -450 {lab=Vd24}
N 1350 -590 1380 -590 {lab=Vd24}
N 1270 -590 1310 -590 {lab=0}
N 1570 -490 1570 -470 {lab=0}
N 1570 -520 1630 -520 {lab=0}
N 1310 -560 1310 -520 {lab=Vg28}
N 700 -600 700 -450 {lab=Vs29}
N 640 -650 720 -650 {lab=0}
N 720 -650 820 -650 {lab=0}
N 720 -650 720 -640 {lab=0}
N 640 -620 640 -600 {lab=Vs29}
N 700 -600 820 -600 {lab=Vs29}
N 820 -620 820 -600 {lab=Vs29}
N 350 -1080 350 -1060 {lab=VDD}
N 250 -940 250 -930 {lab=VDD}
N 250 -930 350 -930 {lab=VDD}
N 350 -1000 350 -960 {lab=#net6}
N 250 -1030 350 -1030 {lab=VDD}
N 400 -1030 400 -940 {lab=Vg5}
N 390 -1030 400 -1030 {lab=Vg5}
N 400 -930 400 -880 {lab=Vg5}
N 380 -880 400 -880 {lab=Vg5}
N 350 -900 350 -880 {lab=Vg5}
N 390 -930 400 -930 {lab=Vg5}
N 470 -1080 470 -1060 {lab=VDD}
N 470 -1030 570 -1030 {lab=VDD}
N 570 -940 570 -930 {lab=VDD}
N 470 -930 570 -930 {lab=VDD}
N 470 -1000 470 -960 {lab=#net7}
N 470 -900 470 -810 {lab=Vd8}
N 410 -1030 430 -1030 {lab=Vg5}
N 410 -930 430 -930 {lab=Vg5}
N 410 -940 410 -930 {lab=Vg5}
N 400 -940 410 -940 {lab=Vg5}
N 340 -810 340 -790 {lab=Vd8}
N 430 -760 530 -760 {lab=Vd8}
N 340 -730 340 -650 {lab=#net5}
N 290 -760 300 -760 {lab=Vp}
N 530 -810 530 -790 {lab=Vd8}
N 570 -760 580 -760 {lab=Vn}
N 410 -430 410 -390 {lab=Vg1}
N 630 -420 630 -390 {lab=Vg1}
N 940 -410 940 -370 {lab=Vg1}
N 400 -940 400 -930 {lab=Vg5}
N 530 -730 530 -490 {lab=#net4}
N 470 -810 530 -810 {lab=Vd8}
N 340 -650 510 -650 {lab=#net5}
N 510 -650 510 -500 {lab=#net5}
N 510 -500 960 -500 {lab=#net5}
N 960 -500 960 -360 {lab=#net5}
N 530 -490 790 -490 {lab=#net4}
N 790 -490 790 -370 {lab=#net4}
N 790 -370 890 -370 {lab=#net4}
N 960 -360 1020 -360 {lab=#net5}
N 1020 -360 1020 -340 {lab=#net5}
N 960 -1100 960 -1080 {lab=VDD}
N 960 -1050 1060 -1050 {lab=VDD}
N 1060 -960 1060 -950 {lab=VDD}
N 960 -950 1060 -950 {lab=VDD}
N 960 -1010 960 -980 {lab=Vd29}
N 960 -920 960 -700 {lab=Vg27}
N 840 -1100 840 -1080 {lab=VDD}
N 740 -960 740 -950 {lab=VDD}
N 740 -950 840 -950 {lab=VDD}
N 840 -1000 840 -980 {lab=Vd30}
N 740 -1050 840 -1050 {lab=VDD}
N 890 -1050 890 -960 {lab=#net8}
N 880 -1050 890 -1050 {lab=#net8}
N 890 -950 890 -900 {lab=#net8}
N 840 -900 890 -900 {lab=#net8}
N 840 -920 840 -900 {lab=#net8}
N 880 -950 890 -950 {lab=#net8}
N 890 -1050 920 -1050 {lab=#net8}
N 900 -950 920 -950 {lab=#net8}
N 900 -960 900 -950 {lab=#net8}
N 890 -960 900 -960 {lab=#net8}
N 890 -960 890 -950 {lab=#net8}
N 490 -630 490 -460 {lab=Vg5}
N 250 -630 490 -630 {lab=Vg5}
N 250 -850 250 -630 {lab=Vg5}
N 250 -850 380 -850 {lab=Vg5}
N 380 -880 380 -850 {lab=Vg5}
N 630 -380 770 -380 {lab=Vg1}
N 770 -380 770 -350 {lab=Vg1}
N 770 -350 940 -350 {lab=Vg1}
N 1220 -980 1220 -960 {lab=VDD}
N 1120 -840 1120 -830 {lab=VDD}
N 1120 -830 1220 -830 {lab=VDD}
N 1220 -880 1220 -860 {lab=Vg21}
N 1120 -930 1220 -930 {lab=VDD}
N 1260 -930 1270 -930 {lab=Vg21}
N 1270 -830 1270 -780 {lab=Vg22}
N 1220 -780 1270 -780 {lab=Vg22}
N 1220 -800 1220 -780 {lab=Vg22}
N 1260 -830 1270 -830 {lab=Vg22}
N 1380 -1090 1380 -1070 {lab=VDD}
N 1380 -1040 1480 -1040 {lab=VDD}
N 1270 -1040 1340 -1040 {lab=Vg5}
N 1270 -1160 1270 -1040 {lab=Vg5}
N 410 -1160 1270 -1160 {lab=Vg5}
N 410 -1160 410 -1030 {lab=Vg5}
N 1380 -590 1380 -470 {lab=Vd24}
N 1380 -1010 1380 -590 {lab=Vd24}
N 1570 -750 1570 -730 {lab=VDD}
N 1570 -700 1670 -700 {lab=VDD}
N 1490 -700 1530 -700 {lab=Vg27}
N 1570 -610 1570 -550 {lab=Vout}
N 1570 -620 1650 -620 {lab=Vout}
N 1440 -610 1440 -590 {lab=Vout}
N 1440 -610 1570 -610 {lab=Vout}
N 1480 -520 1530 -520 {lab=Vg28}
N 1380 -470 1430 -470 {lab=Vd24}
N 1430 -470 1430 -420 {lab=Vd24}
N 1420 -420 1430 -420 {lab=Vd24}
N 1310 -700 1310 -620 {lab=Vg27}
N 1310 -700 1490 -700 {lab=Vg27}
N 1070 -600 1070 -590 {lab=VDD}
N 1070 -590 1170 -590 {lab=VDD}
N 1170 -560 1170 -520 {lab=Vg28}
N 1210 -590 1220 -590 {lab=Vg22}
N 1310 -520 1480 -520 {lab=Vg28}
N 1170 -700 1170 -620 {lab=Vg27}
N 1170 -700 1310 -700 {lab=Vg27}
N 1270 -930 1270 -880 {lab=Vg21}
N 1220 -880 1270 -880 {lab=Vg21}
N 640 -1010 640 -680 {lab=Vd29}
N 640 -1010 960 -1010 {lab=Vd29}
N 820 -760 820 -680 {lab=Vd30}
N 660 -760 820 -760 {lab=Vd30}
N 660 -1000 660 -760 {lab=Vd30}
N 660 -1000 840 -1000 {lab=Vd30}
N 960 -700 1170 -700 {lab=Vg27}
N 890 -900 890 -440 {lab=#net8}
N 1020 -520 1170 -520 {lab=Vg28}
N 1020 -520 1020 -440 {lab=Vg28}
N 1220 -590 1220 -390 {lab=Vg22}
N 1180 -390 1220 -390 {lab=Vg22}
N 1180 -390 1180 -360 {lab=Vg22}
N 1220 -780 1220 -590 {lab=Vg22}
N 170 -500 170 -490 {lab=VgR2}
N 170 -430 170 -400 {lab=#net9}
N 230 -540 230 -500 {lab=VgR2}
N 170 -500 230 -500 {lab=VgR2}
N 360 -320 360 -300 {lab=0}
N 430 -810 430 -760 {lab=Vd8}
N 940 -410 980 -410 {lab=Vg1}
N 200 -650 200 -640 {lab=0}
N 860 -650 870 -650 {lab=Vn}
N 640 -600 700 -600 {lab=Vs29}
N 340 -760 430 -760 {lab=Vd8}
N 430 -810 470 -810 {lab=Vd8}
N 890 -380 890 -370 {lab=#net4}
N 350 -880 380 -880 {lab=Vg5}
N 630 -390 630 -380 {lab=Vg1}
N 940 -370 940 -350 {lab=Vg1}
N 400 -1030 410 -1030 {lab=Vg5}
N 1570 -670 1570 -620 {lab=Vout}
N 1440 -620 1440 -610 {lab=Vout}
N 1570 -620 1570 -610 {lab=Vout}
N 1170 -520 1310 -520 {lab=Vg28}
N 1220 -900 1220 -880 {lab=Vg21}
N 840 -1020 840 -1000 {lab=Vd30}
N 960 -1020 960 -1010 {lab=Vd29}
N 210 -540 230 -540 {lab=VgR2}
N 170 -510 170 -500 {lab=VgR2}
N 340 -810 430 -810 {lab=Vd8}
N 1440 -530 1440 -520 {lab=Vg28}
N 1440 -700 1440 -680 {lab=Vg27}
C {gnd.sym} 540 -430 0 0 {name=l13 lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 380 -430 0 1 {name=M1
W=5
L=2
nf=2
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
C {opin.sym} 1650 -620 0 0 {name=p12 lab=Vout
}
C {ipin.sym} 90 -370 0 0 {name=p14 lab=Vref}
C {ipin.sym} 180 -780 0 0 {name=p10 lab=Vp}
C {ipin.sym} 180 -740 0 0 {name=p11 lab=Vn}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 380 -350 0 1 {name=M2
W=5
L=5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 470 -350 0 0 {name=M4
W=5
L=5
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
C {gnd.sym} 490 -300 0 0 {name=l1 lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 470 -430 0 0 {name=M3
W=5
L=2
nf=2
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
C {gnd.sym} 320 -430 1 0 {name=l12 lab=0}
C {gnd.sym} 550 -350 0 0 {name=l18 lab=0}
C {gnd.sym} 320 -350 1 0 {name=l20 lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 150 -370 0 0 {name=Mr1
W=5
L=8
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
C {gnd.sym} 170 -320 0 0 {name=l3 lab=0}
C {gnd.sym} 230 -370 0 0 {name=l4 lab=0}
C {vdd.sym} 170 -590 0 0 {name=l5 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 190 -540 0 1 {name=Mr2
W=4
L=5
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
C {vdd.sym} 360 -590 0 1 {name=l6 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 340 -540 0 0 {name=Mr3
W=4
L=5
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
C {gnd.sym} 750 -420 0 0 {name=l7 lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 680 -340 0 0 {name=M32
W=10
L=5
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
C {gnd.sym} 700 -290 0 0 {name=l8 lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 680 -420 0 0 {name=M31
W=20
L=2
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
C {gnd.sym} 760 -340 0 0 {name=l9 lab=0}
C {gnd.sym} 1070 -410 0 0 {name=l10 lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 910 -410 0 1 {name=M15
W=14.3
L=2
nf=7
mult=5
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 910 -310 0 1 {name=M16
W=10
L=5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1000 -310 0 0 {name=M18
W=10
L=5
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
C {gnd.sym} 1020 -260 0 0 {name=l11 lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1000 -410 0 0 {name=M17
W=14.3
L=2
nf=7
mult=5
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {gnd.sym} 850 -410 1 0 {name=l14 lab=0}
C {gnd.sym} 1080 -310 0 0 {name=l15 lab=0}
C {gnd.sym} 850 -310 1 0 {name=l16 lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1160 -330 0 0 {name=M20
W=1.5
L=5
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
C {gnd.sym} 1180 -280 0 0 {name=M9 lab=0
W=1.5}
C {gnd.sym} 1240 -330 0 0 {name=M10 lab=0
W=1.5}
C {gnd.sym} 890 -260 0 0 {name=l17 lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1400 -320 0 1 {name=M26
W=10
L=0.5
nf=10
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
C {gnd.sym} 1340 -320 1 0 {name=l19 lab=0}
C {gnd.sym} 1380 -270 0 0 {name=l21 lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1400 -420 0 1 {name=M25
W=10
L=0.5
nf=10
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
C {gnd.sym} 1340 -420 1 0 {name=l22 lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1330 -590 0 1 {name=M23
W=7.15
L=0.5
nf=7
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
C {gnd.sym} 1270 -590 1 0 {name=l23 lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 1550 -520 0 0 {name=M28
W=15
L=0.5
nf=10
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
C {gnd.sym} 1570 -470 0 0 {name=M21 lab=0
W=1.5}
C {gnd.sym} 1630 -520 0 0 {name=M22 lab=0
W=1.5}
C {gnd.sym} 720 -640 0 0 {name=l25 lab=0}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 840 -650 0 1 {name=M30
W=10
L=1.5
nf=10
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 620 -650 0 0 {name=M29
W=10
L=1.5
nf=10
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
C {lab_pin.sym} 600 -650 0 0 {name=p1 sig_type=std_logic lab=Vp}
C {lab_pin.sym} 860 -650 0 1 {name=p2 sig_type=std_logic lab=Vn}
C {vdd.sym} 350 -1080 0 0 {name=l26 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 370 -1030 0 1 {name=M5
W=7.5
L=5
nf=2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 370 -930 0 1 {name=M6
W=10
L=2
nf=2
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
C {vdd.sym} 250 -940 0 0 {name=l27 lab=VDD}
C {vdd.sym} 250 -1030 0 0 {name=l28 lab=VDD}
C {vdd.sym} 470 -1080 0 1 {name=l29 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 450 -1030 0 0 {name=M7
W=15
L=5
nf=2
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 450 -930 0 0 {name=M8
W=10
L=2
nf=4
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
C {vdd.sym} 570 -940 0 1 {name=l30 lab=VDD}
C {vdd.sym} 570 -1030 0 1 {name=l31 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 320 -760 0 0 {name=M09
W=20
L=1.5
nf=10
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 550 -760 0 1 {name=M010
W=20
L=1.5
nf=10
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
C {lab_pin.sym} 290 -760 0 0 {name=p3 sig_type=std_logic lab=Vp}
C {lab_pin.sym} 580 -760 0 1 {name=p4 sig_type=std_logic lab=Vn}
C {vdd.sym} 960 -1100 0 1 {name=l32 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 940 -1050 0 0 {name=M13
W=10
L=2.5
nf=5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 940 -950 0 0 {name=M14
W=10
L=1
nf=5
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
C {vdd.sym} 1060 -960 0 1 {name=l34 lab=VDD}
C {vdd.sym} 1060 -1050 0 1 {name=l35 lab=VDD}
C {vdd.sym} 840 -1100 0 0 {name=l36 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 860 -1050 0 1 {name=M11
W=10
L=2.5
nf=5
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 860 -950 0 1 {name=M12
W=10
L=1
nf=5
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
C {vdd.sym} 740 -960 0 0 {name=l37 lab=VDD}
C {vdd.sym} 740 -1050 0 0 {name=l38 lab=VDD}
C {vdd.sym} 1220 -980 0 0 {name=l39 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1240 -930 0 1 {name=M021
W=7.5
L=0.5
nf=10
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1240 -830 0 1 {name=M022
W=7.5
L=0.5
nf=10
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
C {vdd.sym} 1120 -840 0 0 {name=l40 lab=VDD}
C {vdd.sym} 1120 -930 0 0 {name=l41 lab=VDD}
C {vdd.sym} 1380 -1090 0 1 {name=l42 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1360 -1040 0 0 {name=M24
W=4
L=5
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
C {vdd.sym} 1480 -1040 0 1 {name=l43 lab=VDD}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1550 -700 0 0 {name=M27
W=25
L=0.5
nf=10
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
C {vdd.sym} 1670 -700 0 1 {name=l2 lab=VDD}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1440 -650 0 0 {name=C1 model=cap_mim_m3_2 W=30 L=20 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1440 -560 0 0 {name=C2 model=cap_mim_m3_2 W=30 L=20 MF=4 spiceprefix=X}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 1190 -590 0 1 {name=M19
W=15
L=0.5
nf=10
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
C {vdd.sym} 1070 -600 0 0 {name=l24 lab=VDD}
C {ammeter.sym} 170 -460 0 0 {name=Vmeas_Iref savecurrent=true spice_ignore=0}
C {vdd.sym} 1570 -750 0 1 {name=l44 lab=VDD}
C {gnd.sym} 360 -300 0 0 {name=l45 lab=0}
C {lab_wire.sym} 400 -470 0 0 {name=p5 sig_type=std_logic lab=Vg1}
C {lab_wire.sym} 310 -630 0 0 {name=p6 sig_type=std_logic lab=Vg5}
C {lab_wire.sym} 1070 -520 0 0 {name=p9 sig_type=std_logic lab=Vg28}
C {lab_wire.sym} 1080 -700 0 0 {name=p13 sig_type=std_logic lab=Vg27}
C {lab_wire.sym} 700 -550 0 0 {name=p15 sig_type=std_logic lab=Vs29}
C {lab_wire.sym} 780 -760 0 0 {name=p16 sig_type=std_logic lab=Vd30}
C {lab_wire.sym} 640 -840 0 0 {name=p17 sig_type=std_logic lab=Vd29}
C {lab_wire.sym} 1260 -880 0 0 {name=p18 sig_type=std_logic lab=Vg21}
C {lab_wire.sym} 1260 -780 0 0 {name=p19 sig_type=std_logic lab=Vg22}
C {lab_wire.sym} 1380 -840 0 0 {name=p20 sig_type=std_logic lab=Vd24}
C {lab_wire.sym} 1420 -370 0 0 {name=p21 sig_type=std_logic lab=Vg26}
C {lab_wire.sym} 270 -540 0 0 {name=p22 sig_type=std_logic lab=VgR2}
C {lab_wire.sym} 500 -1160 0 0 {name=p23 sig_type=std_logic lab=Vg5}
C {lab_wire.sym} 380 -810 0 0 {name=p24 sig_type=std_logic lab=Vd8}
C {gnd.sym} 200 -640 0 0 {name=l33 lab=0}
