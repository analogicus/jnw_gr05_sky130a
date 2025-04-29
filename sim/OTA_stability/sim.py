# find all .yaml files in the current directory and subdirectory outout_tran
import yaml
import matplotlib.pyplot as plt
import numpy as np
import os

directory = "output_lstb"  # Directory containing the YAML files

# List all YAML files in the directory
yaml_files = [f for f in os.listdir(directory) if f.endswith(".yaml")]

print("Number of YAML files found:", len(yaml_files))

"""
data format:
f3db: 172989.2
gm_db: -16.05101
lf_gain: 40.14619
pm_deg: 67.24746
ug: 17248910.0


"""

# show all data in one table

# set up data buffer
data_buffer = {
    "f3db": [],
    "gm_db": [],
    "lf_gain": [],
    "pm_deg": [],
    "ug": []
}
# loop through all files
for yaml_file in yaml_files:
    # open the file
    with open(os.path.join(directory, yaml_file), "r") as f:
        # load the data
        data = yaml.safe_load(f)
        # print(data)
        # loop through all keys
        for key in data_buffer.keys():
            # append the data to the buffer
            data_buffer[key].append(data[key])

# print the data buffer and the name of the yaml file

    # for each category, print min and max
print("YAML files found:")
for yaml_file in yaml_files:
    print(yaml_file)
print("Data buffer:")
for key in data_buffer.keys():
    #print("Key:", key)
    #print(data_buffer[key])
    print("Min:", min(data_buffer[key]))
    print("Max:", max(data_buffer[key]))
    
    #print("Mean:", np.mean(data_buffer[key]))

"""
# plot the data
fig, ax = plt.subplots(figsize=(20, 13))
# plot the data
ax.plot(data_buffer["f3db"], label="f3db")
ax.plot(data_buffer["gm_db"], label="gm_db")
ax.plot(data_buffer["lf_gain"], label="lf_gain")    
ax.plot(data_buffer["pm_deg"], label="pm_deg")
ax.plot(data_buffer["ug"], label="ug")
# set the title and labels
ax.set_title("Data from YAML files")
ax.set_xlabel("File number")
ax.set_ylabel("Value")
# set the legend
ax.legend()
# show the plot 
plt.show()
# save the plot
fig.savefig("data_plot.png")
"""

