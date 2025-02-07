import re
import matplotlib.pyplot as plt

def extract_values(file_path):
    # Datei einlesen
    with open(file_path, "r", encoding="utf-8", errors="ignore") as file:
        lines = file.readlines()
    
    # Wertebereich
    values_range = range(-20, 121, 20)
    extracted_values = {"v_cap": {}, "v_load": {}}
    
    # Regulärer Ausdruck für v_cap und v_load mit den gewünschten Zahlen
    pattern = re.compile(r"(v_cap|v_load)_(-?\d+)\s*=\s*([\d.eE+-]+)")
    
    for line in lines:
        match = pattern.search(line)
        if match:
            var_type, number, value = match.groups()
            number = int(number)
            if number in values_range:
                extracted_values[var_type][number] = float(value)
    
    return extracted_values

def plot_values(values):
    plt.figure(figsize=(8, 5))
    
    for key, val_dict in values.items():
        if val_dict:
            sorted_items = sorted(val_dict.items())
            x, y = zip(*sorted_items)
            plt.plot(x, y, marker='o', label=key)
    
    plt.xlabel("Zahl")
    plt.ylabel("Wert")
    plt.title("Extrahierte Werte von v_cap und v_load")
    if any(val_dict for val_dict in values.values()):
        plt.legend()
    plt.grid()
    plt.show()

# Beispielaufruf
import os

datei_verzeichnis = "output_tran"
dateien = [f for f in os.listdir(datei_verzeichnis) if f.startswith("tran_SchGtKttTtVt_") and f.endswith(".raw")]

for datei in dateien:
    datei_pfad = os.path.join(datei_verzeichnis, datei)
    werte = extract_values(datei_pfad)
    plot_values(werte)  # Anpassen!
werte = extract_values(datei_pfad)
plot_values(werte)
