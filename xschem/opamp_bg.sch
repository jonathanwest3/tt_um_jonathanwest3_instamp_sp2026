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
T {This a complete op amp with the bandgap
Vref must be a pin for external capacitor} 490 -240 0 0 0.4 0.4 {}
N 610 -350 630 -350 {lab=Vref}
N 610 -350 610 -280 {lab=Vref}
N 580 -310 580 -300 {lab=0}
N 570 -350 610 -350 {lab=Vref}
N 580 -310 630 -310 {lab=0}
N 600 -330 630 -330 {lab=VDD}
C {bandgap_x.sym} 480 -350 0 0 {name=x1}
C {ipin.sym} 630 -390 0 0 {name=p1 lab=Vp}
C {ipin.sym} 630 -370 0 0 {name=p2 lab=Vn}
C {opin.sym} 930 -390 0 0 {name=p3 lab=Vout}
C {opin.sym} 610 -280 0 0 {name=p4 lab=Vref}
C {opamp.sym} 780 -370 0 0 {name=x2}
C {gnd.sym} 580 -300 0 0 {name=l1 lab=0}
C {vdd.sym} 600 -330 3 0 {name=l2 lab=VDD}
