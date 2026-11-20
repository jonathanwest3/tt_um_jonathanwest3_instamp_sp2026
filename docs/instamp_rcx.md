
# CACE Summary for instamp

**netlist source**: rcx

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Gain 26dB            | ngspice              | gain                 |           24 dB |          ​ |        26 dB |          ​ |        28 dB |          ​ |   Skip 🟧    |
| Gain 26dB            | ngspice              | bw                   |         100 kHz |          ​ |      300 kHz |          ​ |            ​ |          ​ |   Skip 🟧    |
| Gain (20dB)          | ngspice              | gain                 |           18 dB |          ​ |        20 dB |          ​ |        22 dB |          ​ |   Skip 🟧    |
| Gain (20dB)          | ngspice              | bw                   |         100 kHz |          ​ |      200 kHz |          ​ |            ​ |          ​ |   Skip 🟧    |
| Rise, fall and slew  | ngspice              | rise                 |          100 ns |          ​ |       300 ns |          ​ |       500 ns |          ​ |   Skip 🟧    |
| Rise, fall and slew  | ngspice              | fall                 |          100 ns |          ​ |       300 ns |          ​ |       500 ns |          ​ |   Skip 🟧    |
| Rise, fall and slew  | ngspice              | sr_rise              |        0.5 V/us |          ​ |     0.8 V/us |          ​ |     1.5 V/us |          ​ |   Skip 🟧    |
| Rise, fall and slew  | ngspice              | sr_fall              |        0.5 V/us |          ​ |     0.8 V/us |          ​ |     1.5 V/us |          ​ |   Skip 🟧    |
| Rise, fall and slew  | ngspice              | over                 |               ​ |          ​ |         1 mV |          ​ |         3 mV |          ​ |   Skip 🟧    |
| Rise, fall and slew  | ngspice              | under                |               ​ |          ​ |         1 mV |          ​ |         3 mV |          ​ |   Skip 🟧    |
| Rise, fall and slew  | ngspice              | ivdd                 |               ​ |          ​ |       500 uA |          ​ |       750 uA |          ​ |   Skip 🟧    |
| CMRR and PSRR        | ngspice              | CMRR                 |           60 dB |          ​ |        70 dB |          ​ |            ​ |          ​ |   Skip 🟧    |
| CMRR and PSRR        | ngspice              | PSRR                 |           60 dB |          ​ |        70 dB |          ​ |            ​ |          ​ |   Skip 🟧    |
| Noise                | ngspice              | noise                |               ​ |          ​ |       100 uV |          ​ |       300 uV |          ​ |   Skip 🟧    |
| Netgen LVS           | netgen_lvs           | lvs_errors           |               ​ |          ​ |            ​ |          ​ |            0 |          0 |   Pass ✅    |
| Magic DRC            | magic_drc            | drc_errors           |               ​ |          ​ |            ​ |          ​ |            0 |          ​ |   Skip 🟧    |
| Magic Antenna        | magic_antenna_check  | antenna_violations   |               ​ |          ​ |            ​ |          ​ |            0 |          ​ |   Skip 🟧    |


## Plots
