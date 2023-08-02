<p align="center"><img width="749"  src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/cfd8c105-3ebf-4614-82e4-5fcbd130dc2f"></p>

## Welcome
Thank you for choosing to attend the AI Workshop @ oneAPI Devsummit 2023. This github repository holds the necessary artifacts for participating in the handson AI workshop.

## Objectives
1. Get the hands-on experience on the new [Intel® Developer Cloud (Beta)](https://www.intel.com/content/www/us/en/developer/tools/devcloud/services.html).
2. Explore the optimizations delivered through the [Intel Extension for Tensorflow* (ITEX)](https://github.com/intel/intel-extension-for-tensorflow), [docs](https://intel.github.io/intel-extension-for-tensorflow/latest/get_started.html).
3. Understand the specifics of effectively utilizing the following Intel® hardware for AI workloads, (1) the [4th Generation Intel® Xeon® Scalable Processor](https://ark.intel.com/content/www/us/en/ark/products/231746/intel-xeon-platinum-8480-processor-105m-cache-2-00-ghz.html) (codenamed Sapphire Rapids) and (2) the [Intel® Data Center GPU Max 1100](https://www.intel.com/content/www/us/en/products/sku/232876/intel-data-center-gpu-max-1100/specifications.html) (codenamed Ponte Vecchio).

## Pre-requisites
1. *You have registered and can login to the [Intel® Developer Cloud (IDC)](https://www.intel.com/content/www/us/en/developer/tools/devcloud/services.html).* <br>
Yet to register on IDC? This [guide](https://github.com/bjodom/idc#account-registration) helps you get started.
2. *Your laptop has a basic ssh client installed.*<br>
Most Linux/MacOS distros comes pre-installed with an ssh client.<br> If you are on Microsoft Windows, open Command Prompt and verify that the commands 'ssh' and 'ssh-keygen' works. If it says 'command not recognized', you could install an ssh client like [MobaXterm*](https://mobaxterm.mobatek.net/download.html) or [Putty*](https://www.putty.org/).
3.  *You have access to the [oneAPI Discord](https://discord.gg/ycwqTP6) channel.*<br> This discord channel can help resolve your queries during and after the workshop.

## Getting started with IDC 
<details><summary>Note : Have you already ssh'ed on to the head node? If so, you can skip this section.</summary> <img width="578" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/5899afbf-6d4a-42c0-a1e4-ede3ff330fb8"></details>

Once registered on IDC, perform the following steps to access the IDC "Scheduled access" nodes. <br>
1. <details><summary>Sign-in to https://cloud.intel.com .</summary> <img width="841" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/2fcf7189-d3dc-4526-b004-175e212e3ea1"></details>
2. <details><summary>Post your ssh public-key on IDC profile.</summary> If you already have a key under $HOME/.ssh/id_rsa.pub, You could use that key itself. <br>If not, generate a key-pair using the ssh-keygen command (press Enter to accept blank defaults).<br> <img width="694" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/bfc04edd-fc16-439e-886d-487adc25e9d0"></details>
3. <details><summary>Visit 'View Instances' tab and ensure that there are no running instances.</summary> <img width="427" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/c5f69849-865a-4a44-a97b-30e5302ed139"></details>
4. <details><summary>Go to 'Launch Instance' tab and launch the 'Schedule Access' instance (it's the first option in the list).</summary><img width="848" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/ebcc0beb-6b46-4be2-8d07-181e220689f1"></details>
5. <details><summary>Go to 'View Instances' tab and check if the instance you created is getting listed there.</summary><img width="648" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/9d672f2c-1d81-45a9-8a0a-9b77cad0b7a3"></details>
6. &nbsp;<details><summary>Create an SSH config file.</summary>
   Create a file named 'config' at the path $HOME/.ssh/config. Copy the below contents and change username.
   ```
   Host myidc
   Hostname idcbetabatch.eglb.intel.com
   User uXXXXXX ## Change this to reflect your username obtained in step 4
   ServerAliveInterval 60
   ServerAliveCountMax 10
   StrictHostKeyChecking no
   UserKnownHostsFile=/dev/null
   ```
   <img width="542" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/23e9f216-9a58-4659-914c-3fd21fe3b7d8"></details>
7. <details><summary>Open command prompt and try logging in as 'ssh myidc'</summary><img width="448" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/c05228df-70dd-4e08-81ff-326819fed11f"></details>
Note: The above steps assumes that your laptop is connected to an open Internet and it is **NOT** behind a corporate VPN/proxy. Additional steps as highlighted in this [guide](https://github.com/bjodom/idc#ssh-config-client-setup-assumes-no-proxy-needed) might be needed to get it working behind a proxy.

## Getting started on AI workshop 
<clone repo, run prepare_env.sh, note jupyter ip:port, open tunnel, access in local browser, rest of the instructions are on the ipynb notebook>
1. SSH into idc head node. <br>
   ```
   ssh myidc
   ```
   <details><summary>--> info</summary><img width="395" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/18b69a2b-766c-488d-be0d-c0fb74d867d2"></details>
2. Request for compute node. <br>
   ```
   srun -p pvc-shared --pty /bin/bash
   ```
   <details><summary>--> info</summary><img width="433" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/a9244e0f-3281-4d37-9434-a13d8f3c6844"></details>
3. Clone this repository and change directory. <br>
   ```
   git clone https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023.git
   cd oneapi-devsummit-sea-2023
   ```
   <details><summary>--> info</summary><img width="671" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/af7ff5a3-8c51-455a-94db-4ce241427d29"></details>
   

4. Prepare environment.<br>
Note : Below step could take 15 ~ 20 mins to complete. This step has to be executed only once.
   ```
   source prepare_env.sh
   ```
   <details><summary>--> info</summary>If everything goes well, you should see the jupyter logs as in below image. You should see 2 links as marked in the red box<img width="708" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/f71c448b-8e23-47a0-9877-ec48ef07a677"></details>
5. Note down ip-address (starting 10.10.10.x) and port-number(starting 88xx)of the jupyter server.<br> Copy the url starting with 127.0.0.1:88xx <br>
   <details><summary>--> info</summary>Note down the following (1) ipaddress starting 10.10.10.x (2) port number starting 88xx (3) copy to a notepad the link starting 127.0.0.1:88xx/tree?token=........<img width="678" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/34b640c0-80d4-4a3d-be3b-cacc80af61f8"></details>
6. In a new terminal create an ssh tunnel to the jupyter server<br>
    ```
   ssh -L port-number:ip-address:portnumber myidc
   ```
    <details><summary>--> info</summary>sample ssh command --> ssh -L 88xx:10.0.0.x:88xx myidc <br> include the ip-address and port number from step:5<br><img width="599" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/32f00797-ae14-4936-ba3e-87ecbdc4e183"></details>
7. Open browser on laptop and hit the url copied earlier (starting with 127.0.01:88xx)
&nbsp;<details><summary>--> info</summary>The browser would open a Jupyter workspace with the ipynb notebook files<br><img width="928" alt="image" src="https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023/assets/33803027/4774fab9-52fe-4d19-bf29-68fc707b9506"></details>
8. You are all set to run through the exercises in the ipynb notebooks.<br>
9. Hereafter, what to do if the terminal window is closed by mistake or the SSH connection gets interrupted? <br>
&nbsp;<details><summary>--> info</summary>You can resume your work by repeating the above 8 steps with the exception of step:4 where you have to instead run 
   ```
   source resume_env.sh
   ``` 
</details>


## Common issues 
1. I was running the ipynb notebook, then the terminal exited abrupty. How do I resume my work ?<br>
Login to the headnode >> Using srun get inside a compute node >> Navigate to the cloned repo directory >> Run 'source resume_env.sh'. As before this will print the Jupyter Notebook link >> Repeat step 5,6,7 in 'Getting started on AI workshop' section above.<br>
2. GPU Notebook has been running for more than 10 mins, seems its stuck, what to do ?<br>
The issue could probably be due to overutilization of the GPU. You could try the following, within the GPU notebook navigate to Kernel >> Restart and Clear All Output >> Manually run the cells from the top and this time choose a different GPU device based on GPU frequency table (go for the one with the lowest frequency).
3. Facing random errors ?<br>
Try after restarting the Jupyter Kernel. Also, note that the notebook is designed to be executed top-to-bottom without skipping any cells. <br>If nothing works, feel free to reach out to the presenters onsite or post the issue on Discord for assistance.
4. Srun job is hung waiting in the queue.<br>
There is a limit of one running job per user. Check the queue to see if there are any orphaned jobs under your userid. Delete the job with scancel command and try srun again


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
