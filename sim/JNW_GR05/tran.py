import yaml
import matplotlib.pyplot as plt
import numpy as np
import os

def blank():
    # This function is intentionally left blank
    pass

def main(name="output_tran/tran_SchGtKttTtVt"):
    
    return # comment out the main function to avoid running it

    # Path to the YAML file
    yaml_file_path  = name + ".yaml"
    
    # Lists to store temperature, i_out, and v_ref values1
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
    # use scientific notation for polynomial coefficients with 2 decimal places
    poly_str = f"{poly_coeffs[0]:.2e}x² + {poly_coeffs[1]:.2e}x + {poly_coeffs[2]:.2e}"
    
    # Create scatter plot with two Y-axes
    fig, ax1 = plt.subplots(figsize=(5, 4), dpi=150)
    ax1.grid(True, linestyle='--', alpha=0.6)  # Add grid
    
    # Scatter plot for i_out
    axes_fontsize = 15
    ax1.set_xlabel('Temperature (°C)', fontsize=axes_fontsize)
    ax1.set_ylabel('i_out (µA)', color='tab:blue', fontsize=axes_fontsize)
    ax1.scatter(temperatures, [i * 1e6 for i in i_out], color='tab:blue', label='i_out', marker='o')
    ax1.tick_params(axis='x', labelsize=axes_fontsize)
    ax1.tick_params(axis='y', labelcolor='tab:blue', labelsize=axes_fontsize)
    
    # Scatter plot for v_ref
    ax2 = ax1.twinx()
    ax2.set_ylabel('v_ref (V)', color='tab:red', fontsize=axes_fontsize)
    ax2.scatter(temperatures, v_ref, color='tab:red', label='v_ref', marker='x')
    ax2.tick_params(axis='y', labelcolor='tab:red', labelsize=axes_fontsize)
    
    # Add polynomial fit <curve
    temp_range = np.linspace(min(temperatures), max(temperatures), 100)
    ax1.plot(temp_range, [poly_eq(t) * 1e6 for t in temp_range], 'b--', label='polynomial fit i_out')

    # Title
    plt.title('Output Current vs Temperature', fontsize=18, fontweight='bold', pad = 10)
    
   
    
    
    # Sensitivity calculation
    min_i_out, max_i_out = min(i_out) * 1e6, max(i_out) * 1e6
    min_vref, max_vref = min(v_ref), max(v_ref)
    temperature_range = max(temperatures) - min(temperatures)
    sensitivity = (max_i_out - min_i_out) / temperature_range * 1000 # from uA to nA)
    
    # Legend
    parameter_string = (
        f'Min i_out: {min_i_out:.2f} µA, Max i_out: {max_i_out:.2f} µA\n'
        f'Swing in V_ref: {(max_vref - min_vref):.4f} V\n'
        f'Temperature Range: {temperature_range}°C\n'
        f'Sensitivity: {sensitivity:.4f} nA/°C\n'
        f'Polynomial Fit in I_out: \n{poly_str}'
    )
    

    lines, labels = ax1.get_legend_handles_labels()
    lines2, labels2 = ax2.get_legend_handles_labels()
    ax2.legend(lines + lines2, labels + labels2, loc='upper left', 
               #title = parameter_string, 
               fontsize=12, title_fontsize = 15)
    # not transparent
    plt.gca().get_legend().get_frame().set_alpha(1.0)
    # Save and show plot
    output_file = 'output_vs_temperature.png'
    plt.savefig(output_file, dpi=300, bbox_inches='tight')
    plt.show()
    
    print(f'Saved diagram as {output_file}')

