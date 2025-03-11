import yaml
import matplotlib.pyplot as plt
import numpy as np

def main(name="output_tran/tran_SchGtKttTtVt"):
    # Path to the YAML file
    yaml_file_path  = name + ".yaml"
    
    # Lists to store temperature, i_out, and v_ref values
    temperatures = []
    i_out = []
    v_ref = []
    
    # Open and read the YAML file
    with open(yaml_file_path, 'r') as file:
        data = yaml.load(file, Loader=yaml.FullLoader)
    
        # Iterate through all keys in the YAML data
        for key, value in data.items():
            if key.startswith('i_out'):
                temp = int(key.split('_')[-1])
                temperatures.append(temp)
                i_out.append(value)
            elif key.startswith('v_out'):
                temp = int(key.split('_')[-1])
                v_ref.append(value)

    # Polynomial fitting
    poly_coeffs = np.polyfit(temperatures, i_out, 2)  # Quadratic fit
    poly_eq = np.poly1d(poly_coeffs)
    poly_str = f"{poly_coeffs[0]:.4e}x² + {poly_coeffs[1]:.4e}x + {poly_coeffs[2]:.4e}"
    
    # Create scatter plot with two Y-axes
    fig, ax1 = plt.subplots(figsize=(10, 6), dpi=150)
    ax1.grid(True, linestyle='--', alpha=0.6)  # Add grid
    
    # Scatter plot for i_out
    ax1.set_xlabel('Temperature (°C)', fontsize=12)
    ax1.set_ylabel('i_out (µA)', color='tab:blue', fontsize=12)
    ax1.scatter(temperatures, [i * 1e6 for i in i_out], color='tab:blue', label='i_out', marker='o')
    ax1.tick_params(axis='y', labelcolor='tab:blue')
    
    # Scatter plot for v_ref
    ax2 = ax1.twinx()
    ax2.set_ylabel('v_ref (V)', color='tab:red', fontsize=12)
    ax2.scatter(temperatures, v_ref, color='tab:red', label='v_ref', marker='x')
    ax2.tick_params(axis='y', labelcolor='tab:red')
    
    # Add polynomial fit <curve
    temp_range = np.linspace(min(temperatures), max(temperatures), 100)
    ax1.plot(temp_range, [poly_eq(t) * 1e6 for t in temp_range], 'b--', label='polynomial fit \non the current')

    # Title
    plt.title('Output Current vs Temperature', fontsize=14)
    
    # Legend
    lines, labels = ax1.get_legend_handles_labels()
    lines2, labels2 = ax2.get_legend_handles_labels()
    ax2.legend(lines + lines2, labels + labels2, loc='center left')
    
    # Sensitivity calculation
    min_i_out, max_i_out = min(i_out) * 1e6, max(i_out) * 1e6
    min_vref, max_vref = min(v_ref), max(v_ref)
    temperature_range = max(temperatures) - min(temperatures)
    sensitivity = (max_i_out - min_i_out) / temperature_range * 1000 # from uA to nA)
    
    # Annotation box
    ax1.text(0.25, 0.12, 
             f'Min i_out: {min_i_out:.2f} µA, Max i_out: {max_i_out:.2f} µA \n'
             f'Swing in V_ref: {(max_vref - min_vref):.4f} V \n'
             f'Temperature Range: {temperature_range}°C \n'
             f'Sensitivity: {sensitivity:.4f} nA/°C \n'
             f'Polynomial Fit in I_out: {poly_str}',
             horizontalalignment='left', verticalalignment='center',
             transform=ax1.transAxes, fontsize=10,
             bbox=dict(facecolor='white', alpha=1, edgecolor='black', boxstyle='round,pad=0.5'))
    
    # Save and show plot
    output_file = 'output_vs_temperature.png'
    plt.savefig(output_file, dpi=300, bbox_inches='tight')
    plt.show()
    
    print(f'Saved diagram as {output_file}')

if __name__ == '__main__':
    main()