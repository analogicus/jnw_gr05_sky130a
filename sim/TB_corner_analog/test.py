import matplotlib.pyplot as plt
import numpy as np

# Daten aus der Tabelle
v_ref = [1.3441, 0.91934, 1.4015, 1.2337, 1.3297, 1.2408, 1.1807, 1.6248, 1.162, 0.97273,
         0.95624, 1.1636, 1.1686, 0.93963, 1.3515, 1.3188, 1.2736, 0.94532, 1.1972, 1.1638,
         1.4164, 1.1786, 1.2402, 1.1896, 1.4686, 1.2819, 1.0603, 1.2105, 1.0536, 0.81914]
i_out = [1.7792e-06, 6.8688e-07, 1.9688e-06, 1.522e-06, 1.7567e-06, 1.559e-06, 1.5501e-06, 2.6623e-06, 1.3488e-06, 9.4541e-07,
         9.3929e-07, 1.3802e-06, 1.5276e-06, 7.5388e-07, 1.7682e-06, 1.8523e-06, 1.6639e-06, 8.4485e-07, 1.4866e-06, 1.3839e-06,
         2.1115e-06, 1.4345e-06, 1.6918e-06, 1.5749e-06, 2.19e-06, 1.7889e-06, 1.2653e-06, 1.7193e-06, 1.2164e-06, 5.0224e-07]

# Modelle bezeichnen
modelle = np.arange(1, len(v_ref) + 1)

# Plot erstellen
fig, ax1 = plt.subplots(figsize=(12, 6))

# Erste y-Achse für v_ref
ax1.plot(modelle, v_ref, marker='s', label='v_ref [V]', color='darkorange')
ax1.set_xlabel("Modell")
ax1.set_ylabel("v_ref [V]", color='darkorange')
ax1.tick_params(axis='y', labelcolor='darkorange')

# Zweite y-Achse für i_out
ax2 = ax1.twinx()
ax2.plot(modelle, i_out, marker='o', label='i_out [A]', color='royalblue')
ax2.set_ylabel("i_out [A]", color='royalblue')
ax2.tick_params(axis='y', labelcolor='royalblue')

# Titel und Legende
plt.title("Strom und Referenzspannung vs. Modell")
fig.tight_layout()

# Raster hinzufügen
ax1.grid(True, linestyle='--', linewidth=0.5)

# Diagramm speichern
plt.savefig("single_T.png")  # Pfad und Dateiformat nach Bedarf anpassen
