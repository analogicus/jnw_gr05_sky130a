import yaml
import matplotlib.pyplot as plt

# Datei laden
file_path = 'output_tran/tran_SchGtKttTtVt.yaml'
with open(file_path, 'r') as file:
    data = yaml.load(file, Loader=yaml.FullLoader)

# Extrahieren der Daten
temperatures = [-20, -40, 0, 100, 120, 20, 40, 60, 80]
i_out = [data[f'i_out_{temp}'] for temp in temperatures]
v_out = [data[f'v_out_{temp}'] for temp in temperatures]

# Scatter Plot mit zwei Y-Achsen
fig, ax1 = plt.subplots(figsize=(10, 6))

# Scatter Plot für i_out (mit der linken Y-Achse)
ax1.set_xlabel('Temperatur (°C)')
ax1.set_ylabel('i_out (A)', color='tab:blue')
ax1.scatter(temperatures, i_out, color='tab:blue', label='i_out', marker='o')
ax1.tick_params(axis='y', labelcolor='tab:blue')

# Zweite Y-Achse für v_out
ax2 = ax1.twinx()
ax2.set_ylabel('v_out (V)', color='tab:red')
ax2.scatter(temperatures, v_out, color='tab:red', label='v_out', marker='x')
ax2.tick_params(axis='y', labelcolor='tab:red')

# Titel und Gitter
plt.title('Scatter Plot: Temperatur-Sweep für i_out und v_out')
plt.grid(True)

# Legende
fig.legend(loc='upper left', bbox_to_anchor=(0.1, 0.9))

# Diagramm speichern
output_file = 'output_vs_temperature.png'
plt.savefig(output_file)

# Diagramm anzeigen
plt.show()

print(f'Diagramm wurde als {output_file} gespeichert.')
