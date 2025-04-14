### About the comparator:
The comparator detects when the capacitor voltage exceeds the reference voltage. It is a StrongARM latch, as described in the article by Behzad Razavi.

Its operation consists of two phases, controlled by a clock signal:

* Pre-charge Phase: When the clock is low, the internal nodes (outputs and intermediate nodes) are pre-charged to VDD.
* Evaluation Phase: When the clock goes high, the input transistors compare the differential input voltages. If one input is higher than the other, a positive feedback mechanism rapidly drives the outputs to opposite logic levels, generating a strong digital output (high or low). One benefit of the StrongARM latch is its low static power draw.
Since the comparator produces a valid output only half of the time (due to the pre-charge phase), its output is connected to an RS latch to maintain a stable signal.
link to Behzad Razavi's article : https://www.seas.ucla.edu/brweb/papers/Journals/BR_Magzine4.pdf
