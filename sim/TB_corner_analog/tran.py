import yaml
import matplotlib.pyplot as plt
import numpy as np
import os

def main(directory="output_tran"):  # Directory containing the YAML files
    # List all YAML files in the directory
    yaml_files = [f for f in os.listdir(directory) if f.endswith(".yaml")]

    print("Number of YAML files found:", len(yaml_files))
    print("Files found:", yaml_files)


    voltage_string = "v_ref_"
    current_string = "i_out_"

    # two figures, one for current and one for voltage
    fig1 = plt.figure(figsize=(20, 13))
    fig2 = plt.figure(figsize=(20, 13))

    # each file corresponds to one corner
    for corner_number, file in enumerate(yaml_files):
        file_path = os.path.join(directory, file)
        
        # Read the YAML file
        with open(file_path, 'r') as f:
            data = yaml.load(f, Loader=yaml.FullLoader)

        # buffer for temperatures, currents and voltages
        temperatures = []
        voltage_buffer = []
        current_buffer = []


        # Extract temperatures (keys of the data, like i_out_-10, v_ref_0)
        for key in data:
            if key.startswith(current_string):
                temp = int(key.split("_")[-1])  # Extract temperature from the key
                if temp not in temperatures:
                    temperatures.append(temp)

                # Store currents in buffer
                current_buffer.append(data[key])

            elif key.startswith(voltage_string):
                # Store voltages in buffer
                voltage_buffer.append(data[key])

        # convert the current from A to uA
        current_buffer = np.array(current_buffer) * 1e6

        # plot with markers "x" and dashed line
        # fig1: current
        plt.figure(fig1)
        plt.plot(temperatures, current_buffer, marker="x", markersize=10, linestyle="--", linewidth=3, label="Corner " + str(corner_number))

        # fig2: voltage
        plt.figure(fig2)
        plt.plot(temperatures, voltage_buffer, marker="x", markersize=10, linestyle="--", linewidth=3, label="Corner " + str(corner_number))

    # fig1: current
    fontsize = 40
    plt.figure(fig1)
    plt.xlabel("Temperature (°C)", fontsize=fontsize)
    plt.ylabel("Current (uA)", fontsize=fontsize)
    # some spacing between the title and the plot
    plt.title("Current vs Temperature", fontsize=2*fontsize, pad=30)
    # set ticks to 0.5 of the font size
    plt.xticks(fontsize=0.5*fontsize)
    plt.yticks(fontsize=0.5*fontsize)
    plt.legend()
    plt.grid()
    plt.savefig("current_vs_temperature_corners.png")


    # fig2: voltage
    plt.figure(fig2)
    plt.xlabel("Temperature (°C)", fontsize=fontsize)
    plt.ylabel("Voltage (mV)", fontsize=fontsize)
    # some spacing between the title and the plot
    plt.title("Voltage vs Temperature", fontsize=2*fontsize, pad=30)
    # set ticks to 0.5 of the font size
    plt.xticks(fontsize=0.5*fontsize)
    plt.yticks(fontsize=0.5*fontsize)
    plt.legend()
    plt.grid()
    plt.savefig("voltage_vs_temperature_corners.png")

if __name__ == '__main__':
    main()
