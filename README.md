
[![GDS](../../actions/workflows/gds.yaml/badge.svg)](../../actions/workflows/gds.yaml)
[![DRC](../../actions/workflows/drc.yaml/badge.svg)](../../actions/workflows/drc.yaml)
[![LVS](../../actions/workflows/lvs.yaml/badge.svg)](../../actions/workflows/lvs.yaml)
[![DOCS](../../actions/workflows/docs.yaml/badge.svg)](../../actions/workflows/docs.yaml)
[![SIM](../../actions/workflows/sim.yaml/badge.svg)](../../actions/workflows/sim.yaml)

# Disclaimer regarding Layout
The LVS check is run successfully on the individual design of the Comparator and the OTA. Unfavorable, the LVS fails on the layout for the entire system,
maybe due to a an error with the component matching. Further, issues with the docker for generating the digital layout prohibited the conversion.
For completeness, the overall layout of the analog part (with the lvs error) is published. Changing the Makefile in the work directory allows verifying that lvs runs successfully for the Comparator and the OTA.

# Disclaimer regarding Counter
The counter was changed to a verilog based implementation and runs smooth locally, and also the reset signal works properly. Merging with the main branch failed, so the design can be found in the branch "Emilien". 


# Who
Group 05 (Manuel,Emilien,Amir,Fabrice)

# Why
Temperature has a major impact on the functionalty of devices and the materials they are made of.
Hence, tracking temperature is a relevant task. In automotive, -40 °C to 125 °C is a typical range where a system
must work properly. We use this definition to derive the operating range of a new CMOS temperature sensor with
the skywater 130 PDK. In principle, the sensor works by transducing temperature into current which can be converted into time.
From that, it is possible to obtain a digital output. This repo contains the relevant design files (schematic, layout), it provides
descriptions of the fundamental principle and it documents the design steps.


# What

| What            |        Cell/Name |
| :-              |  :-:       |
| Schematic       | design/JNW_GR05_SKY130A/JNW_GR05.sch |
| Schematic       | design/JNW_GR05_SKY130A/OTA_Manuel.sch |
| Schematic       | design/JNW_GR05_SKY130A/Comparator.sch |
| System Verilog       | design/Couner|


# Changelog/Plan

| Version | Status | Comment|
| :---| :---| :---|
|0.1.0 | &#9989; | Fulfills the requirements for milestone 01 (principles) |
|1.0.0 | &#9989; | Fulfills the requirements for milestone 02 (schematic)|
|2.0.0 | &#10060;| Submission for milestone 03 (layout) |



# Signal interface

| Signal       | Direction | Domain  | Description                               |
| :---         | :---:     | :---:   | :---                                      |
| VDD_1V8         | Input     | VDD_1V8 | Main supply                              |
| VSS         | Input     | Ground  |                                           |
| CLK | Input | System clock, could also be taken from on-chip clock source | 
| RESET | Input | Resets the internal 8 bit counter |
|Q1...Q7    | Output    | 8 bit output vector, straight binary |






# Descriptions of the individual blocks can be found on the schmeatic page

The end.
