import ltspice
import numpy as np
import matplotlib.pyplot as plt

# Datei laden
l = ltspice.Ltspice("output_lstb/lstb_SchGtKttTtVt.raw")
l.parse()

# get signals
time = l.get_time()
Vout = l.get_data('V(n003)')
Vt = l.get_data('V(n004)')
