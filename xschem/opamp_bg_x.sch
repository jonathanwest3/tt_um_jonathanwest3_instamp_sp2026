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
Vref must be a pin for external capacitor} 490 -270 0 0 0.4 0.4 {}
N 570 -350 630 -350 {lab=Vout}
N 610 -350 610 -310 {lab=Vout}
C {bandgap_x.sym} 480 -350 0 0 {name=x1}
C {opamp_x.sym} 780 -370 0 0 {name=x2}
C {ipin.sym} 630 -390 0 0 {name=p1 lab=Vp}
C {ipin.sym} 630 -370 0 0 {name=p2 lab=Vn}
C {opin.sym} 930 -390 0 0 {name=p3 lab=Vout}
C {opin.sym} 610 -310 0 0 {name=p4 lab=Vref}
