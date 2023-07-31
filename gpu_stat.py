import json
import os
from prettytable import PrettyTable
path = "./gpu_stat"
if not os.path.exists(path):
    os.mkdir(path)
gpu_freq = []
for i in range(4):
    value = os.system(f"xpu-smi stats -d {i} -j > gpu_stat/{i}.json")
    gpu_freq.append(json.load(open(f"gpu_stat/{i}.json"))['device_level'][1]['value'])

t = PrettyTable(['GPU Device Id', 'GPU Operating Frequency'])
for i in range(4):
    t.add_row([i, gpu_freq[i]])
print(t) 
