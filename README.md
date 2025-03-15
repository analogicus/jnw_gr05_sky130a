
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
| Layout          | design/JNW_GR05_SKY130A/JNW_GR05.mag |


# Changelog/Plan

| Version | Status | Comment|
| :---| :---| :---|
|0.1.0 | :Approved: | Fulfills the criterions for milestone 01 |
|1.0.0 | :Under Inspection: | Submission for milestone 02 |


# Signal interface

| Signal       | Direction | Domain  | Description                               |
| :---         | :---:     | :---:   | :---                                      |
| VDD_1V8         | Input     | VDD_1V8 | Main supply                              |
| VSS         | Input     | Ground  |                                           |
| PWRUP_1V8     | Input    | VDD_1V8 | Power up the circuit  (not implemented yet)                     |
| CLK | Input | System clock, could also be taken from on-chip clock source | 
| RESET | Input | Resets the internal 8 bit counter |
|Q1...Q7    | Output    | 8 bit output vector, straight binary |



# Key parameters

| Parameter           | Min     | Typ           | Max     | Unit  |
| :---                | :---:     | :---:           | :---:     | :---: |
| Technology          |         | Skywater 130 nm |         |       |
| AVDD                | 1.7    | 1.8           | 1.9    | V     |
| Temperature         | -40     | 27            | 125     | C     |

A output for a (take the word!) typical simulation is given by the following figure.
It shows the temperature-dependent output current which is fed into the capacitor on the right hand side
and the reference voltage used for the comparator on the right hand side.
![I_out/V_ref vs. Temperature ](Media/output_vs_temperature.png)

Running for corners yields a similar but less consistent result (see below).
CAUTION: This is the first corner results, obtained on March 13. No steps taken yet to make it more consistent.
Output current:
![All corners: I_out vs. Temperature ](Media/current_vs_temperature_corners.png)
Reference voltage:
![All corners: V_ref vs. Temperature ](Media/voltage_vs_temperature_corners.png)



# Description of the individual blocks
## About the time-dependent current
* Observe temperature-dependency in the diode equation
* Take two  Bipolar-Transistors (BJTs) with different cross-sectional area and make them diode-connected.
* Source a not necessarily identical current through both BJTs, but have the ratio fixed. The current ratio is not allowed to cancel the cross-sectional area ratio.
* Add a resistor in series to the wider BJT, BJT remains connected to ground.
* Connect the top terminal of the resistor and the terminal of the BJT to the input of an Operational-Transconductance-Amplifier (OTA)
* Connect the output of the OTA to a Common-Source amplifier whose output current is mirrored back into the BJTs.

Now, the inputs of the OTA are equal, and a temperature dependent voltage across the resistor is generated based on the difference in the base-emitter voltage of two different BJTs.
Thus, the current sourced into the BJTs is also linearly dependent in temperature - as desired.
The general structure is shown in this sketch:
![Temperature Dependent Current Generation](Media/ptat_ctat_vref.png)

## About the reference voltage:
The temperature-dependent current is mirrored into a resistor connected in series to another diode-connected BJT. The temperature dependency cancels or at least counteracts for a proper choice of the series resistance. Thus, a local temperature-invariant voltage is created which will be used as a reference. The voltage reference is also shown in the plot above.
## About the OTA:
The OTA is used to force the terminal of the smaller BJT to the voltage on the terminal of the resistor connected in series to the bigger BJT.
It consists of a differential pair followed by a current-mirror stage.
Since the voltage at the OTA inputs is basically a diode voltage, the inputs are close to the threshold voltage of the NMOS. Thus, PMOSes are used for the input pair.
The figure below presents the OTA schematic. Further down, a stability analysis of the OTA is used to check for a stable system.
<img src="Media/OTA_Manuel.svg" alt="OTA Schematics" width="50%">

## OTA Analysis

#### Results for RT are:
| Parameter  | Value      | Unit           | Description               |
|------------|------------|----------------|---------------------------|
| f3db       | 175.57     | kHz            | 3 dB Bandwidth           |
| gm_db      | -16.309    | dB             | Gain Margin               |
| lf_gain    | 40.073     | dB             | Low-Frequency Gain        |
| pm_deg     | 67.513     | Degrees        | Phase Margin              |
| ug         | 17.257     | MHz            | Unity Gain Frequency      |

Most importantly, the OTA is stable and meets the typical 40 dB DC gain for two-stage systems.
Further, the parameters indicate a rather low 3dB bandwidth and low unity gain frequency.
In physical systems, temperature increases or decreasses with a (compared to the OTA paramters) large time constant, 
thus we see no need for adapting the amplifier design.

#### Obtained bodeplot:
![I_out/V_out vs. Temperature ](Media/bodeplot.png)


## About the comparator:
The comparator allows us to know when the capacitor voltage is higher than the reference voltage. It is a strongARM latch as shown in an article of Behzad Razavi.
Its functionment is composed of a phase of charge and a phase of evaluation driven by a clock. When the clock signal is low, the internal nodes (outputs and intermediate nodes) are pre-charged to VDD. When the clock signal goes high, the input transistors compare the differential input voltages. If one input is higher than the other, the positive feedback mechanism quickly drives the outputs to opposite logic levels, producing a strong digital output (high or low).
Since the comparator gives the wanted output half of the time (because of the charge's phase), the output is connected to a RS latch.
The schematic of this comparator can be seen on the next figure.
![Comparator's schematic ](Media/comparator.png)
link to Behzad Razavi's article : https://www.seas.ucla.edu/brweb/papers/Journals/BR_Magzine4.pdf

## About the counter:
Our objective is to count the number of time the capacitor can be charge during a certain amount of time, to count we use a synchronous counter made of JK fliflop. In this counter, every flipflop is connected to the same clock which eliminite any delay compared to an asynchronous counter. The J and K output of each flipflop are driven by the input and ouput of the precedent flipflop with an AND gate allowing to count in binary. A reset input allows to reset every flipflop of the counter at the same time.
The schematic of the 8 bits counter is shown in the figure below.
![Counter schematic ](Media/counter.png)

## About the digital output proportional to temperature
The principle is to count the number of time the capacitor can be charged and discharged for a certain amount of time. To do that the comparator compare the voltage of the capacitor with the reference voltage. The output allows to discharge the capacitor thanks to a transistor. then the output is a pulse signal that goes high every time the capacitor voltage is higher than the reference. The counter then counts these pulses.
Counting how much the capacitor charge and discharge allows us to be more precise than just counting how much time the capacitor take to charge one time.
the more time we take to count, the more the accuracy is high. For the moment we can count for 590,59 μs because with this much time there is a difference of 160 periods between the count at -40°C and 120°C so one more period means one more degree, if it is perfectly linear it would mean an accuracy of +- 1°C.
The reset signal allows to determine the measurment time so in this case it must be a pulse signal that pulse every 590,59 μs. Since we can only count to 256 and that, in the worse case, we have to count 455 period (at 120°C) and at best 295 periods (at -40°C). So there will be an overflow but it is not a problem since no matter the temperature there will only be one overflow. To know the temperature we will then need to convert the binary output into decimal number and then do an offset to have a correct value.

## For completeness: View of the entire Top-Level design
![Top-Level Design](Media/system_design.svg)


The end.
