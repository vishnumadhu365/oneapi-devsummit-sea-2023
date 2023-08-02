# oneapi-devsummit-sea-2023
This repository hosts the contents of the AI handson workshop, oneAPI Devsummit South East Asia 2023

## Pre-requisites
1. *You have registered and can login to the [Intel Developer Cloud (IDC)](https://www.intel.com/content/www/us/en/developer/tools/devcloud/services.html).* <br>
Yet to register on IDC? This [guide](https://github.com/bjodom/idc#account-registration) helps you get started
2. *Your laptop has a basic ssh client installed.*<br>
Most Linux distros comes pre-installed with an ssh client.<br> If you are on Microsoft Windows, open Command Prompt and verify that the commands 'ssh' and 'ssh-keygen' works. If it says 'command not recognized', you could install an ssh client like [MobaXterm*](https://mobaxterm.mobatek.net/download.html) or [Putty*](https://www.putty.org/)
3.  *You have access to the [oneAPI Discord](https://discord.gg/ycwqTP6) channel.*<br> This discord channel can help resolve your queries during and after the workshop.

## Getting started with IDC **wip**
<list the basic steps getting started with screen grabs .. login to IDC, verify there are no running instances, post certificate on profile, launch instance on schedule access, verify access using command ssh user@idcbetabatch.eglb.intel.com>
Once registered on IDC follow the following steps to access the IDC "Scheduled access" nodes.<br>
1. Sign-in to [cloud.intel.com](https://cloud.intel.com)<details><summary>More info</summary> </details>
2. <img width="841" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/2fcf7189-d3dc-4526-b004-175e212e3ea1">


## Getting started on AI workshop **wip**
<clone repo, run prepare_env.sh, note jupyter ip:port, open tunnel, access in local browser, rest of the instructions are on the ipynb notebook>
1. SSH into idc head node. <br>
Note: For the below command, replace 'user' with your actual username <br>
   ```
   ssh username@idcbetabatch.eglb.intel.com
   ```
   ==include success screenshot==
2. Request for compute node <br>
   ```
   srun -p pvc-shared --pty /bin/bash
   ```
   ==include success screenshot==
3. Clone this repository and change directory <br>
   ```
   git clone https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023.git
   cd oneapi-devsummit-sea-2023
   ```
   ==include success screenshot==
4. Prepare environment
   ```
   source prepare_env.sh
   ```
   ==include success screenshot==
5. Note down ip-address and port-number of jupyter server. Copy the url starting with localhost:xxxx <br>
   ==include success screenshot==
6. In a new terminal create an ssh tunnel to the jupyter server<br>
    ```
   ssh -L port-number:ip-address:portnumber username@idcbetabatch.eglb.intel.com
   ```
   sample ssh command --> ssh -L 8888:10.0.0.8:8888 u107456<span>@</span>idcbetabatch.eglb.intel.com
7. Open browser on laptop and hit the url copied earlier (starting with localhost:xxxx)

## Help improve IDC **wip**

## Common issues **wip**
1. I was running the ipynb notebook, then the terminal exited abrupty. How do I resume my work ?<br>
Login to the headnode >> Using srun get inside a compute node >> Navigate to the cloned repo directory >> Run 'source resume_env.sh'. As before this will print the Jupyter Notebook link >> Repeat step 5,6,7 in 'Getting started on AI workshop' section above.<br>
2. GPU Notebook has been running for more than 10 mins, seems its stuck, what to do ?
The issue could probably be due to overutilization of the GPU. You could try the following, within the GPU notebook navigate to Kernel >> Restart and Clear All Output >> Manually run the cells from the top and this time choose a different GPU device based on GPU frequency table (go for the one with the lowest frequency).
3. Facing random errors ?
Try after restarting the Jupyter Kernel. Also, note that the notebook is designed to be executed top-to-bottom without skipping any cells. <br>If nothing works, feel free to reach out to the presenters onsite or post the issue on Discord for assistance.


<details>
<summary><b> Legal Notices and Disclaimers</b></summary>
Intel technologies’ features and benefits depend on system configuration and may require enabled hardware, software or service activation. Performance varies depending on system configuration. No computer system can be absolutely secure. Check with your system manufacturer or retailer or learn more at www.intel.com.<br>
Cost reduction scenarios described including recommendations are intended as examples of how a given Intel-based product, in the specified circumstances and configurations, may affect future costs and provide cost savings. Circumstances will vary. Intel does not guarantee any costs or cost reduction.<br>
This document contains information on products, services and/or processes in development. All information provided here is subject to change without notice. Contact your Intel representative to obtain the latest forecast, schedule, specifications and roadmaps. <br>
Any forecasts of goods and services needed for Intel’s operations are provided for discussion purposes only. Intel will have no liability to make any purchase in connection with forecasts published in this document.<br>
Intel technologies may require enabled hardware, software or service activation.<br>
Software and workloads used in performance tests may have been optimized for performance only on Intel microprocessors.  <br>
Performance tests, are measured using specific computer systems, components, software, operations and functions.  Any change to any of those factors may cause the results to vary.  You should consult other information and performance tests to assist you in fully evaluating your contemplated purchases, including the performance of that product when combined with other products.   For more complete information visit www.intel.com/benchmarks.<br>

|* Other names and brands may be claimed as the property of others. <br>

Your costs and results may vary. <br>
© Intel Corporation.  Intel, the Intel logo, and other Intel marks are trademarks of Intel Corporation or its subsidiaries.  Other names and brands may be claimed as the property of others.<br>
Copyright 2023 Intel Corporation.rademarks of Intel Corporation or its subsidiaries.  Other names and brands may be claimed as the property of others.<br>
Copyright 2023 Intel Corporation.
