import yaml
import matplotlib.pyplot as plt
import numpy as np
import os

def main(directory="output_tran"):  # Directory containing the YAML files
    # List all YAML files in the directory
    # yaml_files = [f for f in os.listdir(directory) if f.endswith(".yaml")]

    
    # corners (without MC mismatch)
    """
    output_tran/tran_SchGtKssThVl
    output_tran/tran_SchGtKffThVl
    output_tran/tran_SchGtKsfThVl
    output_tran/tran_SchGtKfsThVl
    output_tran/tran_SchGtKssTlVl
    output_tran/tran_SchGtKffTlVl
    output_tran/tran_SchGtKsfTlVl
    output_tran/tran_SchGtKfsTlVl
    output_tran/tran_SchGtKssThVh
    output_tran/tran_SchGtKffThVh
    output_tran/tran_SchGtKsfThVh
    output_tran/tran_SchGtKfsThVh
    output_tran/tran_SchGtKssTlVh
    output_tran/tran_SchGtKffTlVh
    output_tran/tran_SchGtKsfTlVh
    output_tran/tran_SchGtKfsTlVh"
    """

    yaml_names = [
        "tran_SchGtKssThVl",
        "tran_SchGtKffThVl",
        "tran_SchGtKsfThVl",
        "tran_SchGtKfsThVl",
        "tran_SchGtKssTlVl",
        "tran_SchGtKffTlVl",
        "tran_SchGtKsfTlVl",
        "tran_SchGtKfsTlVl",
        "tran_SchGtKssThVh",
        "tran_SchGtKffThVh",
        "tran_SchGtKsfThVh",
        "tran_SchGtKfsThVh",
        "tran_SchGtKssTlVh",
        "tran_SchGtKffTlVh",
        "tran_SchGtKsfTlVh",
        "tran_SchGtKfsTlVh"
    ]

    #   try to find the yaml files in the directory
    yaml_files = []
    for yaml_name in yaml_names:
        yaml_files += [f for f in os.listdir(directory) if f.startswith(yaml_name) and f.endswith(".yaml")]


    print("Number of YAML files found:", len(yaml_files))
    print("Files found:", yaml_files)

    voltage_string = "v_ref_"
    current_string = "i_out_"

    # two figures, one for current and one for voltage
    fig1 = plt.figure(figsize=(8, 6))
    fig2 = plt.figure(figsize=(8, 6))

    title_fontsize = 25
    axes_fontsize = 20

    # each file corresponds to one corner
    for file in yaml_files:
        file_path = os.path.join(directory, file)

        yaml_name = file.split(".")[0]
        _, parameters = yaml_name.split("_")
        
        # Read the YAML file
        with open(file_path, 'r') as f:
            data = yaml.load(f, Loader=yaml.FullLoader)

        # buffer for temperatures, currents and voltages
        temperatures = []
        voltage_buffer = []
        current_buffer = []


        # Extract temperatures (keys of the data, like i_out_-10, v_ref_0)
       # print("Keys in the YAML file:", data.keys())
        print("-----------------------------------")

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

        # add 0.1°C * corner_number to temperature 
        #temperatures = np.array(temperatures) + 0.1 * corner_number

        # sort temperature and apply these indices also to current and voltage
        temperatures, current_buffer, voltage_buffer = zip(*sorted(zip(temperatures, current_buffer, voltage_buffer)))

        print("length of temperatures: ", len(temperatures), "length of current_buffer: ", len(current_buffer), "length of voltage_buffer: ", len(voltage_buffer))

        # plot with markers "x" and dashed line
        # fig1: current
        plt.figure(fig1)
        plt.plot(temperatures, current_buffer, marker="x", markersize=10, linestyle="--", linewidth=3, label=parameters)

        # fig2: voltage
        plt.figure(fig2)
        plt.plot(temperatures, voltage_buffer, marker="x", markersize=10, linestyle="--", linewidth=3, label=parameters)

    # use a viridis colormap for the lines

    """colormap = plt.get_cmap("viridis")
    # get the number of lines
    num_lines = len(yaml_files)
    # get the colors for the lines
    colors = [colormap(i/num_lines) for i in range(num_lines)]
    # set the colors for the lines
    for i, line in enumerate(fig1.axes[0].lines):
        line.set_color(colors[i])
    for i, line in enumerate(fig2.axes[0].lines):
        line.set_color(colors[i])
    """

    # find a colorbar for all lines

    for i, line in enumerate(fig1.axes[0].lines):
        # set the color of the line to the viridis colormap
        line.set_color(plt.cm.viridis(i / len(fig1.axes[0].lines)))
    for i, line in enumerate(fig2.axes[0].lines):
        # set the color of the line to the viridis colormap
        line.set_color(plt.cm.viridis(i / len(fig2.axes[0].lines)))
    # set the color of the lines to the viridis colormap


    # fig1: current
    plt.figure(fig1)
    plt.xlabel("Temperature (°C)", fontsize=axes_fontsize)
    plt.ylabel("Current (uA)", fontsize=axes_fontsize)
    # some spacing between the title and the plot
    plt.title("Current vs Temperature", fontsize=title_fontsize, pad=10, fontweight="bold")
    # set ticks to 0.5 of the font size
    plt.xticks(fontsize=axes_fontsize)
    plt.yticks(fontsize=axes_fontsize)
    # limit y-axis to 0 to 3
    plt.ylim(0, 5)
    plt.tight_layout()
    # legend with 2 columns
    plt.legend(ncol=2, loc="upper right", fontsize=0.8*axes_fontsize, framealpha=1)
    plt.grid()
    plt.savefig("current_vs_temperature_corners.png", dpi = 400)


    # fig2: voltage
    plt.figure(fig2)
    plt.xlabel("Temperature (°C)", fontsize=axes_fontsize)
    plt.ylabel("Voltage (V)", fontsize=axes_fontsize)
    # some spacing between the title and the plot
    plt.title("Voltage vs Temperature", fontsize=title_fontsize, pad=10, fontweight="bold")
    # set ticks to 0.5 of the font size
    plt.xticks(fontsize=axes_fontsize)
    plt.yticks(fontsize=axes_fontsize)
    # limit y from 1 to 1.2
    plt.ylim(1.05, 1.3)
    plt.tight_layout()
    # legend with 2 columns
    plt.legend(ncol=2, loc="upper right", fontsize=0.8*axes_fontsize, framealpha=1)
    plt.grid()
    plt.savefig("voltage_vs_temperature_corners.png", dpi = 400)

if __name__ == '__main__':
    main()
