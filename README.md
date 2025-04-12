
[![GDS](../../actions/workflows/gds.yaml/badge.svg)](../../actions/workflows/gds.yaml)
[![DRC](../../actions/workflows/drc.yaml/badge.svg)](../../actions/workflows/drc.yaml)
[![LVS](../../actions/workflows/lvs.yaml/badge.svg)](../../actions/workflows/lvs.yaml)
[![DOCS](../../actions/workflows/docs.yaml/badge.svg)](../../actions/workflows/docs.yaml)
[![SIM](../../actions/workflows/sim.yaml/badge.svg)](../../actions/workflows/sim.yaml)

# Who
Group 05 (Manuel,Emilien,Amir,Fabrice)

# Why
We want to bake. Thus, we somehow have to measure the temperature in the oven --> There is a need for a temperature sensor.
This module creates an output current (almost linearly) dependent on the present temperature.



# What

| What            |        Cell/Name |
| :-              |  :-:       |
| Schematic       | design/JNW_GR05_SKY130A/JNW_GR05.sch |
| Schematic       | design/JNW_GR05_SKY130A/OTA_Manuel.sch |
| Schematic       | design/JNW_GR05_SKY130A/Comparator.sch |
| Schematic       | design/JNW_GR05_SKY130A/asynCounter_8bit.sch|



&#10060; Das ist eine abgelehnte Option.

# Changelog/Plan

| Version | Status | Comment|
| :---| :---| :---|
|0.1.0 | &#9989; | Fulfills the criterions for milestone 01 (principles) |
|1.0.0 | &#9989; | Submission for milestone 02 (schematic)|
|2.0.0 | &#10060;| Submission for milestone 03 (layout) |



# Signal interface

| Signal       | Direction | Domain  | Description                               |
| :---         | :---:     | :---:   | :---                                      |
| VDD_1V8         | Input     | VDD_1V8 | Main supply                              |
| VSS         | Input     | Ground  |                                           |
| PWRUP_1V8     | Input    | VDD_1V8 | Power up the circuit  (not implemented yet)                     |
| CLK | Input | System clock, could also be taken from on-chip clock source | 
| RESET | Input | Resets the internal 8 bit counter |
|Q1...Q7    | Output    | 8 bit output vector, straight binary |






# Descriptions of the individual blocks can be found on the schmeatic page

The end.
