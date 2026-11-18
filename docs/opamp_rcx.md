
# CACE Summary for opamp

**netlist source**: rcx

|      Parameter       |         Tool         |     Result      | Min Limit  |  Min Value   | Typ Target |  Typ Value   | Max Limit  |  Max Value   |  Status  |
| :------------------- | :------------------- | :-------------- | ---------: | -----------: | ---------: | -----------: | ---------: | -----------: | :------: |
| Gain 20dB            | ngspice              | gain                 |           18 dB |          ​ |        20 dB |          ​ |        22 dB |          ​ |   Skip 🟧    |
| Gain 20dB            | ngspice              | bw                   |         100 kHz |          ​ |      300 kHz |          ​ |            ​ |          ​ |   Skip 🟧    |
| Open loop gain       | ngspice              | gain                 |           70 dB |          ​ |        80 dB |          ​ |        90 dB |          ​ |   Skip 🟧    |
| Netgen LVS           | netgen_lvs           | lvs_errors           |               ​ |          ​ |            ​ |          ​ |            0 |          0 |   Pass ✅    |
| Magic DRC            | magic_drc            | drc_errors           |               ​ |          ​ |            ​ |          ​ |            0 |          ​ |   Skip 🟧    |
| Magic Antenna        | magic_antenna_check  | antenna_violations   |               ​ |          ​ |            ​ |          ​ |            0 |          ​ |   Skip 🟧    |


## Plots
