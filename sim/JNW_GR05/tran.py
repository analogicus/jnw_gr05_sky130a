import yaml
import matplotlib.pyplot as plt

# Der Pfad zur YAML-Datei
yaml_file_path = 'output_tran/tran_SchGtKttTtVt.yaml'

# Listen für die Temperaturwerte, i_out- und v_out-Werte
temperatures = []
i_out = []
v_out = []

# YAML-Datei öffnen und laden
with open(yaml_file_path, 'r') as file:
    data = yaml.load(file, Loader=yaml.FullLoader)

    # Durch alle Schlüssel in den YAML-Daten iterieren
    for key, value in data.items():
        # Extrahiere die Temperatur aus dem Schlüssel
        if key.startswith('i_out'):
            temp = int(key.split('_')[-1])  # Temperatur aus dem Schlüssel extrahieren
            temperatures.append(temp)
            i_out.append(value)
        elif key.startswith('v_out'):
            temp = int(key.split('_')[-1])  # Temperatur aus dem Schlüssel extrahieren
            v_out.append(value)

# Sortiere die Temperaturen und bestimme die Schrittgröße
temperatures, i_out, v_out = zip(*sorted(zip(temperatures, i_out, v_out)))

step_size = abs(temperatures[1] - temperatures[0])

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
plt.title(f'Scatter Plot: Temperatur-Sweep für i_out und v_out (Schrittgröße: {step_size}°C)')
plt.grid(True)

# Legende
fig.legend(loc='upper left', bbox_to_anchor=(0.1, 0.9))

# Diagramm speichern
output_file = 'output_vs_temperature.png'
plt.savefig(output_file)

# Diagramm anzeigen
plt.show()

print(f'Diagramm wurde als {output_file} gespeichert.')