def comp_error():


    # find yaml file
    directory = "output_tran"
    filename = "tran_SchGtKttTtVt.yaml"

    # open the file
    file_path = os.path.join(directory, filename)
    # Read the YAML file
    with open(file_path, 'r') as f:
        data = yaml.load(f, Loader=yaml.FullLoader)
    """
    File format:

    quantity_temperature_timeindex_value

    v_cap_20_0: 0.0006886572
    v_cap_20_1: 6.157451e-05
    v_cap_20_2: -2.521162e-06
    v_cap_20_3: 9.957027e-08
    v_cap_20_4: 1.044943e-07
    v_cap_20_5: -1.137382e-07
    v_comp_20_0: 1.72554
    v_comp_20_1: 1.800142
    v_comp_20_2: 1.799954
    v_comp_20_3: 1.800018
    v_comp_20_4: 1.799993
    v_comp_20_5: 1.800003
    v_ref_20_0: 0.04390167
    v_ref_20_1: 0.04320355
    v_ref_20_2: 0.0426928
    v_ref_20_3: 0.04236552
    v_ref_20_4: 0.04216278
    v_ref_20_5: 0.04203406

    """

    # Iterate through all keys in the YAML data to find all temperatures and time indices

    temperatures = []
    time_indices = []

    for key, value in data.items():

        if key.startswith('v_ref'):
            _, _, temp, time_index = key.split("_")

            if temp not in temperatures:
                temperatures.append(temp)
            if time_index not in time_indices:
                time_indices.append(time_index)

    # Create a dictionary for all temperatures.
        # Each entry shall be an additional dictionary with the keys v_cap, v_clk, v_comp and v_ref, which will be arrays of lenght equal to the number of time indices.

    # Create a dictionary for all temperatures
    temp_dict = {}

    for temp in temperatures:

        temp_dict[temp] = {
            'v_cap': np.zeros(len(time_indices)),
            'v_comp': np.zeros(len(time_indices)),
            'v_ref': np.zeros(len(time_indices))
        }

    # Iterate through all keys in the YAML data to fill the dictionary
    for key, value in data.items():
        if key.startswith('v_cap'):
            _, _, temp, time_index = key.split("_")
            temp_dict[temp]['v_cap'][int(time_index)] = value

        elif key.startswith('v_comp'):
            _, _, temp, time_index = key.split("_")
            temp_dict[temp]['v_comp'][int(time_index)] = value

        elif key.startswith('v_ref'):
            _, _, temp, time_index = key.split("_")
            temp_dict[temp]['v_ref'][int(time_index)] = value

    # Now temp_dict contains all the data for each temperature
    # Plotting

    # I need three subplots in vertical for each temperature
    # First plot: clock
    # Second plot: v_comp
    # Third plot: v_ref and v_cap, also plot the difference between v_ref and v_cap



    for temperature, values in temp_dict.items():
        v_cap = values['v_cap']
        v_comp = values['v_comp']
        v_ref = values['v_ref']

        # create artificial clock based on the period of 20 ns, start with high. Each timestep has 1ns
            # where the time index modulo 20 is below 10, set to 1.8, else set to 0
        v_clk = np.zeros(len(v_cap))
        for i in range(len(v_clk)):
            if i % 20 < 10:
                v_clk[i] = 1.8
            else:
                v_clk[i] = 0

        print(len(v_cap), len(v_comp), len(v_ref))


        # Slice time and signals for the range from 1200 ns to 1400 ns
        start_idx = 1250
        end_idx = 1350
        
        v_comp = v_comp[start_idx:end_idx]
        v_ref = v_ref[start_idx:end_idx]
        v_cap = v_cap[start_idx:end_idx]
        v_clk = v_clk[start_idx:end_idx]

        # Create time array based on the length of the data (in us)
        time = np.arange(len(v_cap)) * 1/20 * 1e-3  # 20 ns clock period in us
        
        # Create subplots
        fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 8), dpi=300)
        fig.subplots_adjust(hspace=0.6)  # Increase space between plots
        title_fontsize = 16
        axes_fontsize = 14

        # Plot the v_comp and v_clk
        ax1.plot(time, v_comp, label='V_comp', color='orange')
        ax1.plot(time, v_clk, label='V_clk', color='blue')
        ax1.set_title(f'V_comp Signal at {temperature}°C', fontsize=title_fontsize)
        ax1.set_xlabel('Time (us)', fontsize=axes_fontsize)
        ax1.set_ylabel('Voltage (V)', fontsize=axes_fontsize)
        ax1.tick_params(axis='both', labelsize=axes_fontsize)
        ax1.legend()
        ax1.grid(True, linestyle='--', alpha=0.6)


    
        # Plot the v_ref and v_cap
        ax2.plot(time, v_ref, label='V_ref', color='green')
        ax2.plot(time, v_cap, label='V_cap', color='red')
        ax2.set_title(f'V_ref and V_cap Signals at {temperature}°C', fontsize=title_fontsize)
        ax2.set_xlabel('Time (us)', fontsize=axes_fontsize)
        ax2.set_ylabel('Voltage (V)', fontsize=axes_fontsize)
        ax2.tick_params(axis='both', labelsize=axes_fontsize)
        # limit between 0.8 and 1.2
        ax2.set_ylim(0.8, 1.2)
        ax2.legend()
        ax2.grid(True, linestyle='--', alpha=0.6)

        # Add a title to the figure 
        fig.suptitle(f'Simulation Results at {temperature}°C', fontsize=20, fontweight='bold')

        # Save the figure
        plt.savefig(f'simulation_results_{temperature}.png', dpi=300, bbox_inches='tight')
        plt.close(fig)  # Close the figure to free memory


if __name__ == '__main__':
    blank()
    # main()
    # comp_error()
    
